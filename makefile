in-mem-inventory:
	ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook --private-key=/mnt/vagrant/thai-cloudansible.pem main.yml

static-inventory:
	ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook --private-key=/mnt/vagrant/thai-cloudansible.pem -i ./hosts main.yml

configure-dynamic-inventory:
	ln -s ec2.ini /etc/ansible/ec2.ini

dynamic-inventory:
	ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook --private-key=/mnt/vagrant/thai-cloudansible.pem -i assets/ec2.py main.yml
