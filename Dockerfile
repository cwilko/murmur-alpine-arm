FROM arm32v7/alpine

RUN apk add -U murmur

EXPOSE 64738/tcp 64738/udp

ENTRYPOINT ["/usr/bin/murmurd", "-fg", "-v"]