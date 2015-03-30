# Install docker
apt-get update -qq
apt-get install -y docker.io
ln -sf /usr/bin/docker.io /usr/local/bin/docker
sed -i '$acomplete -F _docker docker' /etc/bash_completion.d/docker.io

# Install java
apt-get install -y openjdk-7-jdk git-core

# Install jenkins
useradd jenkins -s /bin/bash -m -G docker
passwd -l jenkins
cd /home/jenkins
sudo -Hu jenkins git config --global user.name Jenkins
sudo -Hu jenkins git config --global user.email jenkins@$(hostname)
wget -q -O - http://mirrors.jenkins-ci.org/war-stable/latest/jenkins.war > /home/jenkins/jenkins.war

# Start jenkins
sudo -Hu jenkins java -jar /home/jenkins/jenkins.war -Djava.awt.headless=true --httpPort=9080 &