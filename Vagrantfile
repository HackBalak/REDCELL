Vagrant.configure("2") do |config|

  config.vm.define "scanVM" do |ca|
    config.vm.box = "elrey741/kali-linux_amd64"
    ca.vm.network "private_network", ip: "192.168.50.10"
    ca.vm.provision "ansible", playbook: "scanVM.yml"
    ca.vm.hostname = "scanVM"
    ca.vm.provider "virtualbox" do |vba|
    vba.memory = "512"
    vba.gui = false
    end
  end

  config.vm.define "crackVM" do |cb|
    config.vm.box = "ubuntu/focal64"
    cb.vm.network "private_network", ip: "192.168.50.20"
    cb.vm.provision "ansible", playbook: "crackVM.yml"
    cb.vm.hostname = "crackVM"
    cb.vm.provider "virtualbox" do |vbb|
    vbb.memory = "512"
    end
  end

  config.vm.define "covenantVM" do |cc|
    config.vm.box = "ubuntu/focal64"
    cc.vm.network "private_network", ip: "192.168.50.30"
    cc.vm.provision "ansible", playbook: "covenantVM.yml"
    cc.vm.hostname = "covenantVM"
    cc.vm.provider "virtualbox" do |vbc|
    vbc.memory = "512"
    end
  end

  config.vm.define "covenantRedirector" do |ccr|
    config.vm.box = "ubuntu/focal64"
    ccr.vm.network "private_network", ip: "192.168.50.33"
    ccr.vm.provision "ansible", playbook: "covenantRedirector.yml"
    ccr.vm.hostname = "covenantRedirector"
    ccr.vm.provider "virtualbox" do |vbr|
    vbr.memory = "512"
    end  
  end

  config.vm.define "phishingVM" do |cd|
    config.vm.box = "ubuntu/focal64"
    cd.vm.network "private_network", ip: "192.168.50.40"
    cd.vm.provision "ansible", playbook: "phishingVM.yml"
    cd.vm.hostname = "phishingVM"
    cd.vm.provider "virtualbox" do |vb|
    vb.memory = "512"
    end
  end


  config.vm.define "gophishRedirector" do |cdr|
    config.vm.box = "ubuntu/focal64"
    cdr.vm.network "private_network", ip: "192.168.50.44"
    cdr.vm.provision "ansible", playbook: "gophishRedirector.yml"
    cdr.vm.hostname = "gophishRedirector"
    cdr.vm.provider "virtualbox" do |vdr|
    vdr.memory = "512"
    end
  end

end