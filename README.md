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
$ cp ./docker/etc/daemon.json /etc/docker/
```
