FROM python:3.14-alpine
MAINTAINER Xander Smeets <xander@smeets.ee>
RUN apk add --no-cache --virtual .build-deps build-base \
    && python3 -m pip install sigma-cli pysigma-backend-elasticsearch \
    && apk del .build-deps
