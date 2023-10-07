dep_up:
	docker-compose up -d

dep_down:
	docker-compose down

migration_up:
	migrate -path=sql/migration -database "mysql://root:root@tcp(localhost:3306)/orders" -verbose up

migration_down:
	migrate -path=sql/migration -database "mysql://root:root@tcp(localhost:3306)/orders" -verbose down
