Infrastructure Components:
Two Servers: Increases reliability and load distribution.
Web Server (Nginx): Serves static and dynamic content.
Application Server: Runs application logic.
Load Balancer (HAproxy): Distributes traffic across servers.
Application Files: Contains website code.
Database (MySQL): Stores and manages data.
Load Balancer Configuration:
Round-robin Algorithm: Evenly distributes incoming traffic across servers.
Setup Type:
Active-Active: Both servers handle traffic simultaneously for better resource use.

Database Configuration:
Primary-Replica Setup: Primary handles writes and updates replicas; replicas handle reads.

Infrastructure Issues:
SPOF: Potential failure if load balancer or primary database goes down.
Security: Vulnerable to attacks without firewalls or HTTPS.
No Monitoring: Lack of system performance and health tracking tools.
