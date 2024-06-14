FROM alpine:3
COPY entrypoint.sh /entrypoint.sh
RUN apk add --no-cache nodejs npm python3 py3-pip rust && \
  npm install -g pyright && \
  install -d -o nobody /code && chmod +x /entrypoint.sh
USER nobody
WORKDIR /code
ENTRYPOINT ["/entrypoint.sh"]
