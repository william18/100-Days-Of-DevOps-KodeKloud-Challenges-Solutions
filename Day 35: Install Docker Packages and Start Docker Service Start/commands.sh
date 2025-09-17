# Docker CE and Docker Compose Installation on CentOS (App Server 1)

#Follow these steps to install Docker CE, Docker Compose, and start the Docker service:
#  0⃣ Ssh into App Server 1
ssh tony@stapp01

# 1️⃣ Update the system
sudo yum update -y

# 2️⃣ Install required packages
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# 3️⃣ Add Docker repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# 4️⃣ Install Docker CE
sudo yum install -y docker-ce docker-ce-cli containerd.io

# 5️⃣ Install Docker Compose

#DOCKER_COMPOSE_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep tag_name | cut -d '"' -f 4)
#sudo curl -L "https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo dnf install -y libxcrypt-compat

sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

# 6️⃣ Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker

# 7️⃣ Verify installation
docker --version
docker-compose --version
sudo docker run hello-world
