# Using i3wm on Ubuntu

## Getting Started

### i3wm

[Intall and setup i3 window manager on Ubuntu 20.04](https://kifarunix.com/install-and-setup-i3-windows-manager-on-ubuntu-20-04/)

### rofi

[Install and setup rofi on Ubuntu 20.04](https://linuxconfig.org/how-to-use-and-install-rofi-on-linux-tutorial)

### bumblebee-status

[Use bumblebee-status](https://github.com/tobi-wan-kenobi/bumblebee-status)

### alacritty

[Install alacritty on
Ubuntu](https://www.geeksforgeeks.org/how-to-install-and-use-alacritty-terminal-emulator-in-linux/)

---

### Common Issues

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
