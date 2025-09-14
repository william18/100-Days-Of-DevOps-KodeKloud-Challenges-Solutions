ssh banner@stapp03
sudo -i
# Install and configure Apache2 inside kkloud container
docker exec -it kkloud bash -c '
  apt-get update && \
  apt-get install -y apache2 && \
  sed -i "s/Listen 80/Listen 6300/" /etc/apache2/ports.conf && \
  sed -i "s/<VirtualHost \*:80>/<VirtualHost *:6300>/" /etc/apache2/sites-available/000-default.conf && \
  service apache2 restart && \
  service apache2 status
'
