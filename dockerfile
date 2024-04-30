FROM python:3.9-slim

WORKDIR /app

# Skopiuj pliki Makefile, calculator.py i requirements.txt do kontenera
COPY Makefile .
COPY calculator.py .
COPY test_calculator.py .
COPY requirements.txt .

# Zainstaluj zależności
RUN pip install --no-cache-dir -r requirements.txt

# Uruchom cele Makefile

RUN make lint
RUN make test
RUN make run