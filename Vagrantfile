# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.define "dummy_vm" do |box|
    box.vm.box = "ubuntu/trusty64"
    box.vm.hostname = "dummy.dev"
    box.vm.provision :shell, path: "bootstrap.sh"
    box.vm.provision :shell, path: "install-rvm.sh", args: "stable"
    box.vm.provision :shell, path: "install-ruby.sh", args: "2.2.4"
  end

  config.ssh.forward_agent = true
  config.vm.box_check_update = true

  # Create a forwarded port mapping which allows access to a specific port
  config.vm.network "forwarded_port", guest: 4567, host: 4567, ip: "0.0.0.0", auto_correct: true # => http://0.0.0.0:4567

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.33.15"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  config.vm.synced_folder "../dummy", "/home/vagrant/dummy", type: 'nfs'

  config.vm.provider "virtualbox" do |vb|
     vb.memory = "2048"
     vb.cpus = "2"
  end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   sudo apt-get update
  #   sudo apt-get install -y apache2
  # SHELL
end
