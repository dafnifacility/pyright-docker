FROM alpine:3
RUN apk add --no-cache nodejs npm && npm install pyright && install -d -o nobody /code
USER nobody
WORKDIR /code
ENTRYPOINT ["/usr/bin/pyright"]
