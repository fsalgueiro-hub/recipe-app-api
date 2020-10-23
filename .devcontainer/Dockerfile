FROM python:3.7-alpine

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN apk add --update --no-cache postgresql-client git
RUN apk add --udpate --no-cache --virtual .tmp-build-deps \
    gcc libc-dev linux-headers postgresql-dev
RUN pip install -r /requirements.txt
RUN apk del .tmp-build-deps

# RUN mkdir /unum
# WORKDIR /unum
# COPY ./unum /unum

# RUN adduser -D unum
# USER unum