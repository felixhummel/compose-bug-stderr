FROM alpine:3.6

COPY bin/main /usr/local/bin/main
COPY bin/dump /usr/local/bin/dump

CMD ["/usr/local/bin/main"]
