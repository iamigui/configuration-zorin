#!/bin/bash

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "eval $(/opt/homebrew/bin/brew shellenv)" >> ~/.zshrc
echo "" >> ~/.zshrc
echo 'export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"' >> ~/.zshrc
source ~/.zshrc
brew update
# Install git
brew install git
# Install pulumi
brew install pulumi/tap/pulumi
# Instalar AWS CLI
brew install awscli
# Instalar kubectl
brew install kubectl
# Instalar eksctl
brew tap weaveworks/tap
brew install weaveworks/tap/eksctl
# EKSCTL Completion
mkdir -p ~/.zsh/completion/
eksctl completion zsh > ~/.zsh/completion/_eksctl
echo "fpath=($fpath ~/.zsh/completion)" >> ~/.zshrc
# Install python and pip
brew install python
# Install Terraform
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
brew update
brew upgrade hashicorp/tap/terraform
terraform -install-autocomplete
# Install Terragrunt
brew install terragrunt
# Install TFLint
brew install tflint
# Install k3d
curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
# Install maven
brew install maven
# Install AZ Cli
brew update && brew install azure-cli
autoload bashcompinit && bashcompinit
source $(brew --prefix)/etc/bash_completion.d/az
# Install Helmfile
brew install helm
brew install helmfile
helm plugin install https://github.com/databus23/helm-diff
helm plugin install https://github.com/jkroepke/helm-secrets
# Install npm
brew install npm
# SOPS
brew install sops
# ORAS
brew install oras
# JQ YQ
brew install yq
brew install jq
# AKS CLI
sudo az aks install-cli