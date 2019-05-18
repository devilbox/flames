# Enable and Configure Swagger API

This section will guide you through getting Swagger API integrated into the Devilbox.

**See also**

* [Docker Hub: SwaggerUI](https://hub.docker.com/r/swaggerapi/swagger-ui)
* [Swagger-UI GitHub Project](https://github.com/swagger-api/swagger-ui)
* [Docker Hub: SwaggerEditor](https://hub.docker.com/r/swaggerapi/swagger-editor/)
* [Swagger-Editor GitHub Project](https://github.com/swagger-api/swagger-editor)
    
## Overview

### Swagger-UI and Swagger-Editor settings

In case of SwaggerAPI, the file is `compose/docker-compose.override.yml-swagger-api`. This file
must be copied into the root of the Devilbox git directory.
    
| What        | How and where |
| ----------- | ------------- |
| Example compose file  | `compose/docker-compose.override.yml-swagger-api` | 

**DejaVu**

| What        | How and where |
| ----------- | ------------- |
| Container IP address  | `̀172.16.238.120`                   | 
| Container host name   | `swagger-ui`                       | 
| Container name        | `swagger-ui`                       | 
| Mount points          | none                               | 
| Exposed port          | `8120` (can be changed via `.env`) |  
| Available at          | `http://localhost:8120`            | 

**Mirage**

| What        | How and where |
| ----------- | ------------- |
| Container IP address  | `̀172.16.238.121`                   | 
| Container host name   | `swagger-editor`                   | 
| Container name        | `swagger-editor`                   | 
| Mount points          | none                               | 
| Exposed port          | `8121` (can be changed via `.env`) |  
| Available at          | `http://localhost:8121`            | 
