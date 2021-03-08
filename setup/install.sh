#!/bin/bash
# Configurations.
#####################################################

#install basic tools
sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confnew" install git

#get golang 1.16
curl -O https://storage.googleapis.com/golang/go1.16.linux-amd64.tar.gz

#unzip the archive
tar -xvf go1.16.linux-amd64.tar.gz

#move the go lib to local folder
mv go /usr/local

#delete the source file
rm  go1.16.linux-amd64.tar.gz

#only full path will work
touch /home/vagrant/.bash_profile

echo "export PATH=$PATH:/usr/local/go/bin" >> /home/vagrant/.bash_profile

echo `export GOPATH=/home/vagrant/workspace` >> /home/vagrant/.bash_profile

export GOPATH=/home/vagrant/workspace

mkdir -p "$GOPATH/bin"

go build /home/vagrant/workspace/src/app.go

/home/vagrant/workspace/src/app &




