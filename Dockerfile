FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

RUN apt update
RUN apt install -y git \
                   make \
                   cmake \
                   gcc-arm-none-eabi \
                   gdb-arm-none-eabi \
                   gdbserver
