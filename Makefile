run:
	chmod +x bin/start_server.sh
	sh bin/start_server.sh

dep_up:
	docker-compose up -d

dep_down:
	docker-compose down

migration_up:
	migrate -path=sql/migration -database "mysql://root:root@tcp(localhost:3306)/orders" -verbose up

migration_down:
	migrate -path=sql/migration -database "mysql://root:root@tcp(localhost:3306)/orders" -verbose down

open_rabbit_mac:
	open http://localhost:15672

open_rabbit_linux:
	xdg-open http://localhost:15672

protoc:
	protoc --go_out=. --go-grpc_out=. internal/infra/grpc/protofiles/order.proto

evans:
	evans -r repl

graphql_generate:
	go run github.com/99designs/gqlgen generate