#!/bin/bash

clear
echo "========================================================"
echo " "
echo "Config Ubuntu environment"
echo " "
echo "By Nicolas Anaia"
echo " "
echo "========================================================"
echo " "
echo " "

function Install_ubuntu_updates
{
echo "Installing ubuntu updates......................................."
sudo apt-get update && sudo apt-get dist-upgrade -y && sudo apt-get install gimp -y && sudo apt-get install snapd snapd-xdg-open
echo "==========================="
echo " "
echo " "
echo " "
echo " "
}

function Install_git
{
echo "Installing git......................................."
sudo apt-get install git-all
echo "==========================="
echo " "
echo " "
echo " "
echo " git version: "
git --version
}

function Install_curl
{
echo "Installing curl......................................."
sudo apt install curl
apt-cache search libcurl | grep python
sudo apt install python3-pycurl
echo "==========================="
echo " "
echo " "
echo " "
echo " curl version: "
curl --version
}

function Install_nvm
{
echo "Installing nvm......................................."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
echo "==========================="
echo " "
echo " "
echo " "
echo " nvm version: "
nvm --version
}

function Install_node
{
echo "Installing node......................................."
nvm install node
nvm use node
echo "==========================="
echo " "
echo " "
echo " "
echo " node version: "
node --version
}

function Install_yarn
{
echo "Installing yarn......................................."
sudo npm install --global yarn
echo "==========================="
echo " "
echo " "
echo " "
echo " yarn version: "
yarn --version
}

function Install_aws_cli
{
echo "Installing aws......................................."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
echo "==========================="
echo " "
echo " "
echo " "
echo " aws version: "
aws --version
}

function Install_discord
{
echo "Installing discord......................................"
sudo apt install gdebi-core wget
wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo gdebi ~/discord.deb
echo "==========================="
echo " "
echo " "
echo " "
echo " discord version: "
discord --version
}

function Install_python
{
echo "Installing python......................................."
sudo apt-get install python3
sudo apt-get install python3-pip
echo "==========================="
echo " "
echo " "
echo " "
echo " python version: "
python3 --version
}

function Install_zsh
{
echo "Installing ZSH......................................."
sudo apt install zsh -y
echo "==========================="
echo " "
echo " "
echo " "
echo " ZSH version: "
zsh --version
}

function Install_oh_my_zsh
{
echo "Installing OH MY ZSH......................................."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "==========================="
echo " "
echo " "
echo " "
echo " "
}

function Install_chrome
{
echo "Installing chrome......................................."
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo apt install ./google-chrome-stable_current_amd64.deb -y
echo "==========================="
echo " "
echo " "
echo " "
echo " chrome version: "
google-chrome --version
}

function Install_tweaks
{
echo "Installing gnome tweaks......................................"
sudo apt install gnome-tweak-tool -y
echo "==========================="
echo " "
echo " "
echo " "
echo " tweaks version: "
gnome-tweaks --version
}


function Install_vscode
{
echo "Installing VSCode......................................"
sudo snap install --classic vscode
echo "==========================="
echo " "
echo " "
echo " "
echo " VSCode version: "
code --version
}

function Install_typescript
{
echo "Installing typescript......................................"
sudo npm install typescript --save-dev
echo "==========================="
echo " "
echo " "
echo " "
echo " typescript version: "
npm list | grep typescript
}

function Install_spotify
{
echo "Installing spotify......................................"
sudo snap install spotify
echo "==========================="
echo " "
echo " "
echo " "
echo " spotify version: "
spotify --version
}

function Install_all
{
echo "Installing all the features......................................"
sudo apt-get update && sudo apt-get dist-upgrade -y && sudo apt-get install gimp -y && sudo apt-get install snapd snapd-xdg-open
echo "==========================="
sudo apt-get install git-all
echo "==========================="
sudo apt install curl
apt-cache search libcurl | grep python
sudo apt install python3-pycurl
echo "==========================="
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
echo "==========================="
nvm install node
nvm use node
echo "==========================="
sudo npm install --global yarn
echo "==========================="
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
echo "==========================="
sudo apt install gdebi-core wget
wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo gdebi ~/discord.deb
echo "==========================="
sudo apt-get install python3
sudo apt-get install python3-pip
echo "==========================="
sudo apt install zsh -y
echo "==========================="
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "==========================="
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo apt install ./google-chrome-stable_current_amd64.deb -y
echo "==========================="
sudo apt install gnome-tweak-tool -y
echo "==========================="
sudo snap install --classic vscode
echo "==========================="
sudo npm install typescript --save-dev
echo "==========================="
sudo snap install spotify
echo "==========================="
echo " "
echo " "
echo " "
}

all_done=0
while (( !all_done )); 
do
options=("Ubuntu updates" "Install git" "Install curl" "Install nvm" "Install node" "Install yarn" "Install aws cli" "Install discord" "Install python" "Install zsh" "Install oh my zsh" "Install chrome" "Install tweaks" "Install vscode" "Install typescript" "Install spotify" "Install all of the above")
echo "Choose an option: "
select opt in "${options[@]}" "QUIT";
do
    case $REPLY in
    1) Install_ubuntu_updates; break ;;
    2) Install_git; break ;;
    3) Install_curl; break ;;
    4) Install_nvm; break ;;
    5) Install_node; break ;;
    6) Install_yarn; break ;;
    7) Install_aws_cli; break ;;
    8) Install_discord; break ;;
    9) Install_python; break ;;
    10) Install_zsh; break ;;
    11) Install_oh_my_zsh; break ;;
    12) Install_chrome; break ;;
    13) Install_tweaks; break ;;
    14) Install_vscode; break ;;
    15) Install_typescript; break ;;
    16) Install_spotify; break ;;
    17) Install_all; all_done=1; break ;;
    18) all_done=1; break ;;
    *) echo "INVALID OPTION" ;;
    esac
done
done

clear
echo "Everything ok :)"
sleep 5