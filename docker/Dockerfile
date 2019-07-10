FROM alpine:3.8

RUN apk update && \
  apk add --no-cache ansible make bash

WORKDIR /nkn
ENTRYPOINT tail -f /etc/hosts
