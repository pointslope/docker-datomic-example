TAG?=$(shell ./datomic-version)
DOCKER_IMAGE=pointslope/docker-datomic-example:$(TAG)

.PHONY: all clean start info

all: Dockerfile
	docker build -t $(DOCKER_IMAGE) .

start:
	docker run --rm -p 4334:4334 -p 4335:4335 -p 4336:4336 $(DOCKER_IMAGE)

clean:
	-docker rmi $(DOCKER_IMAGE)

info:
	@echo "Docker image: $(DOCKER_IMAGE)"
