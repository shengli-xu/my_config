# Post-Installations for Ubuntu

## ZSH

Install `zsh` with the following command:

```bash
sudo apt install zsh
```

Install `oh-my-zsh` with the following command:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install useful plugins:

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

p10k configure

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Set `ZSH_THEME="powerlevel10k/powerlevel10k"` in `~/.zshrc`.

## Git and GitHub

### Installation

```bash
sudo apt install git
```

### SSH Keys

[Generate ssh keys for GitHub](./.ssh/connect_to_github.md)

[Configure ssh remote connection](./.ssh/configure_ssh_remote_connection.md)

