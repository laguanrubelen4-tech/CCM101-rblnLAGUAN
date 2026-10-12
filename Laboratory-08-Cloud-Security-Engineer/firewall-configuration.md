
# Firewall Configuration



## 1. Allow SSH Access

Command used:

```bash
sudo ufw allow ssh
```

This command allows incoming SSH connections on port 22 so administrators can remotely manage the server.

## 2. Set the Default Deny Policy

Commands used:

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
```

- `sudo ufw default deny incoming` blocks incoming connections unless they are explicitly allowed by a firewall rule.
- `sudo ufw default allow outgoing` allows outgoing connections from the server.

## 3. Enable the Firewall

Command used:

```bash
sudo ufw enable
```

This command activates UFW and applies the configured firewall rules.

**Important:** If I ran `sudo ufw enable` before `sudo ufw allow ssh`, incoming SSH connections could be blocked by the Default Deny policy, potentially locking me out of a remotely managed server.

## 4. Allow Web Traffic on Port 8080

Command used:

```bash
sudo ufw allow 8080/tcp
```

This command allows incoming TCP traffic on port 8080 so users can access the Nginx web application.

## 5. Verify Firewall Configuration

Commands used:

```bash
sudo ufw status verbose
sudo ufw status numbered
```

The first command displays the firewall status and default policies, while the second lists the firewall rules with their assigned numbers.

## 6. Test the Web Application

Command used:

```bash
curl http://localhost:8080
```
Configuring UFW helped me understand how to protect a server by blocking incoming traffic by default and allowing only necessary services. Allowing SSH before enabling the firewall is an important precaution, while permitting port 8080 allows the web application to receive the intended traffic.
