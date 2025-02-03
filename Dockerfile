FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

RUN apt update
RUN apt install -y git \
                   make \
                   cmake \
                   gcc \
                   gcc-arm-none-eabi \
                   gdbserver \
                   gdb-multiarch \
                   bison \
                   libncurses5-dev \
                   libncursesw5-dev
