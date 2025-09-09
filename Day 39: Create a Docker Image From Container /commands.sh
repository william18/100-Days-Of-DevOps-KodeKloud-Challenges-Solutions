# Step 1: Ssh into App Server 3 :
ssh banner@stapp03

# Step 2: Commit the running container to a new image
docker commit ubuntu_latest official:xfusion

# Step 3: Verify the new image exists
docker images | grep official
