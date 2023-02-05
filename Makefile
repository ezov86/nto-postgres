.PHONY: run clean

run:
	docker compose up -d

clean:
	rm -rf ./volumes/

chown:
	chown -R 5050:5050 ./volumes/pgadmin/