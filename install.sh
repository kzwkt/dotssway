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

echo -n ">>> Copy profile file(s)? (authentication requried) (y/n) "
read answer
if [ "$answer" != "${answer#[Yy]}" ]; then
    su -c "cp -ri ./etc/profile.d/ /etc/"
fi

echo -n ">>> Copy .asoundrc (alsa config file)? (y/n) "
read answer
if [ "$answer" != "${answer#[Yy]}" ]; then
    cp -i ./home/begs/.asoundrc ~
fi

echo -n ">>> Copy .local (desktop files etc?)? (y/n) "
read answer
if [ "$answer" != "${answer#[Yy]}" ]; then
    cp -ri ./home/begs/.local/ ~
fi

echo -n ">>> Copy .config (general config files)? (y/n) "
read answer
if [ "$answer" != "${answer#[Yy]}" ]; then
    cp -ri ./home/begs/.config/ ~
fi

echo -n ">>> Copy wallpaper? (y/n) "
read answer
if [ "$answer" != "${answer#[Yy]}" ]; then
    cp -ri ./home/begs/wallpaper/ ~
fi

echo -n ">>> Copy zsh config (.zshrc, .zprofile etc)? (y/n) "
read answer
if [ "$answer" != "${answer#[Yy]}" ]; then
    cp -i ./home/begs/.zshrc ~
    cp -i ./home/begs/.zprofile ~
    cp -i ./home/begs/.p10k.zsh ~
fi

echo -n ">>> Copy osu!lazer update script? (y/n) "
read answer
if [ "$answer" != "${answer#[Yy]}" ]; then
    cp -i ./home/begs/updosu.sh ~
fi
