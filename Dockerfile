FROM python:3.14-alpine
MAINTAINER Xander Smeets <xander@smeets.ee>
RUN python3 -m pip install sigma-cli pysigma-backend-elasticsearch
