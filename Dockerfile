FROM ghcr.io/jpconstantineau/docker_bluefruit_nrf52:0.24.0 as downloader
RUN arduino-cli config dump
RUN ls -a /opt/arduino/packages/

FROM python:2-slim as uf2conv
LABEL org.opencontainers.image.source="https://github.com/jpconstantineau/Docker_uf2conv"
COPY --from=0 /opt/arduino/packages/adafruit/hardware/nrf52/0.24.0/tools/uf2conv /
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
