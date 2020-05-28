
## Ansible playbook execution
ansible-playbook -i hosts.ini install.yml -t sentry --ask-become-pass

-t has two options: sentry, validator

### hosts.ini should contains sections as follow:

[validator]

hostname validator=Test seed_phrase=''


[sentry]

hostname validator=sentry

[all:vars]

ansible_python_interpreter='/usr/bin/python3'


[validator:vars]

validator_persistent_peers='node-id@ip:port'


[sentry:vars]

ansible_ssh_user='root' ## hostname user account
seeds='noide-id@ip:port' ## seeds nodes 
sentry_persistent_peers='node-id@ip:port' ## persistent peers
private_peer_ids='node-id' ## validator node id