# u should ssh once at the stapp02
# run all those commands on the jump host machine
sudo -i
sudo dnf install epel-release -y
sudo dnf install ansible -y
vi inventory.ini #paste the content of  inventory.ini file
vi playbook.yaml #paste the content of  playbook.yaml file
ansible-playbook -i inventory.ini playbook.yaml
