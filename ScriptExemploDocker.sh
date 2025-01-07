
#Imagem padrão do postgres
docker run --name ServerpostgresSQL -p 5432:5432 -e POSTGRES_PASSWORD=mysecretpassword -d postgres
#Imagem padrão do Mysql
docker run --name ServerMysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=mysecretpassword -d mysql
#Imagem padrão do MariaDB
docker run --name ServerMariadb -p 3307:3306 -e MYSQL_ROOT_PASSWORD=mysecretpassword -d mariadb
#Imagem padrão do Redis
docker run --name ServerRedis -p 6379:6379 -d redis

#Restore do banco mysql do docker
docker exec -i ServerMariadb mariadb -u root --password='mysecretpassword' nomebanco < /mnt/c/banco/nome_banco.sql

#Restore do banco PostgresSQl do docker
docker exec -i ServerpostgresSQL psql --username postgres banco < /mnt/c/PostgresSql/banco.sql