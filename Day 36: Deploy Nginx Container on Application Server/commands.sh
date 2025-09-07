# Step 0: Ssh into the App Server 1 :
ssh tony@stapp01

# Step 1: Pull the nginx image with the alpine tag
docker pull nginx:alpine

# Step 2: Run the nginx container with name nginx_1
docker run -d --name nginx_1 nginx:alpine

# Step 3: Verify the container is running
docker ps
