FROM alpine:3.12

#	Install system packages
RUN apk update && \
	apk add openrc openssl vsftpd

#	Remove cache
RUN rm -rf /var/cache/apk/*
 
RUN yes "" | openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.key -out /etc/ssl/private/vsftpd.crt >/dev/null

COPY ./srcs/vsftpd.conf /etc

WORKDIR /usr/share 
COPY ./srcs/start.sh .
	# Create group and user pf admin

RUN mkdir -p /var/ftp/user && \
	echo -e "user\nuser" | adduser user  && \
	chown user:user /var/ftp/user

RUN mkdir -p /var/ftp/user1 && \
	echo -e "user1\nuser1" | adduser user1 && \
	chown user1:user1 /var/ftp/user1

EXPOSE 21 10100 10101

CMD ["sh", "/usr/share/start.sh"]
