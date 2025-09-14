#Ssh into the app server :
ssh tony@stapp01
sudo -i

#Put the content of the Dockerfile
vi /opt/docker/Dockerfile

#Build the image :
docker build -t custom-apache:latest /opt/docker

#Run the image :
docker run -d -p 8085:8085 custom-apache:latest
