How to install:

```
mkdir -p ~/Downloads
[ -d "$HOME/Downloads/macConda/.git" ] || git clone --depth=1 https://github.com/PoutineSyropErable/macConda ~/Downloads/macConda
cd ~/Downloads/macConda
git pull origin master
zsh


chmod 744 ./install_commands.sh
./install_commands.sh # you might need to execute it yourself, or copy paste its commands and type them not from a script.

```
