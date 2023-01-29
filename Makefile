.PHONY: run clean

run:
	docker compose up -d

clean:
	rm -rf ./volumes/
