FROM ubuntu:20.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends raptor2-utils libgetopt-complete-perl \
    && rm -rf /var/lib/apt/lists/*

# Install Perl scripts that use rapper command
COPY ./bin/* /usr/local/bin/

RUN mkdir /work
WORKDIR /work

CMD ["rapper", "-h"]
