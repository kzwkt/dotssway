#!/bin/sh

# Get a path to script so we can install dotfiles not relying on relative path
BASEDIR="$(dirname "$(readlink -f $0)")"
echo "Copying dotfiles to their appropriate locations..."

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
    su -c "cp -rvi $BASEDIR/etc/* /etc/"
fi

echo -n ">>> Copy ~/.config (general config files for Sway etc.)? (y/N) "
read answer
if [ "$answer" != "${answer#[Yy]}" ]; then
    cp -rvi $BASEDIR/home/begs/.config/ ~
    # Add an execution permission to Waybar layout script so it will work out of the box
    chmod +x ~/.config/waybar/layout.sh
fi

echo -n ">>> Copy ~/wallpaper? (y/N) "
read answer
if [ "$answer" != "${answer#[Yy]}" ]; then
    cp -rvi $BASEDIR/home/begs/wallpaper/ ~
fi
