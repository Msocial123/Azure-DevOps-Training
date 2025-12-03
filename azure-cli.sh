#!/bin/bash
 
echo "🔵 Starting Azure CLI installation for Ubuntu 24.04 Noble..."
 
sudo apt update -y
sudo apt install curl ca-certificates apt-transport-https lsb-release gnupg -y
 
echo "🔸 Adding Microsoft GPG key..."
curl -sL https://packages.microsoft.com/keys/microsoft.asc | \
  gpg --dearmor | sudo tee /usr/share/keyrings/microsoft.gpg > /dev/null
 
echo "🔸 Adding Azure CLI repository..."
echo deb "[arch=amd64 signed-by=/usr/share/keyrings/microsoft.gpg]" https://packages.microsoft.com/repos/azure-cli/ noble main \
| sudo tee /etc/apt/sources.list.d/azure-cli.list
 
sudo apt update -y
sudo apt install azure-cli -y
 
echo "✅ Azure CLI installed successfully!"