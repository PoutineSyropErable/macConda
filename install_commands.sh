#!bin/bash

curl -o Miniconda3-MacOSX-arm64.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh
bash Miniconda3-MacOSX-arm64.sh # press no when it ask to add it to path and activation. It can cause problem and i gave you two
# alias to redo it where you shouldn't have any PATH problem

zsh
conda_activate
conda create --name master_venv
conda activate master_venv
conda install -y requests websocket-client pillow tk
