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