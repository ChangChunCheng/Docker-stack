#! /bin/bash

sudo apt-get install curl

sudo curl "https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh" > ./Anaconda3-2019.03-Linux-x86_64.sh

sudo chmod +x ./Anaconda3-2019.03-Linux-x86_64.sh

sudo ./Anaconda3-2019.03-Linux-x86_64.sh -b -p /opt/Anaconda3

export Anaconda_Home=/opt/Anaconda3
export PATH=$Anaconda_Home/bin:$PATH

sudo rm ./Anaconda3-2019.03-Linux-x86_64.sh

sudo /opt/Anaconda3/bin/python -m pip install Flask-PyMongo pyecharts pyecharts_snapshot
