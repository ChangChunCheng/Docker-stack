# Building jupyter-notebook server using docker-compose.

1. Building the anaconda3 image.
```bash
$ $(pwd)/build_anaconda_image.sh
```

2. Fix the password in ./jupyter/jupyter_notebook_config.py.

Setting the jupyter-server password in jupyter-notebook.

Copy the Out[1]: ... to jupyter_notebook_config.py.

```python
from notebook.auth import passwd
passwd()

Enter password: (datainsight)
Verify password: (datainsight)
Out[1]: 'sha1:c465e6da491e:5d92875ff53f83db05c66e380965497771c743bc'
```

Fix the password inside jupyer_notebook_config.py in folder, jupyter.
```
c.NotebookApp.password = u'sha1:c465e6da491e:5d92875ff53f83db05c66e380965497771c743bc'
```

Note:

  There are some setting for envirment in the config file.
  
  Fix the set you want.

3. Using docker-compose to turn on the jupyter-notebook server.

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
