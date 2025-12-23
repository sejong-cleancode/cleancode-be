#!/bin/bash

# 개발 환경 배포 스크립트
set -e

echo "========================================="
echo "  CleanCode 개발 환경 배포 시작"
echo "========================================="

# 색상 정의
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 환경 변수 설정
export SPRING_PROFILE=local
export COMPOSE_PROJECT_NAME=cleancode-dev

echo ""
echo "${YELLOW}[1/5] 기존 컨테이너 중지 및 삭제${NC}"
docker-compose down || true

echo ""
echo "${YELLOW}[2/5] 이전 이미지 삭제${NC}"
docker rmi cleancode-dev-app:latest 2>/dev/null || echo "이전 이미지가 없습니다."

echo ""
echo "${YELLOW}[3/5] Docker 이미지 빌드${NC}"
docker-compose build --no-cache

echo ""
echo "${YELLOW}[4/5] 컨테이너 시작${NC}"
docker-compose up -d

echo ""
echo "${YELLOW}[5/5] 애플리케이션 시작 대기${NC}"
sleep 5

# 컨테이너 상태 확인
echo ""
echo "${GREEN}========================================="
echo "  배포 완료!"
echo "=========================================${NC}"
echo ""
echo "컨테이너 상태:"
docker-compose ps

echo ""
echo "애플리케이션 URL: http://localhost:8080"
echo "Swagger UI: http://localhost:8080/swagger-ui.html"
echo ""
echo "로그 확인: docker-compose logs -f app"
echo "중지: docker-compose down"
echo ""
