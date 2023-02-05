FROM arm64v8/alpine as target-arm64

FROM arm32v7/alpine as target-armv7

FROM target-$TARGETARCH$TARGETVARIANT

RUN apk add -U murmur

EXPOSE 64738/tcp 64738/udp

ENTRYPOINT ["/usr/bin/murmurd", "-fg", "-v"]