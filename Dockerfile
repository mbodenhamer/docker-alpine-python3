FROM python:3-alpine
MAINTAINER Matt Bodenhamer <mbodenhamer@mbodenhamer.com>

RUN apk add --no-cache \
    bash \
    gcc \
    libc-dev \
    make

CMD ["python3"]
