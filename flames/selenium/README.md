# Enable and Configure Selenium

This section will guide you through getting Selenium integrated into the Devilbox.

**See also**

* [Docker Hub: Selenium](https://hub.docker.com/r/elgalu/selenium)
    
## Overview

### Selenium settings

In case of Selenium, the file is ``compose/docker-compose.override.yml-selenium``. This file
must be copied into the root of the Devilbox git directory.
    
| What        | How and where |
| ----------- | ------------- |
| Example compose file  | `compose/docker-compose.override.yml-selenium` | 

**Selenium Hub**

| What        | How and where |
| ----------- | ------------- |
| Container IP address  | `̀172.16.238.150`                           | 
| Container host name   | `selenium-hub` (can be changed via `.env`) | 
| Container name        | `selenium-hub`                             | 
| Mount points          | none                                       | 
| Exposed port          | `4444` (can be changed via `.env`)         |  
| Available at          | `http://localhost:4444`                    | 

**Selenium Chrome**

| What        | How and where |
| ----------- | ------------- |
| Container IP address    | `̀172.16.238.152`                              | 
| Container host name     | `selenium-chrome` (can be changed via `.env`) | 
| Container name          | `selenium-chrome`                             | 
| Mount points            | none                                          | 
| VNC client exposed to   | `5902` (can be changed via `.env`)            |  
| noVNC client exposed to | `6082` (can be changed via `.env`)            |  
| Client Screen Width     | `1920` (can be changed via `.env`)            |  
| Client Screen Height    | `1080` (can be changed via `.env`)            |  
| Available at            | `http://localhost:6082`                       | 


### Selenium env variables

Additionally the following `.env` variables can be created for easy configuration:


| Variable                        | Default value | Description                                                    |
| ------------------------------- | ------------- | -------------------------------------------------------------- |
| `HOST_PORT_SELENIUM`            | `4444`        | Controls the host port on which Selenium will be available at. |
| `SELENIUM_SERVER`               | `latest`      | Controls the Selenium version to use.                          |
| `SELENIUM_CLIENT_SCREEN_WIDTH`  | `1920`        | Custom client screen width size                                | 
| `SELENIUM_CLIENT_SCREEN_HEIGHT` | `1080`        | Custom client screen height size                               | 
