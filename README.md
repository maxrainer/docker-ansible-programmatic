# docker-ansible-programmatic
Docker build for Southbound Ansible Module

## Description
REST API for Ansible Playbooks. Includes Redis Cache and Elasticsearch logging connections. (these two parts must be provided somewhere)

## set these Environment Variables:
	* ELASTICSEARCH_SERVER   (optional): defaults to localhost
	* ELASTICSEARCH_PORT     (optional): defaults to 9200
	* ELASTICSEARCH_TIMEOUT  (optional): defaults to 3 (seconds)
	* ELASTICSEARCH_INDEX    (optional): defaults to 3 ansible_logs
	* ELASTICSEARCH_DOC_ARGS (optional): Addtional json key-value pair(e.g. {"bar":"abc", "foo":"def"}) to be stored in each document
	* REDIS_SERVER   	 (optional): defaults to localhost
	* REDIS_PORT   	 	 (optional): defaults to 6379
	* REDIS_DB   		 (optional): defaults to 0
	* REDIS_ENABLED   	 (optional): defaults to False


## needed Volumes

1. mount your local playbooks to /opt/apps/ansible/playbooks
	* must contain play file (default is site.yaml)
	* must contain /roles directory 
2. add a config.xml file to host machine and mount that to /opt/apps/etc
	* do not change tag "playbook_dir" for docker usage
	
```
	<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
	<config>
		<playbook_dir>/opt/apps/ansible/playbooks</playbook_dir>
		<playbook_default>site.yaml</playbook_default>
		<job_history>5</job_history>
	</config>
```

## further usage instructions: 
https://github.com/maxrainer/ansible-programmatic

