# Laboratory 08 – Cloud Security Engineer


## 1. Mission Overview

This laboratory activity focuses on securing a Linux server using UFW (Uncomplicated Firewall). I deployed an Nginx web application using Docker, tested the application using `curl`, and configured firewall rules to protect the server from unauthorized incoming connections.

The activity demonstrates the importance of reducing the attack surface, applying the Principle of Least Privilege, and allowing only the network traffic required by the application.

## 2. Objectives

- Understand the Principle of Least Privilege (PoLP).
- Explain the concept of an attack surface.
- Deploy an Nginx web server using Docker.
- Test web application availability using `curl`.
- Configure UFW with a Default Deny incoming policy.
- Allow SSH traffic on port 22 and web traffic on TCP port 8080.
- Verify firewall rules and document security best practices.
- Maintain a cloud computing portfolio using GitHub and Markdown.

## 3. Commands Executed

### A. Deploy the Nginx Web Application

```bash
docker run -d --name secure-web-app -p 8080:80 nginx
docker ps
curl http://localhost:8080
```

### B. Configure the Firewall

```bash
sudo ufw allow ssh
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable
sudo ufw status verbose
```

### C. Allow Web Traffic

```bash
sudo ufw allow 8080/tcp
sudo ufw status numbered
curl http://localhost:8080
```

### D. Verify Firewall Rules

The firewall status showed that UFW was active and that incoming connections were denied by default. SSH on port 22 and TCP port 8080 were explicitly allowed for IPv4 and IPv6.

The `curl` command successfully returned the default Nginx welcome page, confirming that the web application responded to the local request.

## 4. Skills Learned

- Deploying and managing Docker containers.
- Testing web servers using the `curl` command.
- Configuring UFW on Ubuntu.
- Applying a Default Deny firewall policy.
- Managing network access through specific ports.
- Understanding the importance of allowing SSH before enabling a firewall.
- Identifying ways to reduce a server's attack surface.
- Creating technical documentation using Markdown.
- Organizing and maintaining a GitHub portfolio.
