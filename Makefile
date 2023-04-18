include .env

CLIENTIMG := ttvix_ttvix-client
CLIENTVOL := ttvix_ttvix-client-modules
CLIENTLOCAL := ttvix-client
CLIENTCWD := /app
CLIENT := ttvix-client

USER := $(shell /usr/bin/id -u)

up:## Build the app container image (if it doesn't exists) and runs the containers
	docker-compose up

upBuild:## Rebuild the app container image and runs the containers
	docker-compose up --build

down:## Stop and remove the containers that was created by 'make up' command
	docker-compose down

clean:down ## Removes the images from the project to start brand new
	docker image rm  $(CLIENTIMG)
	docker volume rm $(CLIENTVOL)

install:## Runs 'yarn install'
	docker exec -it $(CLIENT) sh -c "(cd $(CLIENTCWD) && rm yarn.lock && yarn install --force)"

sync:## Syncs the external node_modules with the container for better intellisense
	cd $(CLIENTLOCAL) && yarn install && cd ..

build:## Runs 'yarn build'
	docker exec -it $(CLIENT) sh -c "(cd $(CLIENTCWD) && yarn build)"

grant:## Grant permissions to all files (Use it if you have access permissions issues)
	bash -c "sudo chmod -R a+rw . && sudo chown -R $(USER):$(USER) ."

accessClient:## Run an interactive bash session on client container
	docker exec -it $(CLIENT) sh

addClient:## Adds selected dependencies to Client container
	docker exec -it $(CLIENT) sh -c "(cd $(CLIENTCWD) && yarn add $(deps))"