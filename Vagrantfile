Vagrant.configure(2) do |config|
    config.vm.box = "centos64"

    config.vm.network "private_network", ip: "192.168.33.10"
    config.vm.provision "shell", :path => "provision.sh"
    config.vm.synced_folder ".", "/vagrant", :mount_options => ['dmode=775', 'fmode=664']
    config.vm.provider "virtualbox" do |vb|
        vb.customize ['modifyvm', :id, "--memory", "2048", "--paravirtprovider", "kvm"]
    end
end
