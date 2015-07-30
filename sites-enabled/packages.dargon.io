server {
	server_name packages.dargon.io;
	root /var/www/io.dargon.packages;
	client_max_body_size 5M;
	client_body_timeout 60;
	
	location / {
		try_files $uri =404;
		autoindex on;
	}
}
