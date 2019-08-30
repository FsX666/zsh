# zsh
zsh &amp; shell tuning

Après avoir installer zsh:

Gestion des envs virtuels
=========================

```bash
sudo apt install python3-pip
pip3 install virtualenv
pip3 install virtualenvwrapper

```

Installation d'Oh-my-zsh et powerline9k
=======================================

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
cd ~ && git clone git@github.com:FsX666/zsh.git
cd zsh
cp .bash* ../ && cp .zshrc ../
source ~/.zshrc
```
