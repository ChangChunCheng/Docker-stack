FROM ubuntu:14.04

RUN apt-get update \
    && apt-get install -y curl \
    && curl "https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh" > /Anaconda3-2019.03-Linux-x86_64.sh \
    && chmod +x /Anaconda3-2019.03-Linux-x86_64.sh \
    && /Anaconda3-2019.03-Linux-x86_64.sh -b -p /opt/Anaconda3 \
    && rm /Anaconda3-2019.03-Linux-x86_64.sh \
    && mkdir -p /{app,tmp}

RUN /opt/Anaconda3/bin/python -m pip install Flask-PyMongo pyecharts pyecharts_snapshot

WORKDIR /app

VOLUME /app
