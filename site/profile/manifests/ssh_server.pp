class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDtcnDdrg2y80t7W3VThABEdjkOO3ECVM6PRaGer+pkEI2RfOJ1MhfnERE8X9ajYDygmBqe0g5O/rHzg7AhOd7FA7cBmpoqgeXOGcWUZvavCj9fDP0hwEgRn1GYGf8+GR9jvQ8sP+YyyZTTEXbQThAEa/9FpRYGU9lq3PZuEIFLEt3rNAXaRmBp8fj3EM5jF1Y2l51iUU8cRoSgYxBIkhH9DgpTWQcc1fx4avNR5kjjxp4a4Es8w5hzvYKnBnAYJ27vgYX82veIjXEt86EYS/zE6apUebOejKyAUWXSFuaAWJudWHT10jzYrz06QkqzhXjtvMR0ikls6rwhd/6VB4If',
	}  
}
