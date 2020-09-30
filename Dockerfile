FROM python:3.7-alpine

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN apk add --pdate --no-cache --virtual .tmp gcc libc-dev linux-headers

RUN pip install -r /requirements.txt
RUN apk del .tmp

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D app
USER app