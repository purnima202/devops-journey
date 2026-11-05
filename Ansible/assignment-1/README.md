# Assignment 1 – Ansible Inventory & Variables

## Objective

Automate the deployment of a Node.js application on an AWS EC2 Ubuntu instance using Ansible.

## Technologies

- Ansible
- AWS EC2
- Ubuntu
- Node.js
- Git

## Project Structure

```text
assignment-1/
├── inventory.ini
├── playbook.yml
└── README.md
```

## Implementation

1. Configure the EC2 instance in `inventory.ini`.
2. Define application configuration values as Ansible variables.
3. Install system dependencies and Node.js.
4. Clone the Node.js application repository.
5. Install application dependencies using npm.
6. Configure the application as a systemd service.
7. Start and enable the application.

## Configuration Variables

| Variable | Purpose |
|---|---|
| repo_url | GitHub repository URL |
| app_dir | Application directory |
| nodejs_version | Node.js version |
| app_user | Linux application user |
| app_port | Application port |

## Execution

Check playbook syntax:

```bash
ansible-playbook --syntax-check -i inventory.ini playbook.yml
```

Deploy the application:

```bash
ansible-playbook -i inventory.ini playbook.yml
```

## Expected Result

The Node.js application is deployed and managed as a systemd service on the EC2 instance.

Access the application using:

```text
http://EC2_PUBLIC_IP:3000
```

## Learning Outcomes

- Ansible inventory configuration
- Variables in playbooks
- Package installation automation
- Git repository cloning
- Node.js application deployment
- Linux systemd service management