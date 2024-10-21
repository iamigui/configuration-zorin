#!/bin/bash
# Update and upgrade
sudo apt get update -y
sudo apt get upgrade -y
sudo apt install unzip -y
sudo apt install snapd
# Install pulumi
curl -fsSL https://get.pulumi.com | sh
# Install ansible
sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install ansible -y
# Install awscli
sudo apt install awscli -y
#Install git
sudo apt install git -y
# Instalar AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
# Instalar kubectl
curl -o kubectl https://s3.us-west-2.amazonaws.com/amazon-eks/1.23.7/2022-06-29/bin/linux/amd64/kubectl
chmod +x ./kubectl
mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$PATH:$HOME/bin
sudo cp kubectl /usr/local/bin/
# Instalar eksctl
sudo apt install -y curl
sudo curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | sudo tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
# Instalar Docker
sudo apt install docker.io -y
sudo usermod -aG docker $USER
sudo chmod 666 /var/run/docker.sock
# Install pip
sudo apt install python3-pip -y
# Install vscode
sudo snap install --classic code
# Install Terraform
snap install terraform --classic
# Install Terragrunt
sudo snap install terragrunt
# Install TFLint
curl -s https://raw.githubusercontent.com/terraform-linters/tflint/master/install_linux.sh | bash
# Install k3d
curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
# Install Java
sudo apt install openjdk-17-jdk -y
# Install maven
sudo apt install maven -y 
# Install AZ Cli
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
# Install Helmfile
sudo snap install helm --classic
curl -fsSL https://github.com/helmfile/helmfile/releases/download/v0.168.0/helmfile_0.168.0_linux_386.tar.gz -o helmfile.tar.gz
sudo mv helmfile  /usr/local/bin
helm plugin install https://github.com/databus23/helm-diff
# Install go
sudo apt-get -y install golang-go
# Install npm
sudo apt-get -y install nodejs npm