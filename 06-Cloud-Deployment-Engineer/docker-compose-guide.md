
# Docker Compose Guide

## What does the `services:` block do?

The `services:` block lists the containers that will be created and run by Docker Compose. In our YAML file, it contains the Nextcloud application and the MySQL database. Each service has its own settings, such as the image, environment variables, ports, and storage.

## How did the Nextcloud app container find the database container?

The Nextcloud container uses the `MYSQL_HOST` environment variable to know where the database is located. We set `MYSQL_HOST` to the name of the MySQL service in the Compose file. Docker Compose creates a network for the services, so the Nextcloud container can use the MySQL service name to connect to the database.

For example:

```yaml
environment:
  MYSQL_HOST: db
```

Here, `db` is the name of the MySQL database service.

## Difference Between `docker run` and `docker-compose up -d`

`docker run` is mainly used to create and start one container at a time. In Mission 4, we used it to manually run a container and provide its settings through the command.

`docker-compose up -d` is used to start multiple related containers based on the settings written in the `docker-compose.yml` file. The `-d` option runs the containers in the background. This makes Docker Compose more convenient when an application needs several containers, such as Nextcloud and MySQL, to work together.
