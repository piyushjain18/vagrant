# vagrantfile

Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/bionic64"

    # set the hostname
    config.vm.hostname = "piyush.dev"

    # get the ip address
    config.vm.network "private_network", type: "dhcp"

    #set the shared folder
    config.vm.synced_folder "/Users/p-jain/Documents/mywork/vagrant", "/home/vagrant/workspace/src"

    #provision the box
    config.vm.provision :shell, :path => "setup/install.sh", run: 'always'

    #port forwarding
    config.vm.network "forwarded_port", guest: 8080, host: 8080,
        auto_correct: true

 end
