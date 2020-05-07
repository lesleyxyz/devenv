cd

#update
sudo apt update && sudo apt upgrade && sudo apt dist-upgrade && sudo apt update

#SHELL
sudo apt install git zsh htop screen unzip

#CTF
sudo apt install netcat hexedit binutils gdb binwalk

#DEV
sudo apt install python python3 git build-essential make

#install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s /bin/zsh

# in .zshrc add user to hide user from PS1
DEFAULT_USER=lesley

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone git://github.com/wting/autojump.git ~/.autojump
cd .autojump
./install.py
cd
plugins=(git capistrano bundler autojump command-not-found python pip github gnu-utils history-substring-search zsh-syntax-highlighting)

git clone https://github.com/seebi/dircolors-solarized ~/.dircolors-solarized

#in .zshrc add
eval `dircolors ~/.dircolors-solarized/dircolors.256dark`
