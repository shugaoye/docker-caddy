DOCKER = docker
IMAGE = shugaoye/caddy:2.6.2

dev: Dockerfile
	$(DOCKER) build -t $(IMAGE) .

test:
	./run_image.sh $(IMAGE)

all: dev

.PHONY: all
