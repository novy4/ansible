#### NOIA PLAYBOOKS ####

To run an initial install use following commands
1 Stage:
ansible-playbook -i hosts.yml ubuntu-install-noia.yml -u root --tags install
2 Stage 
ansible-playbook -i hosts.yml ubuntu-install-noia.yml -u root --tag run
