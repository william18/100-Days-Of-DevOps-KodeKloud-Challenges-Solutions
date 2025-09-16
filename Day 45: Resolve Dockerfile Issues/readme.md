
## Problem Description
The original Dockerfile had several syntax errors that prevented successful image building:

1. Used `IMAGE` instead of `FROM` for base image declaration
2. Used `ADD` instead of `RUN` for executing sed commands
3. Missing full paths in sed commands for Apache configuration files
4. Incorrect source paths in COPY commands
5. Missing newline at end of file

## Original Dockerfile (Broken)
```dockerfile
IMAGE httpd:2.4.43
ADD sed -i "s/Listen 80/Listen 8080/g" /usr/local/apache2/conf/httpd.conf
ADD sed -i '/LoadModule\ ssl_module modules\/mod_ssl.so/s/^#//g' conf/httpd.conf
ADD sed -i '/LoadModule\ socache_shmcb_module modules\/mod_socache_shmcb.so/s/^#//g' conf/httpd.conf
ADD sed -i '/Include\ conf\/extra\/httpd-ssl.conf/s/^#//g' conf/httpd.conf
COPY certs/server.crt /usr/local/apache2/conf/server.crt
COPY certs/server.key /usr/local/apache2/conf/server.key
COPY html/index.html /usr/local/apache2/htdocs/
```

## Fixed Dockerfile
```dockerfile
FROM httpd:2.4.43
RUN sed -i "s/Listen 80/Listen 8080/g" /usr/local/apache2/conf/httpd.conf
RUN sed -i '/LoadModule\ ssl_module modules\/mod_ssl.so/s/^#//g' /usr/local/apache2/conf/httpd.conf
RUN sed -i '/LoadModule\ socache_shmcb_module modules\/mod_socache_shmcb.so/s/^#//g' /usr/local/apache2/conf/httpd.conf
RUN sed -i '/Include\ conf\/extra\/httpd-ssl.conf/s/^#//g' /usr/local/apache2/conf/httpd.conf
COPY certs/server.crt /usr/local/apache2/conf/server.crt
COPY certs/server.key /usr/local/apache2/conf/server.key
COPY html/index.html /usr/local/apache2/htdocs/
```

## Key Changes Made

### 1. Base Image Declaration
- **Before:** `IMAGE httpd:2.4.43`
- **After:** `FROM httpd:2.4.43`
- **Reason:** `FROM` is the correct instruction to specify base image

### 2. Command Execution
- **Before:** `ADD sed -i ...`
- **After:** `RUN sed -i ...`
- **Reason:** `ADD` is for copying files, `RUN` is for executing commands

### 3. Configuration File Paths
- **Before:** `conf/httpd.conf`
- **After:** `/usr/local/apache2/conf/httpd.conf`
- **Reason:** Need full absolute paths for sed commands to work correctly

## Testing the Fix

### Build the Image
```bash
cd /opt/docker/
docker build -t nautilus-web-app .
```

### Run and Test Container
```bash

# Start container
docker run -d -p 8080:8080 --name test-container nautilus-web-app

# Test web server
curl http://localhost:8080

# Check container status
docker ps


