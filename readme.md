How to install:

```
mkdir -p ~/Downloads
[ -d "$HOME/Downloads/macConda/.git" ] || git clone --depth=1 https://github.com/PoutineSyropErable/macConda ~/Downloads/macConda
cd ~/Downloads/macConda
git pull origin master
zsh || fish || bash


chmod 744 ./install_commands.sh
./install_commands.sh # you might need to execute it yourself, or copy paste its commands and type them not from a script.

```

The different curl commands for os:

Linux:

```
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
```

Windows:

```
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Windows-x86_64.exe
start /wait "" Miniconda3-latest-Windows-x86_64.exe /InstallationType=JustMe /AddToPath=1 /RegisterPython=1 /S /D=%UserProfile%\Miniconda3
```

Apple Silicon:

```
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh
bash Miniconda3-latest-MacOSX-arm64.sh
```

Intel macs:

```
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
bash Miniconda3-latest-MacOSX-x86_64.sh
```

---

Silent Installation: For a non-interactive installation (e.g., on macOS or Linux), you can add the -b (batch mode) and -p (prefix) options:

Unix (Linux/Mac):

```
bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda
```

Windows:

```
start /wait "" Miniconda3.exe /InstallationType=JustMe /AddToPath=1 /RegisterPython=1 /S /D=%UserProfile%\miniconda
```

If the conda activate doesn't work and you don't want to add alias to your config files:
You can conda init, and it will change the files for you. Though as shown in install script, it COULD cause problem.
(It won't cause any at all on windows though, because windows doesn't use python for Os management)

Unix:

```
$HOME/miniconda/bin/conda init
```

Windows:

```
%UserProfile%\miniconda\Scripts\conda.exe init
```
