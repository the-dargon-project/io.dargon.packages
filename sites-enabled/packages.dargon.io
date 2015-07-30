server {
	server_name packages.dargon.io;
	root /var/www/packages.dargon.io;
	client_max_body_size 5M;
	client_body_timeout 60;
	rewrite ^/$ /index.php; 
	
	location / {
		try_files $uri $uri/ @rewrite;
	}
	
	location ^~ /maintenance/ {
		return 403;
	}
}
