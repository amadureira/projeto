ansible-playbook -i in playbook.yaml -e "swarm_install=swarm" --private-key=~/id_rsa
ansible-playbook -i in playbook.yaml -e "swarm_service=swarm" --private-key=~/id_rsa
