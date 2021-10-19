create:
	- docker network create nginx-proxy
	- docker-compose -f ./docker-compose-nginx.yaml
	- docker-compose up -d

dcup:
	docker-compose up -d

dcdown:
	docker-compose down