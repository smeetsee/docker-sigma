FROM python:3.14-alpine
MAINTAINER Xander Smeets <xander@smeets.ee>
ARG TARGETARCH
RUN if [ "$TARGETARCH" = "386" ]; then apk add --no-cache --virtual .build-deps build-base; fi \
    && python3 -m pip install sigma-cli pysigma-backend-elasticsearch \
    && if [ "$TARGETARCH" = "386" ]; then apk del .build-deps; fi
