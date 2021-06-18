server:
	npx nodos server

docker_prune:
	docker system prune

compose_build:
	docker-compose build

compose_up:
	docker-compose up --abort-on-container-exit

docker_test:
	docker-compose -f docker-compose.yml build 
	docker-compose -f docker-compose.yml up --abort-on-container-exit

docker_build:
	docker build . -f Dockerfile.production -t genusor/nodos:latest

docker_push:
	docker push genusor/nodos

docker_test_build:
	docker run -e NODOS_HOST=0.0.0.0 -p 8080:8080 genusor/nodos:latest 
