ARG nvidia_cuda_version=10.1-cudnn7-runtime-ubuntu18.04

FROM nvidia/cuda:${nvidia_cuda_version}
LABEL maintaine="winaS1991"

RUN apt update && apt upgrade -y && apt install -y --no-install-recommends \
    python \
    python-pip \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*