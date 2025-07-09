default:
	git pull
	ansible-playbook -i 172.31.22.55, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e role_name=$(role_name) -e env=$(env) -e token=$(token)
	#ansible-playbook -i $(role_name)-dev.rdevopsb85.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e role_name=$(role_name)

tool:
	ansible-playbook -i $(tool_name)-internal.rdevopsb85.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 roboshop.yml -e role_name=$(tool_name)

