#!/bin/bash

# Amazon Linux 2023 EC2 초기 설정 스크립트
set -e

echo "========================================="
echo "  Amazon Linux 2023 EC2 환경 설정"
echo "========================================="

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# 1. 시스템 업데이트
echo ""
echo "${YELLOW}[1/5] 시스템 업데이트${NC}"
sudo dnf update -y

# 2. Docker 설치
echo ""
echo "${YELLOW}[2/5] Docker 설치${NC}"
if ! command -v docker &> /dev/null; then
    sudo dnf install -y docker
    sudo systemctl start docker
    sudo systemctl enable docker
    sudo usermod -aG docker $USER
    echo "${GREEN}Docker 설치 완료${NC}"
else
    echo "${BLUE}Docker가 이미 설치되어 있습니다.${NC}"
fi

# 3. Docker Compose 설치
echo ""
echo "${YELLOW}[3/5] Docker Compose 설치${NC}"
if ! command -v docker-compose &> /dev/null; then
    sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    echo "${GREEN}Docker Compose 설치 완료${NC}"
else
    echo "${BLUE}Docker Compose가 이미 설치되어 있습니다.${NC}"
fi

# 4. Git 확인
echo ""
echo "${YELLOW}[4/5] Git 확인${NC}"
if ! command -v git &> /dev/null; then
    sudo dnf install -y git
    echo "${GREEN}Git 설치 완료${NC}"
else
    echo "${BLUE}Git이 이미 설치되어 있습니다.${NC}"
fi

# 5. 환경 설정 파일 생성
echo ""
echo "${YELLOW}[5/5] 환경 설정 파일 생성${NC}"
if [ ! -f .env.prod ]; then
    cp .env.prod.example .env.prod
    echo "${GREEN}.env.prod 파일이 생성되었습니다.${NC}"
    echo "${RED}중요: .env.prod 파일을 편집하여 실제 비밀번호를 설정하세요!${NC}"
    echo "편집 명령어: nano .env.prod"
else
    echo "${BLUE}.env.prod 파일이 이미 존재합니다.${NC}"
fi

echo ""
echo "${GREEN}========================================="
echo "  초기 설정 완료!"
echo "=========================================${NC}"
echo ""
echo "${YELLOW}다음 단계:${NC}"
echo "1. 그룹 변경 적용을 위해 다시 로그인하세요:"
echo "   ${BLUE}exit${NC} 후 다시 SSH 접속"
echo ""
echo "2. 또는 다음 명령어로 그룹 변경을 적용하세요:"
echo "   ${BLUE}newgrp docker${NC}"
echo ""
echo "3. .env.prod 파일을 편집하세요:"
echo "   ${BLUE}nano .env.prod${NC}"
echo ""
echo "4. 배포 스크립트를 실행하세요:"
echo "   ${BLUE}./deploy-prod.sh${NC}"
echo ""
echo "${YELLOW}설치된 버전:${NC}"
docker --version 2>/dev/null || echo "Docker: 재로그인 후 확인 가능"
docker-compose --version 2>/dev/null || echo "Docker Compose: 재로그인 후 확인 가능"
git --version
echo ""
