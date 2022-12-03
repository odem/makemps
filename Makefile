.PHONY: all prepare

APT_PREPARE := git vim net-tools

default: all

all: prepare

prepare:
	sudo apt update -y && sudo apt upgrade -y && sudo apt install $(APT_PREPARE) -y





