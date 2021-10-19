dcup:
	- ./create-network-nginx.sh
	- docker-compose up -d

dcdown:
	docker-compose down