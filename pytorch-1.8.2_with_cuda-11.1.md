### Install CUDA 11.1 on Ubuntu 20.04
```bash
$ wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin
$ sudo mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600
$ wget https://developer.download.nvidia.com/compute/cuda/11.1.0/local_installers/cuda-repo-ubuntu2004-11-1-local_11.1.0-455.23.05-1_amd64.deb
$ sudo dpkg -i cuda-repo-ubuntu2004-11-1-local_11.1.0-455.23.05-1_amd64.deb
$ sudo apt-key add /var/cuda-repo-ubuntu2004-11-1-local/7fa2af80.pub
$ sudo apt-get update
$ sudo apt-get -y install cuda
```

#### Install CUDA 11.1 on WSL Ubuntu 20.04
```bash
$ wget https://developer.download.nvidia.com/compute/cuda/repos/wsl-ubuntu/x86_64/cuda-wsl-ubuntu.pin
$ sudo mv cuda-wsl-ubuntu.pin /etc/apt/preferences.d/cuda-repository-pin-600
$ wget https://developer.download.nvidia.com/compute/cuda/11.1.0/local_installers/cuda-repo-wsl-ubuntu-11-1-local_11.1.0-1_amd64.deb
$ sudo dpkg -i cuda-repo-wsl-ubuntu-11-1-local_11.1.0-1_amd64.deb
$ sudo apt-key add /var/cuda-repo-wsl-ubuntu-11-1-local/7fa2af80.pub
$ sudo apt-get update
$ sudo apt-get -y install cuda
```

### Install cudnn 8.0.5
```bash
$ sudo dpkg -i libcudnn8_8.0.5.39-1+cuda11.1_amd64.deb
$ sudo dpkg -i libcudnn8-dev_8.0.5.39-1+cuda11.1_amd64.deb
```

# Install torch 1.8.2
```bash
pip3 install torch==1.8.2 torchvision==0.9.2 --extra-index-url https://download.pytorch.org/whl/lts/1.8/cu111
```
