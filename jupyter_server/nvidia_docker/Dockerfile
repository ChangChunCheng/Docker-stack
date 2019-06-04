# Image base on nvidia_cuda9
FROM nvidia/cuda:9.0-runtime-ubuntu16.04

MAINTAINER jacky850509@gmail.com

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils \
            libcudnn7=7.1.2.21-1+cuda9.0

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN apt-get update --fix-missing && apt-get install -y wget bzip2 ca-certificates \
    libglib2.0-0 libxext6 libsm6 libxrender1 \
    git mercurial subversion \
    curl vim ssh && \
    rm -rf /var/lib/apt/lists/*

# Install curl, Anaconda3
RUN apt-get install -y curl \
    && curl "https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh" > /Anaconda3-2019.03-Linux-x86_64.sh \
    && chmod +x /Anaconda3-2019.03-Linux-x86_64.sh \
    && /Anaconda3-2019.03-Linux-x86_64.sh -b -p /opt/Anaconda3 \
    && rm /Anaconda3-2019.03-Linux-x86_64.sh \
    && mkdir -p /{app,tmp}

# Set anaconda and python PATH PATH
ENV PATH=/opt/Anaconda3/bin:$PATH python=/opt/Anaconda3/bin/python

# Install tensorflow-gpu, jupyterlab, ... etc. packages.
RUN python -m pip install tensorflow-gpu keras jupyterlab pyecharts pyecharts_snapshot

# Install R kernel and Julia kernel in conda.
RUN conda install -y -c r r-irkernel \
    && conda install -y -c conda-forge julia

# Julia install jupyter-notebook.
RUN julia -e 'using Pkg; Pkg.add("IJulia"); using IJulia;'

# Generate jupyter-config
RUN /opt/Anaconda3/bin/jupyter-notebook --generate-config

WORKDIR /app

VOLUME /app

EXPOSE 8888 6006
