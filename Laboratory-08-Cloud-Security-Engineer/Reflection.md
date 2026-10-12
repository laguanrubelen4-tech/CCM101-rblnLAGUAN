# Reflection – Mission 8: The Cloud Security Engineer

In this laboratory activity, I learned that a host-based firewall is important for protecting a server from unauthorized access. A firewall such as UFW controls incoming and outgoing network traffic directly on the server. Even if an attacker breaches the network perimeter, the firewall can still block connections that are not allowed by its rules. This provides an additional layer of security and helps protect the server when other security measures fail.

Managing open network ports is also important because every open port can become a possible entry point for attackers. Open ports may expose services with security weaknesses that attackers can exploit. During this activity, I configured UFW to deny incoming traffic by default and allowed SSH on port 22 and web traffic on port 8080. This taught me to allow only the ports required by legitimate services to reduce the server's attack surface.

In a real enterprise environment, leaving a database port such as MySQL's port 3306 open to the public internet is dangerous. Attackers could attempt to guess passwords, exploit vulnerabilities, or gain unauthorized access to sensitive information. If successful, they might steal, modify, or delete important customer records. To prevent these risks, database access should be restricted to trusted application servers or private networks. Strong passwords, proper access controls, and regular security updates are also necessary.

Overall, this activity improved my understanding of cloud security and firewall management. I learned that denying unnecessary connections, allowing only essential services, and protecting sensitive databases are important practices for keeping servers and information secure.
