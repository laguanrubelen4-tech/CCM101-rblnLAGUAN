
# Container Lifecycle

The container lifecycle was managed using basic Docker commands. The following steps were used to check, stop, verify, and remove the Nginx container.

## Step 1 — List Running Containers

Run the following command:

```bash
docker ps
```

This command displays all Docker containers that are currently running.

---

## Step 2 — Stop the Container

Run:

```bash
docker stop nginx-server
```

### Expected Output

```text
nginx-server
```

This confirms that the `nginx-server` container has been stopped.

---

## Step 3 — Verify the Container is Stopped

Run:

```bash
docker ps -a
```

The `nginx-server` container should appear in the list with a status similar to:

```text
Exited (...)
```

This indicates that the container is no longer running.

---

## Step 4 — Remove the Container

Run:

```bash
docker rm nginx-server
```

### Expected Output

```text
nginx-server
```

This confirms that the stopped `nginx-server` container has been removed.

---

## Step 5 — Final Verification

Run:

```bash
docker ps -a
```

The `nginx-server` container should no longer appear in the list because it has already been removed.

## Container Lifecycle Summary

The container lifecycle completed in this activity was:

**List → Stop → Verify → Remove → Final Verification**
