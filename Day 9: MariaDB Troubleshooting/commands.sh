ssh thor@jump_host
sudo yum install -y mariadb-server
sudo systemctl enable mariadb
sudo systemctl start mariadb
