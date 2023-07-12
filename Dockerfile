FROM python:3.11-slim

WORKDIR /app

RUN apt-get update
RUN pip install --upgrade pip setuptools

COPY requirements.txt .
RUN pip3 install -r requirements.txt

ARG TEXT_MODEL_NAME
ARG CLIP_MODEL_NAME
ARG OPEN_CLIP_MODEL_NAME
ARG OPEN_CLIP_PRETRAINED
COPY download.py .
RUN ./download.py

COPY . .

CMD [ "/bin/bash", "-c", "/app/start_server.sh" ]
