docker run --name springapp -d -p 5000:8080 --network acada \
	-e MONGO_DB_USERNAME=uatdb \
	-e MONGO_DB_PASSWORD=uatdb123 \
	-e MONGO_DB_HOSTNAME=mongo \
	acadalearning/spring-boot-mongo:latest

docker run --name mongo -d --network acada \
 	-v  ebsvolume:/data/db \
	-e MONGO_INITDB_ROOT_USERNAME=uatdb  \
	-e MONGO_INITDB_ROOT_PASSWORD=uatdb123 \
	mongo
