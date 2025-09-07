# Step 1 : Ssh into the App Server 3 :
ssh banner@stapp03

# Step 2 : Copy the file from host to container
docker cp /tmp/nautilus.txt.gpg ubuntu_latest:/opt/nautilus.txt.gpg
