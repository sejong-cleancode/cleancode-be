package com.example.cleancodebe.service;

import com.example.cleancodebe.dto.ParsedCourseDto;
import com.example.cleancodebe.entity.student.StudentCourse;
import com.example.cleancodebe.entity.student.StudentCourseStatus;
import com.example.cleancodebe.repository.StudentCourseRepository;
import lombok.RequiredArgsConstructor;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class StudentDataService {

    private final StudentCourseRepository studentCourseRepository;

    public void parseAndSaveCourses(MultipartFile file, String studentId) {
        List<ParsedCourseDto> parsedList = new ArrayList<>();

        try (Workbook workbook = WorkbookFactory.create(file.getInputStream())) {
            Sheet sheet = workbook.getSheetAt(0);

            int rowIndex = 0;
            for (Row row : sheet) {
                rowIndex++;
                // 헤더 이전 행 무시 (1-3행)
                if (row.getRowNum() <= 2) continue;

                // 빈 행 무시
                if (row.getCell(4) == null) continue;

                // 헤더 행 재확인 (교과목명 포함 행)
                Cell headerCheck = row.getCell(4);
                if (headerCheck != null && "교과목명".equals(getCellValueAsString(headerCheck))) {
                    continue;
                }

                // 데이터 행 시작 (row 4부터)
                if (row.getRowNum() < 4) continue;

                // 각 컬럼 읽기
                Cell yearCell = row.getCell(1);
                Cell semesterCell = row.getCell(2);
                Cell courseCell = row.getCell(4);
                Cell courseTypeCell = row.getCell(5);
                Cell creditsCell = row.getCell(8);
                Cell gradeCell = row.getCell(10);
                Cell gradePointCell = row.getCell(11);

                // 완전 빈 행 무시
                if (courseCell == null || getCellValueAsString(courseCell).isEmpty()) {
                    continue;
                }

                // 데이터 추출
                String year = getCellValueAsString(yearCell);
                String semester = getCellValueAsString(semesterCell);
                String courseName = getCellValueAsString(courseCell);
                String courseType = getCellValueAsString(courseTypeCell);
                Integer credits = getCellValueAsInteger(creditsCell);
                String grade = getCellValueAsString(gradeCell);
                Double gradePoint = getCellValueAsDouble(gradePointCell);

                // 전공 과목만 필터링 (전필, 전선만 저장)
                if (!courseType.equals("전필") && !courseType.equals("전선")) {
                    System.out.println(">> row " + rowIndex + " SKIPPED: " + courseName + " (" + courseType + ")");
                    continue;
                }

                System.out.println(">> row " + rowIndex + ": " + courseName + " / " + courseType + " / " + year + semester + " / " + credits + "학점 / " + grade + " / " + gradePoint);

                if (grade.isEmpty()) {
                    throw new RuntimeException("엑셀 파일 파싱 실패: 등급이 비어있습니다.");
                }

                StudentCourseStatus status = mapGradeToStatus(grade);

                parsedList.add(new ParsedCourseDto(courseName, year, semester, courseType, credits, grade, gradePoint, status));
            }
        } catch (Exception e) {
            throw new RuntimeException("엑셀 파일 파싱 실패: " + e.getMessage(), e);
        }

        List<StudentCourse> courses = parsedList.stream()
                .map(dto -> StudentCourse.builder()
                        .studentId(studentId)
                        .courseName(dto.getCourseName())
                        .year(dto.getYear())
                        .semester(dto.getSemester())
                        .courseType(dto.getCourseType())
                        .credits(dto.getCredits())
                        .grade(dto.getGrade())
                        .gradePoint(dto.getGradePoint())
                        .status(dto.getStatus())
                        .manual(false)
                        .createdAt(LocalDateTime.now())
                        .build())
                .toList();

        studentCourseRepository.saveAll(courses);
    }

    private StudentCourseStatus mapGradeToStatus(String grade) {
        return switch (grade.toUpperCase()) {
            case "A+", "A0", "B+", "B0", "C+", "C0", "P" -> StudentCourseStatus.COMPLETED;
            case "F", "NP" -> StudentCourseStatus.FAILED;
            default -> throw new IllegalArgumentException("잘못된 등급값: " + grade);
        };
    }

    public boolean hasUploadedHistory(String studentId) {
        return studentCourseRepository.existsByStudentId(studentId);
    }

    private String getCellValueAsString(Cell cell) {
        if (cell == null) {
            return "";
        }
        return switch (cell.getCellType()) {
            case STRING -> cell.getStringCellValue().trim();
            case NUMERIC -> String.valueOf((int) cell.getNumericCellValue());
            case BOOLEAN -> String.valueOf(cell.getBooleanCellValue());
            case FORMULA -> cell.getCellFormula();
            default -> "";
        };
    }

    private Integer getCellValueAsInteger(Cell cell) {
        if (cell == null) {
            return 0;
        }
        return switch (cell.getCellType()) {
            case STRING -> {
                String value = cell.getStringCellValue().trim();
                if (value.isEmpty()) {
                    yield 0;
                }
                // 소수점이 있는 경우 Double로 파싱 후 int로 변환
                try {
                    yield Integer.parseInt(value);
                } catch (NumberFormatException e) {
                    yield (int) Double.parseDouble(value);
                }
            }
            case NUMERIC -> (int) cell.getNumericCellValue();
            default -> 0;
        };
    }

    private Double getCellValueAsDouble(Cell cell) {
        if (cell == null) {
            return 0.0;
        }
        return switch (cell.getCellType()) {
            case STRING -> {
                String value = cell.getStringCellValue().trim();
                yield value.isEmpty() ? 0.0 : Double.parseDouble(value);
            }
            case NUMERIC -> cell.getNumericCellValue();
            default -> 0.0;
        };
    }
}
