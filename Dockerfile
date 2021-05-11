FROM alpine:3.13

RUN apk -U upgrade && \
    apk add --update-cache --no-cache \
        bash \
        jq \
        curl \
        python3 \
        py-pip && \
    pip3 install --upgrade --no-cache-dir awscli && \
    apk del py-pip

ENTRYPOINT ["bash"]