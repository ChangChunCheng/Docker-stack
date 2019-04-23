# Building jupyter-notebook server using docker-compose.

1. Building the anaconda3 image.
```bash
$ $(pwd)/build_anaconda_image.sh
```

2. Using docker-compose to turn on the jupyter-notebook server.
Running the command in this diretory.
Note:
    -d : turn on in backened.

```bash
$ docker-compose up -d
```

Turn off the server.
Running the command in this diretory.
```bash
$ docker-compose down
```
