Jenkins Installation
#!/bin/bash

#Author: 
#Date: March 1st, 2022

##This script is to automate installing Jenkins on a CentOS 7 system using the official Jenkins repository.

echo -e  "\n We will now start to download Jenkins...\n "

if

 [ ${USER} != root ]

then 

echo -e "\n You are not the root user so you can't run this script!\n "
exit 100 
else
echo -e "\n You are the root user and you are good to go\n"
fi

sleep 5

echo -e "\n Before we can install Jenkins, we need to have Java installed in our system please wait while we install java...\n"

sudo yum install java-1.8.0-openjdk-devel -y

if
[ $? -ne 0 ]

then
echo -e "\n Issue with installing Java\n "
exit 99
fi

sleep 5
echo -e "\nNow we need to enable the Jenkins repository...\n "

sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo

if
[ $? -ne 0 ]

then
sudo yum install wget -y
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
fi

if
[ $? -ne 0 ]
then
echo -e "\nThere is
