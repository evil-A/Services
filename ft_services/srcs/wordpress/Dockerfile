FROM        alpine:3.12.1

RUN         apk --no-cache add \
            php7 \
            php7-mysqli \
            php7-json \
            php7-mbstring \
            php7-fpm \
            php7-opcache \
			php7-ctype \
            nginx

RUN         adduser -D -g 'www' www && \
		    mkdir -p /run/nginx www

RUN		    chown -R www:www /var/lib/nginx && \
		    chown -R www:www /www
            
RUN         wget https://es.wordpress.org/latest-es_ES.tar.gz \
            && tar -xzvf latest-es_ES.tar.gz \
            && rm latest-es_ES.tar.gz \
            && mv /wordpress /www/

COPY 	    ./srcs/nginx.conf /etc/nginx/nginx.conf
COPY        ./srcs/wp-config.php /www/wordpress/

EXPOSE      5050

ENTRYPOINT  php-fpm7  && \
            /usr/sbin/nginx -g "daemon off;"
