# Use Ubuntu 24.04 as base image
FROM ubuntu:24.04

# Avoid interactive prompts during install
ENV DEBIAN_FRONTEND=noninteractive

# Install apache2
RUN apt-get update && apt-get install -y apache2 && apt-get clean

# Change Apache to listen on port 8085 instead of 80
RUN sed -i 's/80/8085/g' /etc/apache2/ports.conf && \
    sed -i 's/*:80/*:8085/g' /etc/apache2/sites-available/000-default.conf

# Expose port 8085
EXPOSE 8085

# Start apache2 in foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
