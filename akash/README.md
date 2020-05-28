
## Ansible playbook execution:
ansible-playbook -i hosts.yml install.yml -t sentry -e 'ansible_python_interpreter=/usr/bin/python3'

### hosts.ini should contains sections as follow:

[validator]
hostname validator=Test seed_phrase=''

[sentry]
hostname validator=sentry

[validator:vars]
validator_persistent_peers='node-id@ip:port'

[sentry:vars]
ansible_ssh_user='root'
seeds='noide-id@ip:port'
sentry_persistent_peers='node-id@ip:port'
private_peer_ids='node-id'