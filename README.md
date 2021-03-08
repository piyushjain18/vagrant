
## Vagrantfile

The primary function of the Vagrantfile is to describe the type of machine required for a project
so for this assignment VM will be created with image ubuntu/bionic64.

## Setup

Script install.sh has all dependencies to bootstrap the VM 

1) Copy the golang application code to app.go in local path
    `ex. /Users/p-jain/Documents/mywork/vagrant`

2) Set the source path in vagrant file
    `ex. config.vm.synced_folder "/Users/p-jain/Documents/mywork/vagrant", "/home/vagrant/workspace/src"`

3) Go to the path where vagrant file is available locally and execute
    `cd /Users/p-jain/Documents/mywork/vagrant
    vagrant up`

4) VM with application will be provisioned in the virtualbox

5) Login to VM using command

    `vagrant ssh`

6) Find the IP address of VM and send curl request to application

`p-jain@C02D1049MD6T vagrant % curl http://172.28.128.19:8080/this/is/piyush
Hello, you've requested: /this/is/piyush`


