.PHONY: up down logs shell-api test

up:
	docker compose up -d

down:
	docker compose down

logs:
	docker compose logs -f

shell-api:
	docker compose exec api /bin/sh

test:
	docker compose ps
