DOCKER = docker
IMAGE = shugaoye/caddy:2.6.2

dev: Dockerfile
	$(DOCKER) build -t $(IMAGE) .

test:
	./run_image.sh $(IMAGE)

buildx:
	$(DOCKER) buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t $(IMAGE) --push .

all: buildx

.PHONY: all
