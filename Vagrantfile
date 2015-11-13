Vagrant.configure(2) do |config|
  config.vm.provider "vitrualbox" do |v|
    v.memory = 1024
    v.cpus = 1
  end

  config.vm.hostname = 'plog'
  config.vm.box = "ubuntu/trusty64"
  config.vm.network :private_network, type: 'dhcp'
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.omnibus.chef_version = 'latest'
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Enabling the Berkshelf plugin. To enable this globally, add this configuration
  # option to your ~/.vagrant.d/Vagrantfile file
  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe 'plog::default'
  end
end
