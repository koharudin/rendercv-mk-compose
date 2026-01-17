FROM python:3.12-slim

# install system deps
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    && rm -rf /var/lib/apt/lists/*


# Install RenderCV 2.6
RUN pip install "rendercv[full]" fastapi uvicorn pyyaml

# Optional: matikan update notice
ENV RENDERCV_DISABLE_UPDATE_CHECK=1

WORKDIR /app
#COPY backend-rendercv/app.py .
