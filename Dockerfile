FROM resin/rpi-raspbian:jessie
RUN apt-get update && apt-get install -y build-essential libusb-1.0-0-dev make gcc git-core usbutils
WORKDIR /opt
RUN git clone git://git.zerfleddert.de/hmcfgusb
WORKDIR /opt/hmcfgusb
RUN make

EXPOSE 1000

CMD ./hmland -p 1000 -v
