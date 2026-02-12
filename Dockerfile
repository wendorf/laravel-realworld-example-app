# syntax=docker/dockerfile:1
FROM --platform=linux/amd64 gliderlabs/herokuish:latest-22

ENV BUILDPACK_URL=https://github.com/heroku/heroku-buildpack-php

COPY . /tmp/app

RUN /build

EXPOSE 5000

CMD ["/start", "web"]
