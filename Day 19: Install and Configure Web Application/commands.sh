sudo dnf install epel-release -y
sudo dnf install ansible -y
vi inventory.ini
vi playbook.yaml
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i inventory.ini playbook.yaml
