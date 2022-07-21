#exercise1
#ansible -i inventory -m ping web01
#ansible -i inventory -m ping websrvgrp
#ansible -i inventory -m ping dbsrvgrp
#ansible -i inventory -m ping dc_ohio
#ansible -i inventory -m ping all

#exercise2
ansible -i inventory -m yum -a "name=httpd state=present" web01 --become # --become變root
ansible -i inventory -m service -a "name=httpd state=started enabled=yes" web01 --become
ansible -i inventory -m copy -a "src=index.html dest=/var/www/html/index.html" web01 --become
