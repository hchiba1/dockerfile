FROM ubuntu:20.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends raptor2-utils libgetopt-complete-perl \
                                     wget default-jre-headless \
    && rm -rf /var/lib/apt/lists/*

# Install Perl scripts that use rapper command
COPY ./bin/* /usr/local/bin/

# Install Jena
WORKDIR /opt
RUN wget https://downloads.apache.org/jena/binaries/apache-jena-3.17.0.tar.gz && tar zxvf apache-jena-3.17.0.tar.gz \
    && rm *.tar.gz
ENV PATH $PATH:/opt/apache-jena-3.17.0/bin

RUN mkdir /work
WORKDIR /work

CMD ["sparql", "-h"]
