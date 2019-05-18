# Contributing

Devilbox Flames are pure user-contributed Docker Compose projects and this will only work if we all
contribute in one way or another.

**Table of Contents**

* [Use Devilbox Flames](#use-devilbox-flames)
* [Get involved](#get-involved)
* [Adding Devilbox Flames](#adding-devilbox-flames)
    - [Flame directory structure](#flame-directory-structure)
        - [autostart/](#autostart)
        - [cfg/](#cfg)
        - [docker-compose.override.yml](#docker-composeoverrideyml)
        - [env-example](#env-example)
        - [meta.yml](#metayml)
        - [README.md](#readmemd)
    - [Test locally](#test-locally)


## Use Devilbox Flames

Copy desired Flames to your [Devilbox](https://github.com/cytopia/devilbox) setup and start making use of it.
Do report back any issues you've encountered to ensure we all know about it.


## Get involved

* Join the [Devilbox Forums](https://devilbox.discourse.group) for questions and to support others
* Join the [Devilbox Chat](gitter.im/devilbox/Lobby) for questions and to support others
* Submit proposed Devilbox Flames through a pull request
* Enhance or fix Devilbox Flames through a pull request
* Star this project


## Adding Devilbox Flames

For general information and discussions see the initial **[forum post](https://devilbox.discourse.group/t/what-do-you-think-about-a-receipe-repository/127/4)** where this project has been born.


### Flame directory structure

A Devilbox Flame resides in the `flames/` directory with the following directory structure:

```bash
.
└── <flame name>
    ├── autostart/
    ├── cfg/
    ├── docker-compose.override.yml
    ├── env-example
    ├── meta.yml
    └── README.md
```

| File / Dir                    | Required | Comment |
|-------------------------------|----------|---------|
| `autostart/`                  | No       | This optional directory contains autostart scripts required for the Flame to run during Devilbox startup. ([Devilbox autostart][1]) |
| `cfg/`                        | No       | This optional directory contains subdirectories with configuration files required for the Flame's configuration. |
| `docker-compose.override.yml` | Yes      | The Docker Compose override file to be added to the Devilbox. |
| `env-example`                 | Yes      | The Docker Compose variable file containing all variable for the flame to be added to [.env][2]. |
| `meta.yml`                    | Yes      | The Flame definition file (see below). |
| `README.md`                   | Yes      | The Flame Readme with documentation. |

[1]: https://devilbox.readthedocs.io/en/latest/autostart/custom-scripts-globally.html
[2]: https://devilbox.readthedocs.io/en/latest/configuration-files/env-file.html

**Note:** In doubt, have a look at the existing Flames and see how they have organized.

#### autostart/

<sub>(This is optional and most likely not needed for basic Flames)</sub>

Get familiar with the Devilbox autostart behaviour to understand what this is about:

* https://devilbox.readthedocs.io/en/latest/autostart/custom-scripts-globally.html
* https://devilbox.readthedocs.io/en/latest/autostart/custom-scripts-per-php-version.html

#### cfg/

<sub>(This is optional and most likely not needed for basic Flames)</sub>

Add version specific (if your Flame supports different versions) configuration directories which will be mounted via `docker-compose.override.yml` and define settings for your Flame.

#### docker-compose.override.yml

Get familiar with Docker Compose override:

* https://devilbox.readthedocs.io/en/latest/configuration-files/docker-compose-override-yml.html

#### env-example

Get familiar with the `.env` file:

* https://devilbox.readthedocs.io/en/latest/configuration-files/env-file.html

#### meta.yml

The `meta.yml` file is required for automated processing of the project. Below is the needed structure:

```yml
---

devilbox_info:
  name: The project name
  description: The project description
  author: The author name
  github: author github handle
  license: MIT
  min_devilbox_version: v1.0.1
  tags:
    - tag1
    - tag2
```

#### README.md

This is your Flames main Readme file that documents what it is about, usage, variables and other settings.


### Test locally

To ensure your submitted Flame will pass basic CI tests, run the following command locally:

```bash
make lint
```
