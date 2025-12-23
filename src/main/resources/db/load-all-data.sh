#!/bin/bash

# 데이터베이스 접속 정보
DB_HOST="127.0.0.1"
DB_PORT="3307"
DB_NAME="cleancode_db"
DB_USER="root"
DB_PASS="cleancode"

# 스크립트 디렉토리
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "========================================="
echo "데이터베이스 초기 데이터 로드"
echo "========================================="
echo ""

# Course 데이터 로드
echo "📚 Course 데이터 로드 중..."
mysql -h${DB_HOST} -P${DB_PORT} -u${DB_USER} -p${DB_PASS} ${DB_NAME} < "${SCRIPT_DIR}/course-data.sql"
if [ $? -eq 0 ]; then
    echo "✅ Course 데이터 로드 완료"
else
    echo "❌ Course 데이터 로드 실패"
    exit 1
fi

echo ""

# Career 데이터 로드
echo "💼 Career 데이터 로드 중..."
mysql -h${DB_HOST} -P${DB_PORT} -u${DB_USER} -p${DB_PASS} ${DB_NAME} < "${SCRIPT_DIR}/career-data.sql"
if [ $? -eq 0 ]; then
    echo "✅ Career 데이터 로드 완료"
else
    echo "❌ Career 데이터 로드 실패"
    exit 1
fi

echo ""
echo "========================================="
echo "✅ 모든 데이터 로드 완료"
echo "========================================="
echo ""

# 데이터 확인
echo "📊 데이터 개수 확인:"
mysql -h${DB_HOST} -P${DB_PORT} -u${DB_USER} -p${DB_PASS} ${DB_NAME} -e "
SELECT 'Course' as 테이블, COUNT(*) as 개수 FROM course
UNION ALL
SELECT 'Career' as 테이블, COUNT(*) as 개수 FROM career;
"
