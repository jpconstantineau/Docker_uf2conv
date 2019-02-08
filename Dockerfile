FROM jpconstantineau/arduino-cli-bluefruit-nrf52:latest as downloader

FROM python:2-slim as uf2conv
COPY --from=0 /root/.arduino15/packages/adafruit/hardware/nrf52/0.9.3/tools/uf2conv /
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
WORKDIR /root
ENV USER root
