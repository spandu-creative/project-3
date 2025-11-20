FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
ENV OTEL_EXPORTER_JAEGER_ENDPOINT=http://jaeger:14268/api/traces
EXPOSE 5000
CMD ["python","app.py"]
