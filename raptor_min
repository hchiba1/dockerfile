FROM alpine:3.13.2

RUN apk add --no-cache raptor2 \
    && mkdir /work
WORKDIR /work

CMD ["rapper", "-h"]
