Provision Local
============

A simple ansible script to set up my machine just the way I like it currently base on Ubuntu 15.10.

How To Install With One Command
-------------------------------

```bash
wget -qO- https://github.com/enricorufnak/provision-local/raw/master/run.sh | bash
```


How To Install The Old Fashioned Way
------------------------------------

1. Install Ubuntu packages
  ```bash
  sudo apt-get install git aptitude ansible
  ```
2. Setup Git
  * [setup git](https://help.github.com/articles/set-up-git)
  * [setup ssh keys](https://help.github.com/articles/generating-ssh-keys)
3.  Checkout this repo and cd into the directory
  ```bash
  git clone https://github.com/enricorufnak/provision-local.git <dir>
  cd <dir>
  ```
4.  Provision your local machine
  ```bash
  ansible-playbook -i hosts setup.yml --ask-sudo-pass
  ```
ansible-playbook -i hosts setup.yml --ask-sudo-pass
