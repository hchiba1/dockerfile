FROM ubuntu:20.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends raptor2-utils \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /work
WORKDIR /work

CMD ["rapper", "-h"]
