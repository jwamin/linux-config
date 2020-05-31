#!/bin/sh
#Linux Setup sh

#FlatPak Flathub
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#Swift

#Dependencies
apt-get install \
          binutils \
          git \
          gnupg2 \
          libc6-dev \
          libcurl4 \
          libedit2 \
          libgcc-9-dev \
          libpython2.7 \
          libsqlite3-0 \
          libstdc++-9-dev \
          libxml2 \
          libz3-dev \
          pkg-config \
          tzdata \
          zlib1g-dev \
          vim

#download swift zip from https://swift.org/builds/development/ubuntu2004/swift-DEVELOPMENT-SNAPSHOT-2020-05-26-a/swift-DEVELOPMENT-SNAPSHOT-2020-05-26-a-ubuntu20.04.tar.gz
#unzip
#place in /usr/bin

#git config
git config --global user.email "jossferatu@gmail.com"
git config --global user.name "Joss Manger"
git config --global core.editor "vim"

#Libs
apt install curl
apt install zsh

#flatpak
flatpak install flathub io.atom.Atom
flatpak install flathub org.gnome.Builder
flatpak install flathub org.blender.Blender
flatpak install flathub com.valvesoftware.Steam

#zsh
apt install curl
apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#append settings to zshrc
~/.zshrc >> "alias zshreload=\"source ~/.zshrc\n"
~/.zshrc >> "\n"
~/.zshrc >> "#Swift\n"
~/.zshrc >> "export PATH=/usr/bin/swift/usr/bin:\"${PATH}\""

#Run always
screenfetch


#Blender

#graphical
#Clion


sudo reboot
