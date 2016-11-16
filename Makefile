.PHONY: migrate test artisan doctrine-migrate seed-dev tinker

migrate:
	docker-compose exec workspace php artisan migrate

doctrine-migrate:
	docker-compose exec workspace php artisan doctrine:schema:create

seed-dev:
	docker-compose exec workspace php artisan db:seed

ART=""
artisan:
	docker-compose exec workspace php artisan $(ART)

tinker:
	docker-compose exec workspace php artisan tinker

test:
	docker-compose exec workspace vendor/bin/phpunit
