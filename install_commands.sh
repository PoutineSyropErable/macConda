#!bin/bash

curl -o Miniconda3-MacOSX-arm64.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh
# Ask chatgpt for the url of your OS, or google it. If you are a linux king, you probably already know how

printf "\nFrom Francois/Student: It will ask do you want to change your shell .rc files (.zshrc, .bashrc, fish.config) to add conda path and 
auto init. It will make it easier to conda init, and will make you already be in conda when you start the shell.
However, that can be problematic. I'd recommend due to python being used by your os. ON windows, you dont need to care. But Linux/Mac, system update 
commands should be done from novenv, and the conda python should not be the one used by default. So, I recommend you press No.

I have an example of how to manually add it to your rc file on github: conda_activate:
https://github.com/PoutineSyropErable/config_zsh (conda_activate function, copy it to zshrc or bashrc)
https://github.com/PoutineSyropErable/config_fish
I will now run install command\n\n\n"

bash Miniconda3-MacOSX-arm64.sh # press no when it ask to add it to path and activation. It can cause problem and i gave you two
# alias to redo it where you shouldn't have any PATH problem

zsh || fish || bash
conda activate || conda_activate #if you have my .zsh or .fish config, then it will work for you
conda create --name master_venv
conda activate master_venv
conda install -y requests websocket-client pillow tk
