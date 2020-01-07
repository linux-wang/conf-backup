

mkdir tmp
cd ./tmp

# zsh & oh-my-zsh
# Mac中一般自带zsh，可以通过 cat /etc/shells 来查看自带哪些shell
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
mv ~/.zshrc ~/.zshrc_bak
wget https://raw.githubusercontent.com/linux-wang/conf-backup/master/zshrc
mv zshrc ~/.zshrc 
chsh -s /bin/zsh

# pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py

# virtualenv & virtualenvwrapper
pip install virtualenv
pip install virtualenvwrapper

# pyenv 
curl https://pyenv.run | bash

# source zsh
source ~/.zshrc

cd ..
rm -rf ./tmp/

