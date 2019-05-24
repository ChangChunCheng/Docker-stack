# Image base on tensorflow/tensorflow:nightly-gpu-py3
FROM tensorflow/tensorflow:nightly-gpu-py3

MAINTAINER jacky850509@gmail.com

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
