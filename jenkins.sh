#!/bin/bash
# USE UBUNTU20.04 - INSTANCE: 2GB RAM + 2VCPU MIN - WILL ONLY WORK
sudo apt update -y
#sudo apt install openjdk-17-jdk -y
sudo apt install fontconfig openjdk-21-jre
sudo apt update -y
sudo apt install maven -y
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install jenkins
cat /var/lib/jenkins/secrets/initialAdminPassword
#chmod 777 jenkins.sh
#./jenkins.sh
