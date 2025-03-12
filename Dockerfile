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

FROM ubuntu:24.04

RUN apt update && \
    apt install -y curl git make cmake clang-format gcc g++ gcc-arm-none-eabi gdbserver gdb-multiarch bison libncurses5-dev && \
    apt clean
RUN apt install -y gcc-arm-none-eabi && apt clean

CMD [ "/bin/bash" ]
