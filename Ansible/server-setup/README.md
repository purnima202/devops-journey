# Ansible Server Setup

This project demonstrates how to use **Ansible** to automate application server configuration and deployment.

## 📌 Project Overview

The goal of this project is to automate the setup and configuration of an application server using an Ansible playbook and role-based structure.

Instead of manually configuring the server, Ansible is used to manage configuration consistently and repeatably.

## 🛠️ Technologies Used

* Ansible
* YAML
* Jinja2
* Linux
* SSH

## 📁 Project Structure

```text
server-setup/
├── inventory
├── site.yaml
└── roles/
    └── app/
        ├── handlers/
        │   └── main.yaml
        ├── tasks/
        │   └── main.yaml
        ├── templates/
        │   └── app.conf.j2
        └── vars/
            └── main.yaml
```

## 📄 Files and Directories

### `inventory`

Contains the target server information that Ansible uses to connect to the managed host.

### `site.yaml`

Main Ansible playbook that applies the application role to the target server.

### `roles/app/tasks/main.yaml`

Contains the main tasks required to configure the application server.

### `roles/app/handlers/main.yaml`

Contains handlers that are triggered when a task reports a change, such as restarting or reloading a service.

### `roles/app/templates/app.conf.j2`

Jinja2 template used to generate the application configuration dynamically.

### `roles/app/vars/main.yaml`

Contains variables used by the application role.

## 🚀 How to Run

### 1. Verify Ansible Installation

```bash
ansible --version
```

### 2. Test Connectivity

From the `server-setup` directory:

```bash
ansible all -i inventory -m ping
```

A successful connection should return:

```text
SUCCESS
```

### 3. Run the Playbook

```bash
ansible-playbook -i inventory site.yaml
```

Ansible will connect to the target server and execute the configured tasks.

## 🔐 SSH Authentication

Ansible uses SSH to connect to the managed server.

Make sure the SSH key is configured and that you can connect to the target server manually:

```bash
ssh user@server-ip
```

## 🎯 What I Practiced

* Ansible inventory management
* Writing Ansible playbooks
* Ansible roles
* Tasks and handlers
* Variables
* Jinja2 templates
* Remote server configuration
* SSH-based server automation
* Infrastructure configuration using YAML

## 💡 Key Learning

This project demonstrates the basic principles of **configuration management and infrastructure automation** using Ansible.

Using roles makes the project easier to organize, maintain, and reuse as the infrastructure grows.

## ⚠️ Security

Do not commit the following to GitHub:

* SSH private keys
* Passwords
* API keys
* AWS credentials
* Other secrets

Use variables or Ansible Vault for sensitive information when required.
