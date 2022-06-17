# Infrastructure-as-Code using Ansible

## Overview

This repository contains Ansible infrastructure that is used to configure my own personal and professional systems. Certain user-specific files have been omitted for privacy and security, e.g. `hosts`. You will need to generate these files specific to your needs. The layout is such that each system has a specific playbook in the form of `$host.yml` in the root directory. `site.yml` then imports each host-specific playbook.

Once you have defined your `hosts` file, you can execute the playbook by running:

```
$ export ANSIBLE_CONFIG=/path/to/this/repo
$ ansible-playbook -D -K $(dirname ${ANSIBLE_CONFIG})/site.yml
```


