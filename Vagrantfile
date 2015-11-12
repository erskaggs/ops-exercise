Vagrant.configure(2) do |config|
  
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 1
  end

  config.vm.box = "ubuntu/trusty64"
  config.vm.network "forward_port", guest: 80, host: 8080

  config.berkshelf.enabled = true
  config.omnibus.chef_version = :latest

  config.vm.provision "chef_solo" do |chef|

    chef.add_recipe 'plog::default'
  end
end
