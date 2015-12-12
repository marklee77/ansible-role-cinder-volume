# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty64"

  cinder_file_to_disk = '.vagrant/cinder-volume-extradisk.vdi'

  config.vm.provider :virtualbox do |v|
    v.memory = 1024
    v.customize ["createhd", "--filename", cinder_file_to_disk, "--size", 4096]
    v.customize ["storageattach", :id, "--storagectl", "SATA Controller",
                 "--port", 2, "--device", 0, "--type", "hdd",
                 "--medium", cinder_file_to_disk]
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "getreqs.yml"
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "prepare-vm.yml"
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "deploy.yml"
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "test.yml"
  end

end
