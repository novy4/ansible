# NOIA PLAYBOOKS #



### To run an initial install use following commands ###

##### 1 Stage: #####

ansible-playbook -i hosts.yml ubuntu-install-noia.yml -u root --tags install

##### 2 Stage: #####

ansible-playbook -i hosts.yml ubuntu-install-noia.yml -u root --tag run



### To update the node to the current version use following command ###

ansible-playbook -i hosts.yml ubuntu-install-noia.yml -u root --tags update


### To Update storage on node use following command ###

ansible-playbook -i hosts.yml ubuntu-install-noia.yml -u root --tags storage
