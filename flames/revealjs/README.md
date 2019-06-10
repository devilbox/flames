# Enable and Configure Reveal.js

This section will guide you through getting Reveal.js integrated into the Devilbox.

**See also**

* [Docker Hub: RevealJs](https://hub.docker.com/r/agiled/reveal.js-docker/) not official docker image
* [Reveal.js GitHub Project](https://github.com/hakimel/reveal.js/)
    
## Overview

### Reveal.js settings

In case of Reveal.js, the file is `flames/revealjs/docker-compose.override.yml`. This file
must be copied into the root of the Devilbox git directory.
    
| What        | How and where |
| ----------- | ------------- |
| Example compose file  | `flames/revealjs/docker-compose.override.yml` | 

**Reveal.js**

| What        | How and where |
| ----------- | ------------- |
| Container IP address  | `̀172.16.238.130`                   | 
| Container host name   | `revealjs`                         | 
| Container name        | `revealjs`                         | 
| Mount points          | none                               | 
| Exposed port          | `8000` (can be changed via `.env`) |  
| Available at          | `http://localhost:8000`            | 
