#!/bin/sh
echo "Copying dotfiles to their relative locations..."

if [ `whoami` == 'root' ]; then
    echo -n "!!! Do you REALLY want to install this dotfiles AS ROOT? (y/n) "
    read answer
    if [ "$answer" != "${answer#[Yy]}" ]; then
        echo "Continuing..."
    else
        echo "Aborting..."
        exit
    fi
fi

echo -n ">>> Copy profile file(s) (/etc/profile.d/)? (authentication requried) (y/n) "
read answer
if [ "$answer" != "${answer#[Yy]}" ]; then
    su -c "cp -rvi ./etc/profile.d/ /etc/"
fi

echo -n ">>> Copy ~/.asoundrc (alsa config file)? (y/n) "
read answer
if [ "$answer" != "${answer#[Yy]}" ]; then
    cp -vi ./home/begs/.asoundrc ~
fi

echo -n ">>> Copy ~/.local (desktop files etc, including osu! install/update script and osu! .desktop file (to use update script ~/.local/bin must be in PATH, see my proile script for reference))? (y/n) "
read answer
if [ "$answer" != "${answer#[Yy]}" ]; then
    cp -rvi ./home/begs/.local/ ~
fi

echo -n ">>> Copy ~/.config (general config files)? (y/n) "
read answer
if [ "$answer" != "${answer#[Yy]}" ]; then
    cp -rvi ./home/begs/.config/ ~
fi

echo -n ">>> Copy ~/wallpaper? (y/n) "
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
