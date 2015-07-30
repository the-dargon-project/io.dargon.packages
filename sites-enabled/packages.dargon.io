server {
	server_name packages.dargon.io;
	client_max_body_size 16K;
	client_body_timeout 15s;
	
	location / {
		root /var/www/io.dargon.packages;
		autoindex on;
		default_type text/plain;
	}
}
