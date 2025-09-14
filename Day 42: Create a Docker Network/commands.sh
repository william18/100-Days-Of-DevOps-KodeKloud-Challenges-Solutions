#Ssh into the App Server :
ssh steve@stapp02
sudo -i

#Run this command :
docker network create -d macvlan \
  --subnet=172.28.0.0/24 \
  --ip-range=172.28.0.0/24 \
  beta

#verify :
docker network ls
docker network inspect beta
