# Setup the env.

## Install docker-ce in ubuntu:18.04.
```bash
$ $(pwd)/install_docker.sh
```

### Clean all running containers, images on host.
```bash
$ $(pwd)/clean_docker_env.sh
```

## Install Anaconda3 in /opt/Anaconda3 on host.
```bash
$ $(pwd)/install_Anaconda.sh
```
## If you want to use docker with '--runtime=nvidia', please run the command with 'sudo'.
```bash
$ apt-get install nvidia-docker
```
Add "default-runtime" : "nvidia" to /etc/docker/daemon.json at first level.

Look example in docker/etc/daemon.json.

Restart docker.
``` bash
$ service docker restart
```
