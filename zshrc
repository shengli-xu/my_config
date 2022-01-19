# Git SSH-AGENT
if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval "$(ssh-agent -s)" > /dev/null
  ssh-add ~/.ssh/id_rsa_github 2> /dev/null
fi

# Python
export PATH=$PATH:~/.local/bin
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=~/.virtualenvs
source ~/.local/bin/virtualenvwrapper.sh

# CUDA 11.1
export PATH=$PATH:/usr/local/cuda-11.1/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-11.1/lib64
