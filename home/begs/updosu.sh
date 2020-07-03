#!/bin/sh
if [ -d "~/osu" ]; then
    echo "!!! Looks like you're going to build osu! for the first time! Make sure that you have dotnet installed (see https://dotnet.microsoft.com/download/dotnet-core/3.1) and added to PATH (you may use /etc/profile.d/vars.sh from my dotfies as a reference). Also a .desktop file from .local/share/applications may be useful for launching osu."
    echo ">>> Clonning osu! git repo..."
    git clone https://github.com/ppy/osu
fi
cd osu
echo ">>> Updating osu! git repo..."
git pull
echo ">>> Building osu!"
dotnet build -c Release osu.Desktop
echo ">>> Done!"
