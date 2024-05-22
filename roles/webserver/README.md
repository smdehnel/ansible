### webserver/README.md

```markdown
# Webserver Role

## Description
The `webserver` role is used to set up and configure web servers. This includes installing web server packages, deploying website content, and configuring web server settings.

## Tasks
- Install web server packages (e.g., Apache, Nginx)
- Deploy website content
- Configure web server settings

## Variables
- `web_server_port`: Port on which the web server will listen
- `website_content`: Path to the website content to be deployed

## Usage
Include this role in your playbook to set up web servers:
```yaml
- hosts: webservers
  roles:
    - webserver
