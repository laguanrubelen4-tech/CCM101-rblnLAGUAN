
# Reflection



In this laboratory activity, I learned how to deploy a multi-container application using Docker Compose. In the previous activities, I worked with individual containers, but this mission showed me how multiple containers can work together as one application.

One of the main concepts I learned was Two-Tier Architecture. The Nextcloud container acts as the Web/Application Tier, while the MariaDB container acts as the Database Tier. Each container has a different responsibility, but they communicate with each other to provide the complete application.

I also learned how to create a `docker-compose.yml` file using the Linux `nano` editor. The YAML file contains the configuration for the Nextcloud and MariaDB services. I learned that YAML is sensitive to indentation and spacing, so the configuration must be written correctly.

Another important lesson was how Nextcloud connects to MariaDB. The `MYSQL_HOST=database` setting tells Nextcloud where to find the database. The word `database` is the service name of the MariaDB container in the Docker Compose file.

I also learned the difference between `docker run` and `docker-compose up -d`. The `docker run` command can be used to start an individual container, while `docker-compose up -d` can start multiple related containers using the configuration in the Compose file.

This activity also helped me understand Infrastructure as Code or IaC. Instead of manually configuring every container, the infrastructure can be written in a YAML configuration file. This makes the deployment process more organized and easier to repeat.

I learned how to check the status of the containers using `docker-compose ps` and how to stop and remove the containers using `docker-compose down`. I also learned how to access the Nextcloud setup page through port 8080.

Overall, this laboratory activity improved my understanding of Docker Compose, two-tier architecture, container communication, and Infrastructure as Code. It showed me how multiple containers can work together to create a cloud application.
