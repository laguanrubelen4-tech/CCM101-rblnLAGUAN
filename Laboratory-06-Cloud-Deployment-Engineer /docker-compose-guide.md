
### What does the `services:` block do?

The `services:` block defines all the individual containers that make up your multi-container application. Each entry directly under `services:` (for example, `app`, `db`, or `web`) represents a distinct container, specifying its image, environment variables, exposed ports, attached volumes, and network dependencies so Docker Compose knows how to configure and run each component.

---

### How did the Nextcloud app container find the database container?

It used **Docker’s internal DNS resolution**.

By default, Docker Compose places all services defined in the same `compose.yaml` file onto a shared custom bridge network. Inside this network:

* Docker assigns each container an internal DNS hostname matching its **service name** in the `services:` block (for example, `db` or `mariadb`).
* When you set `MYSQL_HOST=db` (or whatever your database service name is), Nextcloud doesn't need an actual IP address like `172.x.x.x` or `localhost`. It simply sends network requests to `db`, and Docker’s built-in DNS server resolves that name directly to the database container's internal IP.

---

### What is the difference between `docker run` and `docker-compose up -d`?

| Feature | `docker run` | `docker-compose up -d` |
| --- | --- | --- |
| **Scope** | Manages a **single container** imperatively from the command line. | Manages an **entire multi-container application** declaratively from a file (`compose.yaml`). |
| **Configuration** | Passed entirely via CLI flags (e.g., `-p 8080:80 -v data:/data -e ENV=val --net my-net`). Hard to version-control or repeat. | Defined cleanly in a YAML file, making setups reproducible and trackable in Git. |
| **Networking** | Containers attach to the default `bridge` network by default, which **lacks automatic DNS resolution** by container name unless a custom network is created manually. | Automatically creates an isolated custom network for all defined services, enabling automatic DNS discovery out of the box. |
| **Lifecycle** | Requires running separate commands to create volumes, networks, and each container in the correct order. | A single command creates networks, mounts volumes, pulls images, resolves dependencies, and starts every container in the background (`-d`). |
