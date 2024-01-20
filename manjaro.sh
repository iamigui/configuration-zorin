#!/bin/bash
# Actualizar e instalar paquetes
sudo pacman -Syu --noconfirm
sudo pacman -S snapd --noconfirm
#Install brave
pamac install brave-browser
# Instalar Pulumi
curl -fsSL https://get.pulumi.com | sh
# Instalar Ansible
sudo pacman -S ansible --noconfirm
# Instalar awscli
sudo pacman -S aws-cli --noconfirm
# Instalar Git
sudo pacman -S git --noconfirm
# Instalar kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
# Instalar eksctl
sudo pacman -S eksctl --noconfirm
# Instalar Docker
sudo pacman -S docker --noconfirm
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo usermod -aG docker $USER
# Instalar pip
sudo pacman -S python-pip --noconfirm
# Instalar Visual Studio Code
sudo pacman -S code --noconfirm
# Instalar Terraform
sudo pacman -S terraform --noconfirm
# Instalar Notion
git clone https://github.com/notion-enhancer/notion-repackaged.git
# Instalar golang
sudo pamac install go --no-confirm
# Install nodejs
pamac install nodejs
# Install helm
sudo snap install helm --classicsudo snap install helm --classic
