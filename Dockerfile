FROM python:3.10-slim
COPY . /app
WORKDIR /app
RUN pip install -r api/requirements_api.txt
CMD ["uvicorn", "src.deploy:app", "--host", "0.0.0.0", "--port", "8000"]
