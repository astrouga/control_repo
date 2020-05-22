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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC51/e9L04RLoYJ/6rTTXhrgkb0d7qXE6g320bqxD/ZDGcKDTzYRZc8/DJN8MS5Mfq6p6MRKQ2JqO/D2D9UjQ0DIrnxZeaLus317WCS9vpPusWckzHcwZHl/jkS6+hWR6+9xokrf0+Meg8zB7sS4bEeRJbqD5+kNtGVbdVMaJQdGRsy3r6pxErnL64YHmxxYZwSs3suve+sIgsXNYBGygaH/ygluYEiQbZlGfE9gKfDN36PYy4ii071YbYTjyBS3Ej5r3MKKpBWBQXf0amwXk+/jx//cSfIM8sTwM1sc/tHXYcjx0yEwns5s73gaORen8L2MCG34FcWuIcg9MoAXXI5',
	}  
}
