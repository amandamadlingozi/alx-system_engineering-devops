3 Firewalls: Protect each server.
1 SSL Certificate: Encrypts data for HTTPS traffic.
3 Monitoring Clients: Track performance and security.
Purpose of Each Element:
Firewalls: Secure servers from unauthorized access.
SSL Certificate: Ensures data security between users and servers.
Monitoring: Provides real-time insights into server health and traffic.
Monitoring Details:
Collects: Metrics like web server QPS (Queries Per Second).
Key Infrastructure Issues:
SSL Termination at Load Balancer: Can create a bottleneck, increase security risks.
Single MySQL Writer: Limits scalability, increases risk of failure.
Identical Server Components: Creates potential for widespread issues if one component type fails.
