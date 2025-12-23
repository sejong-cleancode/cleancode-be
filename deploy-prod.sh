#!/bin/bash

# 프로덕션 환경 배포 스크립트
set -e

echo "========================================="
echo "  CleanCode 프로덕션 환경 배포 시작"
echo "========================================="

# 색상 정의
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# 환경 변수 설정
export COMPOSE_PROJECT_NAME=cleancode-prod
export VERSION=${1:-latest}

# .env 파일 확인
if [ ! -f .env.prod ]; then
    echo "${RED}ERROR: .env.prod 파일이 없습니다.${NC}"
    echo "다음 내용으로 .env.prod 파일을 생성하세요:"
    echo ""
    echo "DB_PASSWORD=your_secure_password"
    echo "DB_NAME=cleancode_db"
    echo ""
    exit 1
fi

# .env 파일 로드
set -a
source .env.prod
set +a

echo ""
echo "${BLUE}배포 버전: ${VERSION}${NC}"
echo ""

# 배포 확인
read -p "프로덕션 환경에 배포하시겠습니까? (yes/no): " confirm
if [ "$confirm" != "yes" ]; then
    echo "${YELLOW}배포가 취소되었습니다.${NC}"
    exit 0
fi

echo ""
echo "${YELLOW}[1/7] 기존 컨테이너 백업${NC}"
if [ "$(docker ps -q -f name=cleancode-app-prod)" ]; then
    docker commit cleancode-app-prod cleancode-app-backup:$(date +%Y%m%d-%H%M%S) || true
    echo "${GREEN}백업 완료${NC}"
else
    echo "실행 중인 컨테이너가 없습니다."
fi

echo ""
echo "${YELLOW}[2/7] 테스트 실행${NC}"
./gradlew test --no-daemon || {
    echo "${RED}테스트 실패! 배포를 중단합니다.${NC}"
    exit 1
}

echo ""
echo "${YELLOW}[3/7] Docker 이미지 빌드${NC}"
docker-compose -f docker-compose.prod.yml build --no-cache

echo ""
echo "${YELLOW}[4/7] 기존 컨테이너 중지${NC}"
docker-compose -f docker-compose.prod.yml down || true

echo ""
echo "${YELLOW}[5/7] 컨테이너 시작${NC}"
docker-compose -f docker-compose.prod.yml up -d

echo ""
echo "${YELLOW}[6/7] 헬스 체크${NC}"
echo "애플리케이션 시작 대기 중..."
sleep 10

# 헬스 체크 (최대 60초 대기)
for i in {1..12}; do
    if curl -f http://localhost:8080/actuator/health &>/dev/null; then
        echo "${GREEN}헬스 체크 성공!${NC}"
        break
    fi
    if [ $i -eq 12 ]; then
        echo "${RED}헬스 체크 실패!${NC}"
        echo "로그를 확인하세요: docker-compose -f docker-compose.prod.yml logs app"
        exit 1
    fi
    echo "대기 중... ($i/12)"
    sleep 5
done

echo ""
echo "${YELLOW}[7/7] 이전 이미지 정리${NC}"
docker image prune -f

echo ""
echo "${GREEN}========================================="
echo "  배포 완료!"
echo "=========================================${NC}"
echo ""
echo "컨테이너 상태:"
docker-compose -f docker-compose.prod.yml ps

echo ""
echo "애플리케이션 URL: http://localhost:8080"
echo ""
echo "${BLUE}유용한 명령어:${NC}"
echo "  로그 확인: docker-compose -f docker-compose.prod.yml logs -f app"
echo "  중지: docker-compose -f docker-compose.prod.yml down"
echo "  재시작: docker-compose -f docker-compose.prod.yml restart app"
echo "  롤백: docker stop cleancode-app-prod && docker run -d --name cleancode-app-prod cleancode-app-backup:TIMESTAMP"
echo ""
