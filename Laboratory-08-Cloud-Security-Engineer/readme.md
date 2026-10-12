



                                                Mission 8 – The Cloud Security Engineer 

## 1. Principle of Least Privilege (PoLP)

The Principle of Least Privilege means giving users and applications only the permissions they need to perform their tasks. It is important in cloud computing because it reduces the risk of unauthorized access, accidental changes, and damage if an account is compromised.

## 2. Attack Surface

The attack surface refers to all the points where an attacker could try to access or exploit a virtual machine. These may include open network ports, running services, applications, and accounts with weak security. Reducing unnecessary services and closing unused ports helps reduce the attack surface.

## 3. Default Deny Policy

A Default Deny policy blocks incoming network traffic unless a specific firewall rule allows it. This is safer than blocking individual attackers because unknown or unwanted connections are blocked automatically unless they are explicitly permitted.

## 4. Security Audit Results

The Nginx web application was deployed in a Docker container named `secure-web-app` and exposed through port 8080. The application was tested using `curl http://localhost:8080`, which returned the default Nginx welcome page.

UFW was configured with a Default Deny incoming policy and an Allow outgoing policy. SSH traffic on port 22 and web traffic on TCP port 8080 were explicitly allowed for IPv4 and IPv6.

## 5. Commands Used

### A. Deploy the Nginx Web Application

```bash
docker run -d --name secure-web-app -p 8080:80 nginx
```

```bash
docker ps
```

```bash
curl http://localhost:8080
```

### B. Configure the Firewall

Allow SSH access:

```bash
sudo ufw allow ssh
```

Set the default incoming and outgoing policies:

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
```

Enable the firewall:

```bash
sudo ufw enable
```

Check the firewall status and default policies:

```bash
sudo ufw status verbose
```

### C. Allow Web Traffic on Port 8080

```bash
sudo ufw allow 8080/tcp
```

Verify the numbered firewall rules:

```bash
sudo ufw status numbered
```

Test the web application again:

```bash
curl http://localhost:8080
```

## 6. Security Recommendations

- Allow only the ports required by the application.
- Use strong authentication for administrator accounts.
- Keep the operating system and application images updated.
- Review firewall rules regularly.
- Monitor server logs for suspicious activity.
- Allow SSH before enabling the firewall to reduce the risk of losing remote administrative access.

 ## Skills Learned 

This activity demonstrated how a host-based firewall can reduce a server's attack surface. By applying the Default Deny policy and allowing only required services, the server has a more controlled network access configuration. Testing the Nginx application and verifying the firewall rules also helped confirm that the required services were allowed.
