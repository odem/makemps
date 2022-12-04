
include .env

default:all
.PHONY: prepare build-conf build-container up down restart exec

all: build-container up

prepare:
	mkdir -p $(DATA_HOME)
	
build-container: prepare
	sudo docker-compose build

up: build-container
	sudo docker-compose up -d

down:
	sudo docker-compose down

restart: build
	sudo docker-compose restart
