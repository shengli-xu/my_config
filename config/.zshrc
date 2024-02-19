# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="ys"

plugins=(
  git
  sudo
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# keychain
source ~/.keychain/$HOST-sh

export EDITOR="/usr/local/bin/nvim"

# Python
export PATH=$PATH:~/.local/bin
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=~/.virtualenvs
source ~/.local/bin/virtualenvwrapper.sh

# tmuxifier
export PATH="$HOME/.tmuxifier/bin:$PATH"
eval "$(tmuxifier init -)"

# Alias
alias vi="nvim"
alias vim="nvim"
alias ls="exa"
alias ll="exa -hl"
alias palmetto="ssh shenglx@login.palmetto.clemson.edu"

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
