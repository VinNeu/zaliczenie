
FROM python:3.9-slim

WORKDIR /app

COPY calculator.py .
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "calculator.py" ]