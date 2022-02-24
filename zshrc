if [ -t 0 ] && [[ -z $TMUX ]] && [[ $- = *i* ]]; then exec tmux; fi

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

# Color scheme for tty
if [ "$TERM" = "linux" ]; then
        echo -en "\e]P0232323" # black
        echo -en "\e]P82B2B2B" # darkgray
        echo -en "\e]P1D75F5F" # red
        echo -en "\e]P9E33636" # darkgreen
        echo -en "\e]PA98E34D" # green
        echo -en "\e]P3D7AF5F" # brown
        echo -en "\e]PBFFD75F" # yellow
        echo -en "\e]P48787AF" # darkblue
        echo -en "\e]PC7373C9" # blue
        echo -en "\e]P5BD53A5" # darkmagenta
        echo -en "\e]PDD633B2" # magenta
        echo -en "\e]P65FAFAF" # darkcyan
        echo -en "\e]PE44C9C9" # cyan
        echo -en "\e]P7E5E5E5" # lightgray
        echo -en "\e]PFFFFFFF" # white
        clear # for background artifacting
fi
