#!/bin/sh

echo 'This will run through the install of tools needed for hacking and ctf challenges'

sudo apt install pluma
sudo apt install crackmapexec
sudo apt install terminator

#since 2020.3 pip isn't included by default don't ask me why
sudo apt install python3-pip


`sudo git clone https://github.com/SecureAuthCorp/impacket.git /opt/tools`

#uncomment line  below to install the seclist github with all the wordlists you could need.
#`sudo git clone https://github.com/danielmiessler/SecLists /opt/Seclist`

sudo cd /opt/tools/
mkdir scripts

`sudo git clone https://github.com/Shellntel/scripts /opt/tools/scripts`
