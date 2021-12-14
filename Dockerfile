FROM python:3.9-slim-bullseye

RUN DEBIAN_FRONTEND="noninteractive" apt update && apt install git ffmpeg -y

WORKDIR /app

COPY requirements.txt /app/

RUN pip install -r requirements.txt

