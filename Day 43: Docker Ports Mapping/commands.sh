# Step a: Pull nginx:alpine image
docker pull nginx:alpine

# Step b & c: Run container named cluster with port mapping
docker run -d --name cluster -p 8082:80 nginx:alpine
