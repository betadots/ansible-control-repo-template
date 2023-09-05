# Ansible Control Repository Template
[![⚒️ CI](https://github.com/betadots/ansible-control-repo-template/actions/workflows/ci.yaml/badge.svg)](https://github.com/betadots/ansible-control-repo-template/actions/workflows/ci.yaml)
[![Created by betadots GmbH](https://img.shields.io/badge/Created_by-betadots_GmbH-blue)](https://www.betadots.de)

# Usage

Copy this repository into your own Git Server.
Then clone it from there and adapt your changes.

# What's in this template

Here is a visual representation of the structure of this repository:

```bash
inventories/              #
   production/            #
      hosts               # inventory file for production servers
      group_vars/         # here we assign variables to particular groups
      host_vars/          # here we assign variables to particular systems
   staging/               #
      hosts               # inventory file for staging environment
      group_vars/         # here we assign variables to particular groups
      host_vars/          # here we assign variables to particular systems
                          #
library/                  # if any custom modules, put them here (optional)
module_utils/             # if any custom module_utils to support modules, put them here (optional)
filter_plugins/           # if any custom filter plugins, put them here (optional)
                          #
site.yml                  # master playbook
                          #
playbooks/                # put all playbooks here
    foo.yml               # foo demo playbook
                          #
collections/              # local collections
    requirements.yml      # <-- required remote collections

roles/                    #
    common/               # this hierarchy represents a "role"
        tasks/            #
            main.yml      #  <-- tasks file can include smaller files if warranted
        handlers/         #
            main.yml      #  <-- handlers file
        templates/        #  <-- files for use with the template resource
        files/            #  <-- files for use with the copy resource
        vars/             #
            main.yml      #  <-- variables associated with this role
        defaults/         #
            main.yml      #  <-- default lower priority variables for this role
        meta/             #
            main.yml      #  <-- role dependencies
        library/          # roles can also include custom modules
        module_utils/     # roles can also include custom module_utils
        lookup_plugins/   # or other types of plugins, like lookup in this case
                          #
    requirements.yml      # required remote roles
```
