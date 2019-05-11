# Enable and Configure Elastic GUI Clients

This section will guide you through getting Elastic GUI clients integrated into the Devilbox.

**See also**

* [Docker Hub: DejaVu](https://hub.docker.com/r/appbaseio/dejavu/)
* [DejaVu GitHub Project](https://github.com/appbaseio/dejavu)
* [Docker Hub: Mirage](https://hub.docker.com/r/appbaseio/mirage/)
* [Mirage GitHub Project](https://github.com/appbaseio/mirage)
    
## Overview

### DejaVu and Mirage settings

In case of Elastic, the file is `compose/docker-compose.override.yml-elastic-gui`. This file
must be copied into the root of the Devilbox git directory.
    
You also need the ELK stack. The file is `compose/docker-compose.override.yml-elastic` 
must be copied in the root of the Devilbox git directory.
    
| What        | How and where |
| ----------- | ------------- |
| Example compose file  | `compose/docker-compose.override.yml-elastic-gui` | 
| Example compose file  | `compose/docker-compose.override.yml-elastic` | 

**DejaVu**

| What        | How and where |
| ----------- | ------------- |
| Container IP address  | `̀172.16.238.243`                   | 
| Container host name   | `dejavu`                           | 
| Container name        | `dejavu`                           | 
| Mount points          | none                               | 
| Exposed port          | `1358` (can be changed via `.env`) |  
| Available at          | `http://localhost:1358`            | 

**Mirage**

| What        | How and where |
| ----------- | ------------- |
| Container IP address  | `̀172.16.238.244`                   | 
| Container host name   | `mirage`                           | 
| Container name        | `mirage`                           | 
| Mount points          | none                               | 
| Exposed port          | `3030` (can be changed via `.env`) |  
| Available at          | `http://localhost:3030`            | 


### CORS settings

To make sure you have enabled CORS settings for your ElasticSearch instance, add the following lines 
in the elastic container, environment section:

```yaml
    environment:
      - http.cors.enabled=true 
      - http.cors.allow-origin=*
      - http.cors.allow-headers=X-Requested-With,X-Auth-Token,Content-Type,Content-Length,Authorization 
      - http.cors.allow-credentials=true 

```
