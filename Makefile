.PHONY: build run clean chown stop down

build:
	docker build . -t nto-postgres

run:
	mkdir -p volumes/data/ volumes/pgadmin/
	docker compose up -d

clean:
	rm -rf ./volumes/

chown:
	chown -R 5050:5050 ./volumes/pgadmin/

stop:
	docker stop nto-pgadmin nto-postgres

down:
	docker compose down