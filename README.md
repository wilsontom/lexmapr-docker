# lexmapr-docker

[![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active) [![Build Status](https://travis-ci.org/wilsontom/lexmapr-docker.svg?branch=master)](https://travis-ci.org/wilsontom/lexmapr-docker)
 ![License](https://img.shields.io/badge/license-GNU%20GPL%20v3.0-blue.svg "GNU GPL v3.0") [![Docker Pulls](https://img.shields.io/docker/pulls/wilsontom/lexmapr-docker.svg)](https://hub.docker.com/r/wilsontom/lexmapr-docker)


**Docker container for running [LexMapr](https://github.com/Public-Health-Bioinformatics/LexMapr)**

### Usage

The input (.csv) and config (.json) files must be in a directory which is mounted as a volume when the container is run.

```sh
➜ ls -1 lexmapr_input
config.json
input.csv
```

```sh
docker run -it -v lexmapr_input:/inputFiles wilsontom/lexmapr-docker /bin/bash
```
