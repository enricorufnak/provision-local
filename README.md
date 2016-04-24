Provision Local
============

A simple ansible script to set up my machine just the way I like it based on Ubuntu

How To Install With One Command
-------------------------------

| Distro | Command |
| --- | --- |
| Ubuntu 16.04 | `wget -qO- https://github.com/enricorufnak/provision-local/raw/master/run.sh | bash` |
| Ubuntu 15.10 | `wget -qO- https://github.com/enricorufnak/provision-local/raw/ubuntu-15.10/run.sh | bash` |


How To Install The Old Fashioned Way
------------------------------------

1. Install Ubuntu packages
  ```
  sudo apt-get install git aptitude ansible
  ```
2. Setup Git
  * [Set Up Git](https://help.github.com/articles/set-up-git)
  * [Generating an SSH key](https://help.github.com/articles/generating-ssh-keys)
3.  Checkout this repo and cd into the directory
  ```
  git clone https://github.com/enricorufnak/provision-local.git <dir>
  && cd <dir>
  ```
4.  Provision your local machine
  ```
  ansible-playbook -i hosts setup.yml --ask-sudo-pass
  ```
