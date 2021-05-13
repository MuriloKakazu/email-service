start:
	docker-compose up --force-recreate --build -d
	docker exec -it email-service2_dns_1 ./init.sh
	docker exec -it email-service2_dns_1 bash

stop:
	docker-compose down --remove-orphans
	docker-compose rm -f
	
restart: stop start