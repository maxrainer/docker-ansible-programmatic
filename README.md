# docker-ansible-programmatic
Docker build for Southbound Ansible Module


1. mount your local playbooks to /opt/apps/ansible/playbooks
	* must contain play file (default is site.yaml)
	* must contain /roles directory 
2. add a config.xml file to host machine and mount that to /opt/apps/etc
	* do not change tag "playbook_dir" for docker usage
	
```
	<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
	<config>
		<redis_enabled>True</redis_enabled>
		<redis_host>localhost</redis_host>
		<redis_port>32768</redis_port>
		<redis_db>0</redis_db>
		<playbook_dir>/opt/apps/ansible/playbooks</playbook_dir>
		<playbook_default>site.yaml</playbook_default>
		<job_history>5</job_history>
		<elastic_url>http://localhost:9200</elastic_url>
	</config>
```

* further usage instructions: https://github.com/maxrainer/ansible-programmatic
