#!/bin/bash

apt update 
apt upgrade -y 
apt install cme ffuf jq sqlmap sslscan python3 python3-pip nmap feroxbuster wpscan seclists ncat curl wget python3-impacket gcc golang metasploit-framework ruby-full -y

gem install evil-winrm

mkdir /tmp/test
