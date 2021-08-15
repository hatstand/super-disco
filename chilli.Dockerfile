FROM balenalib/raspberry-pi-debian:buster-build

RUN sudo apt install git python3-setuptools python3-pip python3-yaml python3-smbus python3-pil python3-spidev python3-rpi.gpio
RUN sudo pip3 install growhat

CMD ["growhat"]
