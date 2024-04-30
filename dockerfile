FROM python:3.9-slim

WORKDIR /app

# Skopiuj pliki Makefile, calculator.py i requirements.txt do kontenera
COPY Makefile .
COPY calculator.py .
COPY test_calculator.py .
COPY requirements.txt .


# Uruchom cele Makefile
RUN make deps
RUN make lint
RUN make test
RUN make run