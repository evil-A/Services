FROM        alpine:3.12.1

RUN         apk add --no-cache \
			phpmyadmin \
            nginx \
            php7 \
            php7-mysqli \
            php7-json \
            php7-mbstring \
            php7-fpm \
            php7-opcache 

RUN         adduser -D -g 'www' www && \
		    mkdir -p /run/nginx www

RUN		    chown -R www:www /var/lib/nginx && \
		    chown -R www:www /www

RUN         mv /usr/share/webapps/phpmyadmin /www/

RUN         mkdir  -p  /etc/phpmyadmin/tmp \
            && chmod 777 /etc/phpmyadmin/tmp

COPY 	    ./srcs/nginx.conf /etc/nginx/nginx.conf
COPY        ./srcs/config.inc.php /etc/phpmyadmin/config.inc.php

EXPOSE		5000

#ENTRYPOINT php -S 0.0.0.0:5000 -t /usr/share/webapps/phpmyadmin
ENTRYPOINT  php-fpm7  && \
            /usr/sbin/nginx -g "daemon off;"
