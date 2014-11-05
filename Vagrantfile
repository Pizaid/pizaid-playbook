# -*- coding: utf-8 -*-
# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'yaml'
pizaid_conf = YAML.load_file("./group_vars/pizaid.yml")

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |vm_conf|
  vm_conf.vm.box = "debian-wheezy-7.6"
  vm_conf.vm.box_url = "https://github.com/jose-lpa/packer-debian_7.6.0/releases/download/1.0/packer_virtualbox-iso_virtualbox.box"

  vm_conf.vm.define :pizaid do |pz|
    pz.vm.hostname = pizaid_conf["vm"]["hostname"]
    # pz.vm.network :forwarded_port, guest: 80, host: 8080
    pz.vm.network :private_network, ip: pizaid_conf["vm"]["private_ip"]
    # pz.vm.network :public_network
    # pz.ssh.forward_agent = true
    # pz.vm.synced_folder "../data", "/vagrant_data"

    pz.vm.provision "ansible" do |ansible|
      ansible.playbook = "site.yml"
      ansible.inventory_path = "hosts"
    end
  end
end
