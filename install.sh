#!/bin/bash

apt update 
apt upgrade -y 
apt install pipx git ffuf jq sqlmap sslscan python3 python3-pip nmap feroxbuster wpscan seclists ncat curl wget python3-impacket gcc golang metasploit-framework ruby-full whatweb  -y

gem install evil-winrm

pipx ensurepath

pipx install git+https://github.com/Pennyw0rth/NetExec



