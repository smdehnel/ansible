### ec/README.md

```markdown
# EC Role

## Description
The `ec` role is used for configuring the EC Equity Chain testing. This includes rendering configuration templates and applying settings specific to EC servers.

## Tasks
- Render IPsec configuration templates
- Render host configuration templates

## Variables
- `company`: Name of the company
- `dummy_ip`: Dummy IP address
- `public_ip`: Public IP address
- `front_ip`: Front IP address
- `psk`: Pre-shared key
- `hub_gre_ip`: GRE IP for the hub
- `rdr_gre_ip`: GRE IP for the redirector

## Usage
Include this role in your playbook to configure EC servers:
```yaml
- hosts: ec_servers
  roles:
    - ec
