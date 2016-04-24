sudo apt-get install aptitude git ansible

cd ~
mkdir -p setup
cd setup
git clone https://github.com/enricorufnak/provision-local.git
cd provision-local

echo -e "Edit tasks files to change installation process and press [ENTER] to proceed ..." && read USELESS_VAR

ansible-playbook -i hosts setup.yml --ask-sudo-pass

source ~/.bashrc

exit 0
