
# Laboratory Activity 7: The Cloud Operations Engineer

**Course:** CCM101 – Cloud Computing  
**College:** College of Information Technology  
**Mission:** The Cloud Operations Engineer  
**Environment:** KillerCoda Ubuntu Playground and Docker

## Mission Overview

In this laboratory activity, I acted as a Cloud Operations Engineer at CloudNova Technologies. The main task was to monitor the health of a Linux server, deploy an Nginx web server using Docker, simulate website traffic, and examine application logs and container resource usage. These activities helped me understand how monitoring and observability can be used to check application performance and identify errors.

##  Objectives

- Monitor the server's RAM usage and disk storage capacity using Linux commands.
- Observe CPU usage and running processes using the `top` command.
- Deploy an Nginx web server container using Docker.
- Simulate website visits using the `curl` command.
- Generate and identify an HTTP 404 error.
- Retrieve application logs using Docker.
- Monitor container CPU, memory, and network usage using `docker stats`.
- Document monitoring results and evidence using Markdown.
- Organize laboratory files for my GitHub Cloud Computing Portfolio.

##  Monitoring Commands Executed

| Command | Purpose |
|---|---|
| `free -h` | Checks total, used, and available RAM. |
| `df -h /` | Checks root filesystem storage capacity and available disk space. |
| `top` | Displays running processes, CPU activity, and memory usage in real time. |
| `docker run -d --name clientwebsite -p 8080:80 nginx` | Deploys an Nginx container in the background and maps port 8080 to port 80. |
| `docker ps` | Lists running containers. |
| `curl http://localhost:8080` | Sends an HTTP request to the Nginx website. |
| `curl http://localhost:8080/hidden-admin-page` | Simulates a request to a nonexistent page to generate an HTTP 404 response. |
| `docker logs clientwebsite` | Retrieves the container's application logs. |
| `docker stats` | Displays real-time container CPU, memory, network I/O, and other resource metrics. |

##  Skills Learned

- **Linux System Monitoring:** Learned how to check RAM, disk capacity, CPU activity, and running processes using Linux commands.
- **Docker Deployment:** Learned how to deploy and verify an Nginx web server container.
- **HTTP Traffic Simulation:** Learned how to use `curl` to send requests and observe successful and failed HTTP responses.
- **Application Log Analysis:** Learned how to inspect container logs and identify HTTP 404 errors.
- **Container Resource Monitoring:** Learned how to use `docker stats` to monitor CPU, memory, and network activity.
- **Technical Documentation:** Practiced documenting system information, monitoring results, and screenshots using Markdown.
- **Cloud Operations:** Understood the importance of monitoring infrastructure before periods of increased website traffic.

