#!/bin/bash

apt update 
apt upgrade -y 
apt install cme ffuf jq sqlmap sslscan python3 python3-pip nmap feroxbuster wpscan seclists ncat curl wget python3-impacket gcc golang metasploit-framework ruby-full whatweb spice-vdagent qemu-guest-agent -y

gem install evil-winrm


### install auto resize script
mkdir /opt/autoresize
cp ./autoresize.sh /opt/autoresize/
chmod +x /opt/autoresize/autoresize.sh
sudo ln -s /opt/autoresize/autoresize.sh /usr/local/bin/autoresize



#### install burp
bash ./DownloadAndINstallBurp.sh
