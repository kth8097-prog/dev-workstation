# 1. Python 3.11 이미지를 베이스로 사용
FROM python:3.11-slim

# 2. 작업 폴더 설정
WORKDIR /app

# 3. requirements.txt를 먼저 복사 (캐시 활용)
COPY requirements.txt .

# 4. 패키지 설치
RUN pip install --no-cache-dir -r requirements.txt

# 5. 나머지 파일 전부 복사
COPY . .

# 6. 5000번 포트 열기
EXPOSE 5000

# 7. 컨테이너 시작 시 실행할 명령
CMD ["python", "app.py"]