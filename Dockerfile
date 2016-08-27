FROM       ubuntu:14.04
MAINTAINER Adam Hatherly <mail@hatherly.com>

RUN apt-get update
RUN apt-get install -y git sed build-essential libsdl-net1.2 libsdl-net1.2-dev
RUN git clone https://github.com/intangir/ipxnet.git
RUN sed -i 's/home\/intangir/var/g' ipxnet/config.h
RUN sed -i 's/-lSDL_net/-lSDL_net -lSDL/g' ipxnet/Makefile
RUN cd ipxnet; make

EXPOSE 213

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

RUN ls
ENTRYPOINT ["/entrypoint.sh"]
