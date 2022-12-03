include /etc/os-release

default: all
.PHONY: default all prepare

DOCKER_DIR :=/mnt/wsl/shared-docker

all: prepare install

prepare:
	sudo apt update
	curl -fsSL https://download.docker.com/linux/${ID}/gpg | sudo apt-key add -
	echo "deb [arch=amd64] https://download.docker.com/linux/${ID} ${VERSION_CODENAME} stable" | sudo tee /etc/apt/sources.list.d/docker.list
	sudo apt update

install:
	sudo apt install docker-ce docker-ce-cli containerd.io
	sudo usermod -aG docker $(USER)
	#mkdir -pm o=,ug=rwx "$(DOCKER_DIR)"
	#sudo chgrp docker "$(DOCKER_DIR)"
	#-mkdir -pm o=,ug=rwx "$(DOCKER_DIR)"
	#sudo chgrp docker "$(DOCKER_DIR)"
	echo '# Start Docker daemon automatically when logging in if not running.' >> ~/.bashrc
	echo 'RUNNING=`ps aux | grep dockerd | grep -v grep`' >> ~/.bashrc
	echo 'if [ -z "$$RUNNING" ]; then' >> ~/.bashrc
	echo '    sudo dockerd > /dev/null 2>&1 &' >> ~/.bashrc
	echo '    disown' >> ~/.bashrc
	echo 'fi' >> ~/.bashrc

