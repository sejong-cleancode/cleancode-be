-- Course 테이블 데이터
-- ========================================

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (1, '컴퓨터공학과', 'C프로그래밍및실습', 1);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (1, 'c');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (2, '컴퓨터공학과', '고급C프로그래밍및실습', 2);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (2, 'c');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (3, '컴퓨터공학과', '자료구조및실습', 3);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (3, 'c++');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (4, '컴퓨터공학과', '알고리즘및실습', 4);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (4, 'c++');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (4, 'python');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (5, '컴퓨터공학과', '컴퓨터구조', 4);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (5, 'assembly');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (6, '컴퓨터공학과', '운영체제', 5);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (6, 'c');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (6, 'linux');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (7, '컴퓨터공학과', '마이크로컴퓨터', 5);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (7, 'arduino');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (7, 'c');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (8, '컴퓨터공학과', '임베디드시스템', 6);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (8, 'embedded c');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (9, '컴퓨터공학과', '데이터베이스', 5);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (9, 'sql');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (10, '컴퓨터공학과', '웹프로그래밍', 3);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (10, 'html');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (10, 'css');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (10, 'javascript');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (11, '컴퓨터공학과', '리눅스프로그래밍및실습', 6);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (11, 'linux');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (11, 'bash');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (12, '컴퓨터공학과', 'XML프로그래밍', 6);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (12, 'xml');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (12, 'xpath');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (13, '컴퓨터공학과', '통신시스템', 6);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (13, 'matlab');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (14, '컴퓨터공학과', '컴퓨터네트워크', 6);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (14, 'tcp/ip');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (14, 'wireshark');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (15, '컴퓨터공학과', '디지털신호처리', 6);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (15, 'matlab');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (16, '컴퓨터공학과', '컴퓨터그래픽스', 5);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (16, 'opengl');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (17, '컴퓨터공학과', '메타버스시스템', 5);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (17, 'unity');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (18, '컴퓨터공학과', '딥러닝', 5);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (18, 'python');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (18, 'pytorch');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (19, '컴퓨터공학과', '자연어처리', 6);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (19, 'python');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (19, 'nltk');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (20, '컴퓨터공학과', '패턴인식', 7);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (20, 'python');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (20, 'scikit-learn');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (21, '컴퓨터공학과', '강화학습', 8);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (21, 'python');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (21, 'openai gym');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (22, '컴퓨터공학과', '컴파일러', 8);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (22, 'llvm');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (23, '컴퓨터공학과', '컴퓨터비전', 8);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (23, 'python');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (23, 'opencv');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (24, '컴퓨터공학과', '가상현실', 8);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (24, 'unity');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (25, '컴퓨터공학과', '객체지향설계기술', 8);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (25, 'uml');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (26, '소프트웨어학과', 'C프로그래밍및실습', 1);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (26, 'c');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (27, '소프트웨어학과', '고급C프로그래밍및실습', 2);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (27, 'c');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (28, '소프트웨어학과', '객체지향프로그래밍:c++', 3);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (28, 'c++');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (29, '소프트웨어학과', '객체지향프로그래밍:java', 4);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (29, 'java');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (30, '소프트웨어학과', '자료구조및실습', 3);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (30, 'c++');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (30, 'stl');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (31, '소프트웨어학과', '알고리즘및실습', 4);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (31, 'c++');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (31, 'python');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (32, '소프트웨어학과', '컴퓨터구조', 4);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (32, 'mips assembly');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (33, '소프트웨어학과', '운영체제', 5);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (33, 'c');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (33, 'linux');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (33, 'posix');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (34, '소프트웨어학과', '데이터베이스', 5);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (34, 'sql');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (34, 'mysql');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (35, '소프트웨어학과', '데이터베이스프로그래밍', 6);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (35, 'sql');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (35, 'jdbc');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (36, '소프트웨어학과', '웹기반프로그래밍', 6);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (36, 'html');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (36, 'css');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (36, 'javascript');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (37, '소프트웨어학과', '오픈소스SW개론', 5);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (37, 'git');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (37, 'github');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (38, '소프트웨어학과', '실시간컴퓨터그래픽스', 4);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (38, 'opengl');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (39, '소프트웨어학과', '컴퓨터애니메이션', 6);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (39, 'opengl');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (40, '소프트웨어학과', 'XR엔진개론', 6);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (40, 'unity');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (40, 'c#');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (41, '소프트웨어학과', '객체지향XR프로그래밍', 5);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (41, 'unity');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (41, 'c#');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (42, '소프트웨어학과', '머신러닝', 5);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (42, 'python');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (42, 'scikit-learn');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (43, '소프트웨어학과', '딥러닝개론', 6);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (43, 'python');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (43, 'pytorch');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (44, '소프트웨어학과', '컴퓨터비전및실습', 7);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (44, 'python');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (44, 'opencv');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (45, '소프트웨어학과', '생성형AI', 7);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (45, 'python');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (45, 'transformers');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (46, '소프트웨어학과', '가상현실', 7);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (46, 'unity');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (46, 'c#');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (47, '소프트웨어학과', '증강현실', 8);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (47, 'unity');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (47, 'arfoundation');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (48, '소프트웨어학과', '메타버스시스템', 8);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (48, 'unity');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (49, '소프트웨어학과', 'UI/UX디자인개론', 7);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (49, 'figma');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (50, '소프트웨어학과', 'SW-AI종합설계', 7);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (50, 'git');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (50, 'python');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (50, 'tensorflow');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (51, '인공지능데이터사이언스학과', 'C프로그래밍및실습', 1);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (51, 'c');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (52, '인공지능데이터사이언스학과', '고급C프로그래밍및실습', 2);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (52, 'c');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (53, '인공지능데이터사이언스학과', '자료구조및실습', 3);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (53, 'c++');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (53, 'stl');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (54, '인공지능데이터사이언스학과', '데이터분석개론', 3);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (54, 'python');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (54, 'pandas');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (55, '인공지능데이터사이언스학과', '웹프로그래밍', 3);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (55, 'html');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (55, 'css');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (55, 'javascript');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (56, '인공지능데이터사이언스학과', '수치해석', 3);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (56, 'python');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (56, 'numpy');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (56, 'scipy');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (57, '인공지능데이터사이언스학과', '이산수학및프로그래밍', 3);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (57, 'python');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (58, '인공지능데이터사이언스학과', '기계학습개론', 3);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (58, 'python');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (58, 'scikit-learn');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (59, '인공지능데이터사이언스학과', '알고리즘및실습', 4);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (59, 'python');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (59, 'c++');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (60, '인공지능데이터사이언스학과', '컴퓨터구조', 4);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (60, 'assembly');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (61, '인공지능데이터사이언스학과', '문제해결및실습java', 4);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (61, 'java');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (62, '인공지능데이터사이언스학과', '인공지능수학', 4);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (62, 'numpy');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (63, '인공지능데이터사이언스학과', '디지털신호처리', 4);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (63, 'matlab');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (64, '인공지능데이터사이언스학과', '데이터베이스', 5);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (64, 'sql');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (64, 'mysql');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (65, '인공지능데이터사이언스학과', '운영체제', 5);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (65, 'c');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (65, 'linux');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (66, '인공지능데이터사이언스학과', '최적화', 5);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (66, 'python');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (66, 'scipy');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (67, '인공지능데이터사이언스학과', '오픈소스SW개론', 5);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (67, 'git');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (67, 'github');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (68, '인공지능데이터사이언스학과', '인공지능과윤리', 5);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (68, 'python');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (69, '인공지능데이터사이언스학과', '딥러닝개론', 6);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (69, 'python');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (69, 'pytorch');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (70, '인공지능데이터사이언스학과', '패턴인식', 6);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (70, 'python');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (70, 'scikit-learn');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (71, '인공지능데이터사이언스학과', '시계열분석', 6);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (71, 'python');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (71, 'statsmodels');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (72, '인공지능데이터사이언스학과', '영상처리', 6);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (72, 'python');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (72, 'opencv');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (73, '인공지능데이터사이언스학과', '자연어처리', 6);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (73, 'python');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (73, 'nltk');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (74, '인공지능데이터사이언스학과', '컴퓨터비전', 6);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (74, 'python');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (74, 'opencv');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (75, '인공지능데이터사이언스학과', '대용량데이터처리', 6);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (75, 'hadoop');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (75, 'spark');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (76, '인공지능데이터사이언스학과', 'AR/VR/MR', 6);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (76, 'unity');
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (76, 'c#');

INSERT IGNORE INTO course (id, department, name, recommended_semester) VALUES (77, '인공지능데이터사이언스학과', 'SW설계', 8);
INSERT IGNORE INTO course_tech_stack (course_id, tech_stack) VALUES (77, 'git');


-- ========================================
