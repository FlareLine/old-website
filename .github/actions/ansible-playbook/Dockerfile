FROM alpine

ENV PY_COLORS=1
ENV ANSIBLE_FORCE_COLOR=1
ENV ANSIBLE_STDOUT_CALLBACK=yaml

RUN apk add --no-cache \
    ansible python3-dev \
    py3-pip openssl-dev \
    libffi-dev libc-dev gcc

RUN pip3 install boto boto3 botocore

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
