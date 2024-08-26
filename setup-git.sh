#!/bin/sh

ssh-keygen -t ed25519 -C "jossferatu@gmail.com"
cat ~/.ssh/id_ed25519_github-jossferatu.pub
ps -ax | grep ssh-agent
eval "$(ssh-agent -s)"
ps -ax | grep ssh-agent
ssh-add ~/.ssh/id_ed25519_github-jossferatu
git config --global user.name Jocelyn Manger
git config --global user.email jossferatu@gmail.com
git config --global core.editor "vim"
git config --global push.autoSetupRemote true
