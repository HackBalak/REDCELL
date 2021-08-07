Vagrant.configure("2") do |config|

  config.vm.define "scanVM" do |ca|
    config.vm.box = "kalilinux/rolling"
    ca.vm.network "private_network", ip: "192.168.50.10"
    ca.vm.provision "ansible", playbook: "scanVM.yml"
    ca.vm.hostname = "scanVM"
    ca.vm.provider "virtualbox" do |vba|
    vba.memory = "1024"
    vba.gui = false
    end
  end

  config.vm.define "crackVM" do |cb|
    config.vm.box = "ubuntu/focal64"
    cb.vm.network "private_network", ip: "192.168.50.20"
    cb.vm.provision "ansible", playbook: "crackVM.yml"
    cb.vm.hostname = "crackVM"
    cb.vm.provider "virtualbox" do |vbb|
    vbb.memory = "1024"
    end
  end

  config.vm.define "covenantVM" do |cc|
    config.vm.box = "ubuntu/focal64"
    cc.vm.network "private_network", ip: "192.168.50.30"
    cc.vm.provision "ansible", playbook: "covenantVM.yml"
    cc.vm.hostname = "covenantVM"
    cc.vm.provider "virtualbox" do |vbc|
    vbc.memory = "1024"
    end
  end


  config.vm.define "phishingVM" do |cd|
    config.vm.box = "ubuntu/focal64"
    cd.vm.network "private_network", ip: "192.168.50.40"
    cd.vm.provision "ansible", playbook: "phishingVM.yml"
    cd.vm.hostname = "phishingVM"
    cd.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
    end
  end

  end