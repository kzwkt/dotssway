#!/bin/sh
echo "Copying dotfiles to their relative locations..."

if [ `whoami` == 'root' ]; then
    echo -n "!!! Do you REALLY want to install this dotfiles AS ROOT? (y/N) "
    read answer
    if [ "$answer" != "${answer#[Yy]}" ]; then
        echo "Continuing..."
    else
        echo "Aborting..."
        exit
    fi
fi

echo -n ">>> Copy /etc (profile files etc.)? (authentication requried) (y/N) "
read answer
if [ "$answer" != "${answer#[Yy]}" ]; then
    su -c "cp -rvi ./etc/* /etc/"
fi

echo -n ">>> Copy ~/.asoundrc (alsa config file)? (y/N) "
read answer
if [ "$answer" != "${answer#[Yy]}" ]; then
    cp -vi ./home/begs/.asoundrc ~
fi

echo -n ">>> Copy ~/.local (desktop files etc, including osu! install/update script and osu! .desktop file (to use update script ~/.local/bin must be in PATH, see my proile script for reference))? (y/N) "
read answer
if [ "$answer" != "${answer#[Yy]}" ]; then
    cp -rvi ./home/begs/.local/ ~
fi

echo -n ">>> Copy ~/.config (general config files for Sway etc.)? (y/N) "
read answer
if [ "$answer" != "${answer#[Yy]}" ]; then
    cp -rvi ./home/begs/.config/ ~
    # Add an execution permission to Waybar layout script so it will work out of the box
    chmod +x ~/.config/waybar/layout.sh
fi

echo -n ">>> Copy ~/wallpaper? (y/N) "
read answer
if [ "$answer" != "${answer#[Yy]}" ]; then
    cp -rvi ./home/begs/wallpaper/ ~
fi

echo -n ">>> Copy zsh config (~/.zshrc, ~/.zprofile etc)? (y/n) "
read answer
if [ "$answer" != "${answer#[Yy]}" ]; then
    cp -vi ./home/begs/.zshrc ~
    cp -vi ./home/begs/.zprofile ~
    cp -vi ./home/begs/.p10k.zsh ~
fi
