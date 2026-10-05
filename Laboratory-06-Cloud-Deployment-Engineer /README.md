
# Laboratory 06 - The Cloud Deployment Engineer

## Mission Overview

In this laboratory activity, I learned how to deploy a multi-container private cloud storage application using Docker Compose.

The application uses Nextcloud as the web application and MariaDB as the database. Instead of deploying the containers separately, I used a `docker-compose.yml` file to define and deploy both containers together.

This activity introduced me to Infrastructure as Code (IaC), where infrastructure can be defined using a configuration file.

## Objectives

The objectives of this laboratory activity are:

- Explain the concept of a multi-tier application architecture.
- Understand the purpose and structure of a `docker-compose.yml` file.
- Use the Linux `nano` text editor to create configuration files.
- Deploy a multi-container application using Docker Compose.
- Connect Nextcloud with a MariaDB database.
- Document deployment procedures using Markdown.
- Understand the basic concept of Infrastructure as Code (IaC).

## Commands Executed

### Create the Project Directory

```bash
mkdir nextcloud-deployment
cd nextcloud-deployment
```

### Create the Docker Compose File

```bash
nano docker-compose.yml
```

### Deploy the Multi-Container Application

```bash
docker-compose up -d
```

### Check the Running Containers

```bash
docker-compose ps
```

### Stop and Remove the Containers

```bash
docker-compose down
```

## Skills Learned

Through this laboratory activity, I learned how to:

- Create a Docker Compose YAML file.
- Use the Linux `nano` text editor.
- Define multiple services in Docker Compose.
- Deploy Nextcloud and MariaDB together.
- Connect containers using Docker Compose service names.
- Use environment variables to configure containers.
- Check the status of Docker containers.
- Access a web application through a specified port.
- Stop and remove a Docker Compose deployment.
- Understand the basic concept of Infrastructure as Code.
