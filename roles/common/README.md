# Common Role

## Description
The `common` role contains tasks that are commonly needed across multiple servers. These tasks include basic setup, configuration, and utilities that are essential for the proper functioning of servers.

## Tasks
- Ensure necessary packages are installed
- Configure SSH keys
- Set up system users and groups
- Configure system-wide settings

## Variables
- `common_packages`: List of common packages to install
- `ssh_keys`: SSH keys to add to authorized_keys

## Usage
Include this role in your playbook to apply common configurations:
```yaml
- hosts: all
  roles:
    - common
