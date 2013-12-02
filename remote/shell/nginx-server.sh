
server {
        listen 80; ## listen for ipv4; this line is default and implied
        listen 3000;
        #listen   [::]:80 default ipv6only=on; ## listen for ipv6

        root /vagrant/remote;   #/usr/share/nginx/www;
        index index.html index.htm;

        # Make site accessible from http://localhost/
        server_name localhost;

        location / {
                # First attempt to serve request as file, then
                # as directory, then fall back to index.html
                try_files $uri $uri/ /index.html;
                # Uncomment to enable naxsi on this location
                # include /etc/nginx/naxsi.rules
        }

        location /doc/ {
                alias /usr/share/doc/;
                autoindex on;
                allow 127.0.0.1;
                deny all;
        }

        #error_page 404 /404.html;

        # redirect server error pages to the static page /50x.html
        #
        #error_page 500 502 503 504 /50x.html;
        #location = /50x.html {
        #       root /usr/share/nginx/www;
        #}

}

server {
        listen 3000;
        root /vagrant/remote;
        server_name localhost;
        location / {
                try_files $uri $uri/ /index.html;
        }
}


# another virtual host using mix of IP-, name-, and port-based configuration
#
#server {
#       listen 8000;
#       listen somename:8080;
#       server_name somename alias another.alias;
#       root html;
#       index index.html index.htm;
#
#       location / {
#               try_files $uri $uri/ /index.html;
#       }
#}


# HTTPS server
#
#server {
#       listen 443;
#       server_name localhost;
#
#       root html;
#       index index.html index.htm;
#
#       ssl on;
#       ssl_certificate cert.pem;
#       ssl_certificate_key cert.key;
#
#       ssl_session_timeout 5m;
#
#       ssl_protocols SSLv3 TLSv1;
#       ssl_ciphers ALL:!ADH:!EXPORT56:RC4+RSA:+HIGH:+MEDIUM:+LOW:+SSLv3:+EXP;
#       ssl_prefer_server_ciphers on;
#
#       location / {
#               try_files $uri $uri/ /index.html;
#       }
#}