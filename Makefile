IMAGE_NAME := akkadeeemikk/gemma
CONTAINER_NAME := gemma
DOCKER_TAG := latest

build:
	docker build -f docker/Dockerfile -t $(IMAGE_NAME) .

run_docker:
	docker run -it -d --rm \
		--ipc=host \
  		--network=host \
  		--gpus=all \
  		-v ./:/detector/ \
  		--name $(CONTAINER_NAME) \
  		$(IMAGE_NAME):$(DOCKER_TAG) make jupyter

stop:
	docker stop $(CONTAINER_NAME)

compose_up:
	docker compose up -d

compose_stop:
	docker compose stop

jupyter:
	jupyter lab --allow-root --ip=0.0.0.0 --port=8888 --no-browser --NotebookApp.token=${CONTAINER_NAME}


git_download:
	for n in $(shell seq 0 25); do \
	    for m in $(shell seq 60 150); do \
	    	if git lfs ls-files | grep "layer_$${n}/width_16k/average_l0_$${m}/"; then \
				echo "Fetching layer_$${n}/width_16k/average_l0_$${m}/"; \
				git lfs pull --include="layer_$${n}/width_16k/average_l0_$${m}/"; \
				break; \
			fi; \
    	done; \
	done
