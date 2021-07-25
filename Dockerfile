FROM ghcr.io/jpconstantineau/docker_bluefruit_nrf52:0.24.0 as downloader
RUN ls -a /root
RUN ls -a /root/.arduino15

FROM python:2-slim as uf2conv
LABEL org.opencontainers.image.source="https://github.com/jpconstantineau/Docker_uf2conv"
COPY --from=0 /root/.arduino15/packages/adafruit/hardware/nrf52/0.24.0/tools/uf2conv /
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
WORKDIR /root
ENV USER root
