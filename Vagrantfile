VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
 
  config.vm.box = "ubuntu/vivid64"

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2
  end
  
  config.vm.define :latex do |latex_config|
   
	latex_config.vm.provision "shell", path: "manifests/bootstrap.sh"
    
	latex_config.vm.provision "puppet" do |puppet|
      puppet.manifest_file = "latex.pp"
    end
    
	latex_config.vm.provider :aws do |aws|
      aws.tags = { 'Name' => 'MusicJungle (vagrant)'}
    end
	
  end

end
