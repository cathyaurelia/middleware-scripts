#!/bin/bash

#Author: Catherine Lobe
#Creation date: Feb. 2022
#Description: This script is for the installation and configuration of SonarQube on CentOS 7"


echo "Installing Java 11"
sleep 3
sudo yum update -y
sleep 2
sudo yum install java-11-openjdk-devel -y
sleep 2
sudo yum install java-11-openjdk -y
echo
sleep 3
echo "Downloading SonarQube latest versions..."
sleep 2
cd /opt
echo "Installing wget"
sleep 2
sudo yum install wget -y
sleep 2
echo "Downloading SonarQube package"
sleep 2
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip        
sleep 2
echo
echo "Extracting packages"
sleep 2
echo "Installing unzip..."
sleep 2
sudo yum install unzip
sleep 2
echo "Unzipping the previously installed package"
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sleep 2
echo "Changing ownership..."
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
./sonar.sh start



