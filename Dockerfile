# FROM ubuntu:24.04 AS binarybuildenv

# RUN apt update
# RUN apt install -y git \
#                    make \
#                    cmake \
#                    build-essential \
#                    pkg-config \
#                    autoconf \
#                    automake \
#                    libtool \
#                    libusb-dev \
#                    libusb-1.0-0-dev \
#                    libhidapi-dev\
#                    libsysfs-dev

# # Build ST custom OpenOCD from source code.
# RUN git clone https://github.com/STMicroelectronics/OpenOCD.git && \
#     cd OpenOCD && \
#     ./bootstrap && \
#     ./configure --enable-ftdi --prefix=/openocd && \
#     make && make install

FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

RUN apt update && \
    apt install -y git \
                   make cmake \
                   gcc gcc-arm-none-eabi \
                   gdbserver gdb-multiarch \
                   bison libncurses5-dev libncursesw5-dev \
                   openocd && \
    apt clean
