# -*- coding: utf-8 -*-
# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "debian-wheezy-7.0-vanilla"
  config.vm.box_url = "https://dl.dropboxusercontent.com/s/xymcvez85i29lym/vagrant-debian-wheezy64.box"

  config.vm.define :pizaid do |pz|
    pz.vm.hostname = "pizaid-server"
    # pz.vm.network :forwarded_port, guest: 80, host: 8080
    pz.vm.network :private_network, ip: "192.168.33.20"
    # pz.vm.network :public_network
    # pz.ssh.forward_agent = true
    # pz.vm.synced_folder "../data", "/vagrant_data"

    pz.vm.provision "ansible" do |ansible|
      ansible.playbook = "site.yml"
    end
  end
end
