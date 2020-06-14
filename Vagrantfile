# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.hostname = "vm"
  config.vm.synced_folder ".", "/vagrant"

  config.vm.network :forwarded_port, guest: 3000, host: 3000

  config.vm.provision :shell, path: "provision.sh", privileged: false, keep_color: true
  config.vm.provider "virtualbox" do |box|
    box.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
    box.memory = "4096"
  end
end