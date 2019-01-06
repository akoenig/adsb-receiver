FROM ubuntu:18.04

LABEL maintainer="André König <andre.koenig@gmail.com>"

RUN apt-get update && \
    apt-get install build-essential pkg-config rtl-sdr librtlsdr-dev git -y


RUN git clone https://github.com/antirez/dump1090 /app

WORKDIR /app

RUN make

CMD /app/dump1090 --interactive --net