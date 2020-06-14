# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = 'ubuntu/bionic64'
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.network :public_network, ip: '192.168.6.66'
  config.vm.synced_folder '.', '/vagrant'
  config.vm.provider 'virtualbox' do |box| 
    box.memory = '4096'
  end
end