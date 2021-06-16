server:
	npx nodos server

test:
	npm -s test

prune:
	docker system prune

build:
	docker-compose build

up:
	docker-compose up --abort-on-container-exit
