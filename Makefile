docker_prune:
	docker system prune

#test
docker_build:
	docker build . -f Dockerfile.production -t genusor/nodos:latest
docker_push:
	docker push genusor/nodos
docker_test:
	docker run -e NODOS_HOST=0.0.0.0 -p 8080:8080 genusor/nodos:latest npx jest 

#prod
compose_build_prod:
	docker-compose -f docker-compose.yml build
compose_up_prod:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

#dev
compose_build:
	docker-compose build
compose_up:
	docker-compose up 
compose_down:
	docker-compose down