#!/bin/bash
clear
sudo apt update && sudo apt upgrade -y
sudo apt install -y python3 python3-pip python3-venv docker-compose figlet cowsay lolcat neofetch git certbot nginx python3-certbot-nginx curl
python3 -m venv /opt/bw-venv
source /opt/bw-venv/bin/activate
pip install --upgrade pip
curl -s -o ~/bw.py https://raw.githubusercontent.com/gitenvx/homeVPS/master/bw.py
clear
timedatectl set-timezone Asia/Jakarta
echo "Masukkan Nama Header:" | lolcat
read header_name
echo "Masukkan Nama Logo:" | lolcat
read logo_name
echo -e "\nsource /opt/bw-venv/bin/activate" >> ~/.bashrc
echo "cowsay -f eyes $header_name | lolcat" >> ~/.bashrc
echo "figlet $logo_name | lolcat" >> ~/.bashrc
echo "date | lolcat" >> ~/.bashrc
echo "python ~/bw.py | lolcat" >> ~/.bashrc
figlet HomeVPS | lolcat
echo "Instalasi berhasil" | lolcat
clear
source /opt/bw-venv/bin/activate
cowsay -f eyes $header_name | lolcat
figlet $logo_name | lolcat
date | lolcat
python ~/bw.py | lolcat