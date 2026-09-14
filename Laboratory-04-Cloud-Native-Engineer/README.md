# Laboratory 04 – The Cloud-Native Engineer

## Mission Overview

In this laboratory activity, I explored the fundamentals of cloud-native computing and containerization. I learned how containers differ from traditional Virtual Machines (VMs) and why containers are useful for modern cloud applications. Using the KillerCoda Playground, I accessed a Docker-enabled Linux environment, verified Docker, downloaded the official Nginx image, and deployed an Nginx web server in a container. I also practiced managing the container lifecycle by listing, stopping, verifying, and removing the container. All technical procedures and results were documented using Markdown and supported with screenshots.

## Objectives

At the end of this laboratory activity, I was able to:

* Differentiate between Virtual Machines and Containers.
* Access a Docker-enabled cloud environment using KillerCoda.
* Verify that Docker is installed and running.
* Execute fundamental Docker CLI commands.
* Pull and run an Nginx container.
* Map a host port to a container port.
* Test a containerized web server using `curl`.
* Manage the lifecycle of a Docker container.
* Document container operations using Markdown.
* Organize and update my GitHub Cloud Computing Portfolio.

## Docker Commands Executed

### Checkpoint 3 – Enter the Docker Playground

#### Check Docker Version

```bash
docker --version
```

#### Check Docker Status

```bash
docker info
```

---

### Checkpoint 4 – Deploy Your First Container

#### Pull the Nginx Image

```bash
docker pull nginx
```

#### Run the Nginx Container

```bash
docker run -d -p 8080:80 --name nginx-server nginx
```

#### Test the Nginx Web Server

```bash
curl http://localhost:8080
```

---

### Checkpoint 5 – The Container Lifecycle

#### List Running Containers

```bash
docker ps
```

#### Stop the Container

```bash
docker stop nginx-server
```

#### Verify That the Container Is Stopped

```bash
docker ps
```

#### Remove the Container

```bash
docker rm nginx-server
```

## Skills Learned

Through this laboratory activity, I developed practical skills in Docker and cloud-native technologies. I learned how to use basic Docker CLI commands to check the Docker environment, download images, create and run containers, and manage container lifecycles. I also learned how port mapping allows applications running inside containers to be accessed from the host system. In addition, I improved my Linux terminal skills, Markdown documentation skills, troubleshooting abilities, and GitHub portfolio organization.

## Challenges Encountered

One of the challenges I encountered was becoming familiar with Docker commands and understanding how containers operate compared to Virtual Machines. I also needed to understand the purpose of port mapping when accessing the Nginx web server through `localhost:8080`. Another challenge was carefully checking the container status before stopping and removing it. Following the commands step by step and observing the terminal output helped me understand the Docker workflow and complete the mission deployment.
