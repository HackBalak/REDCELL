# REDCELL

Redcell is an Infrastructure as Code Lab of red teamers operations , it's built by Vagrant and Ansible , and it can be run locally .

This lab is made of four virtual machines that seems necessary for the CKC steps :
- **scanVM** running kali-Linux machine with needed tools like Nmap , dirsearch , ...
- **crackVM** running Ubuntu machine with Hashcat tool installed
- **covenantVM** running ubuntu machine with Covenant C2 tool installed and running on port 7443 .
- **phishingVM** running ubuntu machine with gophish tool installed and running on port 443 .

The lab setup is automated using vagrant and ansible automation tools.




## Requirements
So far the lab has only been tested on a linux machine . Ansible has some problems with Windows hosts so I don't know about that.

For the setup to work properly you need to install:

- **vagrant** from their official site [vagrant](https://www.vagrantup.com/). The version you can install through your favourite package manager (apt, yum, ...) is probably not the latest one.
- **ansible** following the extensive guide on their website [ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html).

Vagrant will be needed to provision the virtual machines and ansible to automate their configuration.

## How to deploy it ?

Just clone this repository  then run the **redcell** script as below. and this later gonna take care of the rest :) .

```bash
git clone https://github.com/HackBalak/REDCELL.git
cd REDCELL/
chmod +x redcell.sh
./redcell.sh
```
### Thanks to
- [T3nb3w](https://twitter.com/t3nb3w)