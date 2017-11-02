## On the remote machine

### Installing Jupyter

```
python3 -m pip install jupyter
```

## Installing Matlab Kernel for Jupyter
```
pip3 install git+https://github.com/Calysto/matlab_kernel
```

## Installing MATLAP Engine API for Python
```
cd /import/matlabR2016b/extern/engines/python
python3 setup.py build --build-base="/tmp" install --user
```

## On the local machine
```
port=
user=
pc=andorra
ssh -L 8888:localhost:$port $user@$pc.imp.fu-berlin.de "~/.local/bin/jupyter notebook --no-browser --port $port"
