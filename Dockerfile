# syntax=docker/dockerfile:1

FROM ubuntu:22.04
COPY . /app
COPY . /111
RUN apt-get update && apt-get install make
RUN make /app
CMD python /app/app.py
