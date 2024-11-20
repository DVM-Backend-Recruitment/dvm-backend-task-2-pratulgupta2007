upstream ticketbooking {
    server web:8000;
}

server {
    listen 80;
    server_name bookmyticket.live www.bookmyticket.live;

    location /.well-known/acme-challenge/ {
        root /vol/www/;
    }

    location / {
        return 301 https://$host$request_uri;
    }
}

server {
    listen      443 ssl;
    server_name bookmyticket.live www.bookmyticket.live;

    ssl_certificate     /etc/letsencrypt/live/bookmyticket.live/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/bookmyticket.live/privkey.pem;

    include     /etc/nginx/options-ssl-nginx.conf;

    ssl_dhparam /vol/proxy/ssl-dhparams.pem;

    add_header Strict-Transport-Security "max-age=31536000; includeSubDomains" always;

    location /static/ {
        alias /home/app/web/staticfiles/;
    }

    location / {
        uwsgi_pass           web:8000;
        include              /etc/nginx/uwsgi_params;
        client_max_body_size 10M;
    }
}