## On the remote machine

### Install Jupyter

```
python3 -m pip install jupyter
```

### Install Matlab Kernel for Jupyter
```
pip3 install git+https://github.com/Calysto/matlab_kernel
```

### Install MATLAB Engine API for Python
```
cd /import/matlabR2016b/extern/engines/python
python3 setup.py build --build-base="/tmp" install --user
```

## On the local machine
```
ssh -L 8888:localhost:$port $user@$pc.imp.fu-berlin.de "~/.local/bin/jupyter notebook --no-browser --port $port"
```

The link http://localhost:$port/?token=$token has to be modified in 
