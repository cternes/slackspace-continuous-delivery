# Install docker
apt-get update -qq
apt-get install -y docker.io
ln -sf /usr/bin/docker.io /usr/local/bin/docker
sed -i '$acomplete -F _docker docker' /etc/bash_completion.d/docker.io

# Install java
apt-get install -y openjdk-7-jdk git-core

