FROM	alpine:3.12.1

#COPY	./srcs/my.cnf ./srcs/init_file ./srcs/init.sh ./
COPY	./srcs/wordpress.sql ./srcs/my.cnf ./srcs/init_file ./srcs/init.sh ./

RUN 	apk update && \
		apk add --no-cache mysql mysql-client openrc
		# && \
		#apk add mysql_upgrade 

RUN 	mkdir -p /run/mysqld && \
    	chown -R root:root /run/mysqld && \
		mv my.cnf /etc/

RUN 	chmod +x ./init.sh

EXPOSE	3306

RUN ls -al

ENTRYPOINT ./init.sh
