FROM ubuntu:20.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends wget build-essential libxml2-dev \
    # clean files
    && apt-get -y clean && rm -rf /var/lib/apt/lists/*

WORKDIR /opt
RUN wget http://download.librdf.org/source/raptor2-2.0.15.tar.gz && tar -zxvf raptor2-2.0.15.tar.gz

WORKDIR /opt/raptor2-2.0.15
RUN ./configure && make && make install \
    # add path to libraptor2.so
    && echo /usr/local/lib > /etc/ld.so.conf.d/raptor.conf && ldconfig

RUN mkdir /work
WORKDIR /work

CMD ["rapper", "-h"]
