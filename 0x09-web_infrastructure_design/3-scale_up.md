1. Server
Hosts distinct components for optimized performance and security.
2. Load Balancer (HAproxy)
Configuration: Clustered for enhanced reliability.
Purpose: Distributes traffic across multiple servers to balance load and improve availability.
3. Split Components
Web Server (Nginx): Manages HTTP requests.
Application Server: Processes dynamic content.
Database (MySQL): Handles data storage and retrieval.
Rationale for Additional Elements
Separate Servers: Each specialized to maximize efficiency in handling specific tasks—web serving, application processing, and data management.
HAproxy: Ensures no single point of failure in traffic management, maintaining service continuity.
Conclusion
This setup enhances performance, security, and reliability by distributing roles across specialized servers and using a clustered load balancer.
