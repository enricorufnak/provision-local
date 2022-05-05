Provision Local
============

A simple ansible script to set up my machine just the way I like it based on Ubuntu or with PowerShell-Scripts on Windows

How To Install With One Command On Ubuntu
-------------------------------

| Ubuntu | Command |
| --- | --- |
| 16.04 | `wget -qO- https://github.com/enricorufnak/provision-local/raw/ubuntu-16.04/run.sh | bash` |
| 15.10 | `wget -qO- https://github.com/enricorufnak/provision-local/raw/ubuntu-15.10/run.sh | bash` |


How To Install With One Command On Windows
-------------------------------
Install git and clone repo with following command: 
```

PS> git clone https://github.com/enricorufnak/provision-local.git
```

Uncomment at windows/bootstrap.ps1 each script and run following command:

```
PS> windows/bootstrap.ps1
```