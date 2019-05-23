FROM tensorflow/tensorflow:nightly-gpu-py3

RUN apt-get install -y curl \
    && curl "https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh" > /Anaconda3-2019.03-Linux-x86_64.sh \
    && chmod +x /Anaconda3-2019.03-Linux-x86_64.sh \
    && /Anaconda3-2019.03-Linux-x86_64.sh -b -p /opt/Anaconda3 \
    && rm /Anaconda3-2019.03-Linux-x86_64.sh \
    && mkdir -p /{app,tmp}

RUN /opt/Anaconda3/bin/python -m pip install tensorflow-gpu keras jupyterlab pyecharts pyecharts_snapshot

RUN /opt/Anaconda3/bin/jupyter-notebook --generate-config

WORKDIR /app

VOLUME /app

EXPOSE 8888 6006
