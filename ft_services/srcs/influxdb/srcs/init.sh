#influxdb

influx -execute "CREATE DATABASE ft_services"
influx -execute "CREATE USER evila WITH PASSWORD 'evila'"
influx -execute "GRANT ALL ON influxdb TO evila"
