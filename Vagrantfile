# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.vm.define "debian" do |debian|
      debian.vm.box = "generic/debian12"
      debian.vm.network "private_network", ip: "192.168.56.6"
      debian.vm.network "public_network", bridge: "Realtek Gaming 2.5GbE Family Controller"
    end
  
    config.vm.provision "file", source: "/home/#{ENV['USER']}/.ssh/id_rsa.pub", destination: "~/.ssh/me.pub"
  end
  