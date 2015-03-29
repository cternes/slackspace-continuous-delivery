# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "phusion/ubuntu-14.04-amd64"
  config.vm.provision "shell", inline: "chmod +x /vagrant/*.sh"
  config.vm.provision "shell", path: "bootstrap.sh"
  config.vm.network :forwarded_port, host: 9080, guest: 9080
  config.vm.network :forwarded_port, host: 8080, guest: 8080
  config.vm.network :forwarded_port, host: 4848, guest: 4848
  config.vm.synced_folder ".", "/vagrant"
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
  end
end
