#!/bin/sh

echo 'This will run through the install of tools needed for hacking and ctf challenges'


sudo apt update && sudo apt upgrade
sudo apt install pluma
sudo apt install crackmapexec
sudo apt install gobuster
sudo apt install terminator

#since 2020.3 pip isn't included by default don't ask me why
sudo apt install python3-pip

#experimental!!!!!


sudo apt install zsh git

chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting


#downloads discord good to keep up with a team or a platform.Debian only maybe someone would like to add a for loop?
cd ~/Downloads
wget https://discord.com/api/download?platform=linux&format=deb
sudo dpkg -i discord-0.0.12

#uncomment line  below to install the seclist github with all the wordlists you could need.
#`sudo git clone https://github.com/danielmiessler/SecLists /opt/Seclist`
sudo apt install seclists

cd /opt
sudo mkdir tools
cd tools

`sudo git clone https://github.com/openwall/john.git`
`sudo git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git`
`sudo git clone https://github.com/netspooky/inhale.git`
`sudo git clone https://github.com/SecureAuthCorp/impacket.git`
`sudo git clone https://github.com/BullsEye0/dorks-eye.git`
sudo cp /opt/tools/privilege-escalation-awesome-scripts-suite/linPEAS/linpeas.sh .
sudo chmod +x linpeas.sh



cd ..
sudo mkdir honeypots
cd honeypots
`sudo git clone https://github.com/hacklcx/HFish.git`
