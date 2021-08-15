FROM balenalib/raspberry-pi-debian:buster-build

RUN install_packages git python3-numpy python3-setuptools python3-pip python3-yaml python3-smbus python3-pil python3-spidev python3-rpi.gpio
RUN sudo pip3 install growhat

RUN git clone https://github.com/pimoroni/grow-python.git
WORKDIR /grow-python/examples

CMD ["python3", "./monitor.py"]
