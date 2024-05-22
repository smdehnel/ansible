### vpn/README.md

```markdown
# VPN Role

## Description
The `vpn` role is responsible for setting up and configuring VPN gateways. This includes IPsec, GRE tunneling, and related networking tasks.

## Tasks
- Install VPN packages
- Configure IPsec settings
- Set up GRE tunnels
- Configure NAT and firewall rules

## Variables
- `vpn_gateways`: List of VPN gateway configurations
- `ipsec_config`: IPsec configuration details
- `gre_config`: GRE tunnel configuration details

## Usage
Include this role in your playbook to set up VPN gateways:
```yaml
- hosts: vpn_gateways
  roles:
    - vpn
