### Web Infrastructure for www.foobar.com


### Summary:
This setup forms a fundamental web infrastructure ideal for low to moderate traffic scenarios, focusing on simplicity and essential functionalities.

https://github.com/amandamadlingozi/alx-system_engineering-devops/blob/40d4be7aa4ccef553f971e36dfa7946e1c06cae5/0x09-web_infrastructure_design/0-simple_web_stack.png

**Components:**
- **Server:** Hosts the operating system and all key services.
- **Domain Name (DNS):** `foobar.com` points to IP 8.8.8.8 for easy access.
- **Web Server (Nginx):** Manages and serves HTTP requests.
- **Application Server:** Runs the application logic, interacting with the database.
- **Application Files:** Contains the website's functional code.
- **Database (MySQL):** Stores and manages all site data.

### Process:
1. **DNS resolves www.foobar.com** to IP 8.8.8.8.
2. **Nginx handles the request,** serving static or routing dynamic content.
3. **Application Server processes dynamic requests,** using the database as needed.
4. **Response is sent back** to the user.

### Roles:
- **Server:** Supports all components.
- **Domain Name:** Enables easy website access.
- **Web Server:** Routes and delivers content.
- **Application Server:** Executes code and data processing.
- **Database:** Handles data storage and queries.

### Issues:
- **SPOF:** Server failure leads to total downtime.
- **Maintenance Downtime:** Updates or fixes cause outages.
- **Scalability Limits:** High traffic can degrade performance.
