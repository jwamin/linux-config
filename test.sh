#!/bin/sh

echo "alias zshreload=\"source ~/.zshrc" >> ~/.zshrc
echo "\n" >> ~/.zshrc
echo "#Swift\n" >> ~/.zshrc
echo "export PATH=/usr/bin/swift/usr/bin:\"\${PATH}\"" >> ~/.zshrc
