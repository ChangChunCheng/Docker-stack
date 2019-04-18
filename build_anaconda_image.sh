#! /bin/bash

if [[ "$(docker images -q anaconda3:1.01 2> /dev/null)" == "" ]]; then
  if [ "test $(pwd)/anaconda/anaconda3:1.01.tar.gz" ]; then
    docker build -t anaconda3:1.01 -f $(pwd)/anaconda/Dockerfile .;
    docker save anaconda3:1.01 > $(pwd)/anaconda3:1.01.tar.gz;
  else
    docker load < $(pwd)/anaconda3:1.01.tar.gz;
  fi
fi

echo "The default anaconda3:1.01 volume is /app."

