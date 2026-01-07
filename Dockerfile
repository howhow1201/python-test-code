# 使用輕量級 Python 映像檔
FROM python:3.9-slim

# 設定工作目錄
WORKDIR /app

# 安裝 Flask
RUN pip install --no-cache-dir flask

# 複製程式碼
COPY app.py .

# 告訴 Docker 容器內跑在 5000 port
EXPOSE 5000

# 啟動命令
CMD ["python", "app.py"]
