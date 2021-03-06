# My dotfiles
*And not only them.* Made to match [Nord color palette](https://github.com/arcticicestudio/nord).
## Screenshot:
![screenshot](https://i.imgur.com/9qBPJL8.png)
## Notes:
- To have brightness control working add your user to `video` group and copy udev rule from [here](https://gitlab.com/wavexx/acpilight).

## List of dependencies *(maybe unfull)*:
- sway
  - grim *(for making screenshots)*
  - slurp *(for selecting a screen area to screenshot)*
  - wl-clipboard *(for copying screenshots to clipboard)*
  - acpilight *(brightness control)*
  - amixer *(if not using alsa, edit the config of waybar and sway)*
  - swaybg *(for wallpaper)*
  - swayidle *(idle manager)*
  - swaylock *(lockscreen)*
  - mako *(notification daemon)*
  - xdg-utils *(for opening links in browser etc.)*
  - playerctl *(playback control via shortcuts)*   
- alacritty *(terminal emulator)*
- waybar *(flexible and beautiful polybar-like panel)*
  - keyboard layout script *(if unneeded, remove such module from config)*
  - cmst *(for controlling connman)*
- wofi *(rofi-like application launcher)*
- neovim *(vi-like text editor)*
- connman *(network control daemon)*
- tmux *(terminal multiplexer)*
- FiraCode and Awesome5 fonts *(for text and icons)*
