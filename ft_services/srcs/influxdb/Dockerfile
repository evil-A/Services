FROM	alpine:3.12.1

COPY	./srcs/init.sh ./

RUN		apk add influxdb --repository https://dl.influxdata.com/influxdb/releases/influxdb2-2.0.4-linux-amd64.tar.gz --allow-untrusted --no-cache

RUN		chmod +x ./init.sh

EXPOSE	8086

CMD		./init.sh

ENTRYPOINT	/usr/sbin/influxd -config etc/influxdb.conf
