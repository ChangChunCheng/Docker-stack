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
$ curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
$ distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
$ curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
$ sudo apt-get update
$ sudo apt-get install -y nvidia-docker2
$ sudo pkill -SIGHUP dockerd
```

Restart docker.
```bash
$ sudo systemctl restart docker
```

Add "default-runtime" : "nvidia" to /etc/docker/daemon.json at first level.

Look example in docker/etc/daemon.json.

Restart docker.
``` bash
$ service docker restart
```
