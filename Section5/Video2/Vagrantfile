# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/trusty64"
  config.vbguest.auto_update = false
  #
  config.vm.provider "virtualbox" do |vb|
     # Display the VirtualBox GUI when booting the machine
    vb.gui = true
  
     # Customize the amount of memory on the VM:
     vb.memory = "256"
   end
  
  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2 graphite-web 
  #  SHELL
end
