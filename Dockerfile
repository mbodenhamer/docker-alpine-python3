FROM python:3-alpine
MAINTAINER Matt Bodenhamer <mbodenhamer@mbodenhamer.com>

RUN apk update && apk add \
    bash

CMD ["python3"]
