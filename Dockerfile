# 使用官方的Python基础镜像
FROM python:3.9-slim

# 将工作目录设置为/app
WORKDIR /app

# 安装Git
RUN apt-get update && apt-get install -y git

# 克隆项目代码到容器中
RUN git clone https://github.com/cooolr/chatgpt-proxy-web.git .

# 安装项目依赖
RUN pip install --no-cache-dir -r requirements.txt


# 暴露端口，与项目中的端口保持一致
EXPOSE 8011

# 启动FastAPI应用
CMD ["python3 main.py"]
