#when you run ansible playbook, you will see which host has problems
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i inventory.ini playbook.yaml
## ssh to that host and run those commands ( in my case its stapp01)
#in my case 127.0.0.1:5003  → used by sendmail
ssh tony@stapp01
sudo systemctl stop sendmail
sudo systemctl disable sendmail
sudo systemctl start httpd
sudo systemctl status httpd
