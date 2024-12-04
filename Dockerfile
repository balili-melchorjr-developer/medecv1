FROM python:3.12.7-slim-bullseye

ENV PYTHONBUFFERED=1

WORKDIR /medec-backend

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD gunicorn backend.wsgi:application --bind 0.0.0.0:8000

EXPOSE 8000

