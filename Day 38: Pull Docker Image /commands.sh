# Step 0 : Ssh into the App Server 3  :
ssh banner@stapp03

# Step 1: Pull the busybox:musl image
docker pull busybox:musl

# Step 2: Re-tag the image as busybox:media
docker tag busybox:musl busybox:media

# Step 3: Verify the new tag
docker images | grep busybox
