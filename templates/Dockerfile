# -*- dockerfile -*-
FROM python:3-alpine
MAINTAINER {{maintainer_name}} <{{maintainer_email}}>

RUN apk add --no-cache \
    bash \
    curl \
    gcc \
    git \
    libc-dev \
    make

RUN pip install -U --no-cache \
    depman=={{packages.depman.version.stable}} \
    yatr=={{packages.yatr.version.stable}}

RUN mkdir -p /etc/bash_completion.d \
    && yatr --install-bash-completions > /dev/null \
    && echo "source /etc/bash_completion.d/yatr" >> /root/.bashrc \
    && mkdir -p /root/.yatr \
    && mkdir -p /root/.depman

CMD ["python3"]
