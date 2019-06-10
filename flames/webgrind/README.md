# Enable and Configure Webgrind GUI

This section will guide you through getting Webgrind GUI integrated into the Devilbox.

**See also**

* [Docker Hub: Webgrind](https://hub.docker.com/r/creativeprojects/webgrind)
* [Webgrind GitHub Project](https://github.com/jokkedk/webgrind)
    
## Overview

### Webgrind settings

In case of Webgrind, the file is `flames/webgrind/docker-compose.override.yml`. This file
must be copied into the root of the Devilbox git directory.

| What        | How and where |
| ----------- | ------------- |
| Example compose file  | `flames/webgrind/docker-compose.override.yml` | 

**Webgrind**

| What        | How and where |
| ----------- | ------------- |
| Container IP address  | `̀172.16.238.180`                         |
| Container name        | `webgrind`                               |
| Mount points          | `<devilbox_root>/log/php-fpm-<version>/` |
| Exposed port          | `8180` (can be changed via `.env`)       | 
| Available at          | `http://localhost:8180`                  |

**WARNING**: 
* You should configure `xdebug.profiler_output_dir` in your `cfg/php-ini-<version>/xdebug.ini` file,
accordingly to your mount point (`/var/log/php`).
* Do not forget to activate the profiler with `xdebug.profiler_enable` directive.

**TIP**: 
* Do not forget to also configure `xdebug.profiler_output_name` directive (see [Xdebug Documentation / All settings](https://xdebug.org/docs/all_settings#profiler_output_name)),


### Webgrind env variables

Additionally the following `.env` variables can be created for easy configuration:

| Variable                        | Default value | Description                                                    |
| ------------------------------- | ------------- | -------------------------------------------------------------- |
| `HOST_PORT_WEBGRIND`            | `8180`        | Controls the host port on which Webgrind will be available at. |
| `WEBGRIND_SERVER`               | `latest`      | Controls the Webgrind version to use.                          |
