# Makefile for Laravel Docker Starter Kit

# Variables
PROJECT_NAME=laravel-docker-sample
GIT_REPO=https://github.com/rmi99/$(PROJECT_NAME).git
CONTAINER_PHP=php
COMPOSER_CMD=composer setup

# Default target
.PHONY: all
all: help

# Help target
.PHONY: help
help:
	@echo "Makefile for Laravel Docker Starter Kit"
	@echo
	@echo "Usage:"
	@echo "  make clone            Clone the repository"
	@echo "  make setup            Initial setup"
	@echo "  make up               Start the docker containers"
	@echo "  make down             Stop and remove the docker containers"
	@echo "  make stop             Stop all services"
	@echo "  make restart          Restart service containers"
	@echo "  make exec-php [cmd]   Run a command inside the PHP container"
	@echo "  make artisan [cmd]    Run an Artisan command inside the PHP container"
	@echo "  make pint [cmd]       Run Laravel Pint for code style fixing"
	@echo "  make rector [cmd]     Run Rector for code refactoring"

# Clone the repository
.PHONY: clone
clone:
	git clone $(GIT_REPO)

# Initial setup
.PHONY: setup
setup:
	cd $(PROJECT_NAME) && docker compose up -d --build
	cd $(PROJECT_NAME) && docker compose exec $(CONTAINER_PHP) bash -c "$(COMPOSER_CMD)"

# Start the docker containers
.PHONY: up
up:
	docker compose up -d

# Stop and remove the docker containers, networks
.PHONY: down
down:
	docker compose down

# Stop all services
.PHONY: stop
stop:
	docker compose stop

# Restart service containers
.PHONY: restart
restart:
	docker compose restart

# Run a command inside the PHP container
.PHONY: exec-php
exec-php:
	docker compose exec $(CONTAINER_PHP) bash -c "$(cmd)"

# Run an Artisan command inside the PHP container
.PHONY: artisan
artisan:
	docker compose exec $(CONTAINER_PHP) bash -c "php artisan $(cmd)"

# Run Laravel Pint for code style fixing
.PHONY: pint
pint:
	docker compose exec $(CONTAINER_PHP) bash -c "vendor/bin/pint $(cmd)"

# Run Rector for code refactoring
.PHONY: rector
rector:
	docker compose exec $(CONTAINER_PHP) bash -c "vendor/bin/rector $(cmd)"
