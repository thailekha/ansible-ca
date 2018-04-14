configure-dynamic-inventory:
	rm /etc/ansible/ec2.ini && ln -s ec2.ini /etc/ansible/ec2.ini

create-infrastucture-webservers:
	ANSIBLE_HOST_KEY_CHECKING=False \
		ansible-playbook \
			--vault-password-file password \
			--private-key=thai-cloudansible.pem, -e "type=webservers" create-infrastructure.yml

create-infrastucture-haproxyserver:
	ANSIBLE_HOST_KEY_CHECKING=False \
		ansible-playbook \
			--vault-password-file password \
			--private-key=thai-cloudansible.pem, -e "type=haproxyserver" create-infrastructure.yml

configure-infrastrucutre:
	ANSIBLE_HOST_KEY_CHECKING=False \
		ansible-playbook \
			--vault-password-file password \
			--private-key=thai-cloudansible.pem -i assets/ec2.py configure-infrastructure.yml

# in-mem-inventory:
# 	ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook --private-key=/mnt/vagrant/thai-cloudansible.pem main.yml
#
# static-inventory:
# 	ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook --private-key=/mnt/vagrant/thai-cloudansible.pem -i ./hosts main.yml
