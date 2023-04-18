# Table Tour Vix

## Introduction

This is the repository for the Table Tour Vix platform.

## Initial Setup

Simply run the command `make up` to spin it up. Once the containers finish up building the admin panel will be available at `localhost:3001` and the client at `localhost:3000`.

## Dependencies

- Svelte 3.52.0
- TailwindCSS 3.3.1
- TypeScript 4.6.4
- Vite 3.2.3

## Important Commands

| Command | Description |
| --- | --- |
| make up | Spins up the necessary containers |
| make down | Turn down containers and remove everything created with them |
| make upBuild | Spins up the necessary containers forcing their docker images to rebuild |
| make grant | Grants admin access to all files in case you run into privilege problems |
| make accessClient | Access client container |
| make addClient | Adds Node dependencies to client container, must be run like `make deps="vite react" addClient` |
| make clean | Removes the images from the project to start brand new |
| make install | Install Node packages inside the containers |
| make sync | Runs `yarn install` locally (you must have yarn installed globally) to synchronize the external folder with the node_modules from the containers. Use this when you running into intellisense problems. Consider running `make install` before if this command alone doesn't solve the problem |
| make build | Run `yarn build` inside the containers |

## Important Links (DEV)

- `http://localhost:3000`: Client WebApp port.