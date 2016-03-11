Vagrant.configure(2) do |config|
    config.vm.box = "centos6/64"
    config.vm.box_url = "http://sourceforge.net/projects/nrel-vagrant-boxes/files/CentOS-6.6-x86_64-v20150426.box"

    config.vm.network "private_network", ip: "192.168.33.10"
    config.vm.network :forwarded_port, host: 3000, guest: 3000
    config.vm.provision "ansible_local" do |ansible|
        ansible.playbook = "/vagrant/ansible/playbook.yml"
    end
    config.vm.synced_folder ".", "/vagrant", :mount_options => ['dmode=775', 'fmode=664']
    config.vm.provider "virtualbox" do |vb|
        vb.customize ['modifyvm', :id, "--memory", "2048", "--paravirtprovider", "kvm"]
    end
    config.ssh.forward_agent = true
    config.ssh.insert_key = false
end
