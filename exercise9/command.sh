#exercise1
#ansible -i inventory -m ping web01
#ansible -i inventory -m ping websrvgrp
#ansible -i inventory -m ping dbsrvgrp
#ansible -i inventory -m ping dc_ohio
#ansible -i inventory -m ping all

#exercise2
#ansible -i inventory -m yum -a "name=httpd state=present" web01 --become # --become變root
#ansible -i inventory -m service -a "name=httpd state=started enabled=yes" web01 --become
#ansible -i inventory -m copy -a "src=index.html dest=/var/www/html/index.html" web01 --become

#exercise3
#ansible-playbook -i inventory web_db.yaml --syntax-check
#ansible-playbook -i inventory web_db.yaml

#exercise4
#https://docs.ansible.com/ansible/2.9/modules/list_of_database_modules.html
#ansible-playbook -i inventory db.yaml

#exercise5
#ansible-playbook db.yaml
#ansible-playbook db.yaml -vv
#ansible-playbook db.yaml -vvv
#ansible-playbook db.yaml -vvvv

#exercise6
#ansible-playbook db.yaml

#exercise7
#ansible-playbook db.yaml

#exercise8
#ansible-playbook vars_precedence.yaml
#playbook => host_vars/hostname => group_vars/grpname => all
#ansible-playbook -e USRNM=cliuser -e COMM=cli vars_precedence.yaml
#ansible -m setup web01

#exercise9
ansible-playbook print_fact.yaml
