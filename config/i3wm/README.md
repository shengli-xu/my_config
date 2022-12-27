# Using i3wm on Ubuntu

## Getting Started

### i3wm

[Intall and setup i3 window manager on Ubuntu
20.04](https://kifarunix.com/install-and-setup-i3-windows-manager-on-ubuntu-20-04/)

### i3-gaps

[Install i3-gaps on Ubuntu](https://blog.elreydetoda.site/minimal-i3-gaps-install-ubuntu/)

### rofi

[Install and setup rofi on Ubuntu 20.04](https://linuxconfig.org/how-to-use-and-install-rofi-on-linux-tutorial)

### bumblebee-status

[Use bumblebee-status](https://github.com/tobi-wan-kenobi/bumblebee-status)

### alacritty

[Install alacritty on
Ubuntu](https://www.geeksforgeeks.org/how-to-install-and-use-alacritty-terminal-emulator-in-linux/)

### maim

Install `maim` to support screenshot.

```bash
sudo apt install maim
```

### feh

To support wallpaper, install `feh`:

```bash
sudo apt install feh
```

### picom

[Install picom to support window transparency](https://github.com/yshui/picom)

---

### Tricks and Common Issues

#### Remapping CAPS LOCK

To use `CAPS LOCK` as `Super`, create `~/.Xmodmap` and paste the following:

```text
clear Lock
keycode 66 = Hyper_L
add mod4 = Hyper_L
```

Then add the following to i3wm config:

```text
exec --no-startup-id xmodmap ~/.Xmodmap
```

#### Screen Tearing

Create `/etc/X11/xorg.conf` and paste the following:

```text
Section "Screen"
    Identifier     "Screen0"
    Option         "ForceFullCompositionPipeline" "on"
EndSection
```

#### Massive Cursor Size

Edit `/etc/X11/Xresources/x11-common` and add the following:

```text
! Cursor
Xcursor.size: 24
Xcursor.theme: DMZ-White
```

Then logout or restart.
