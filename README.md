# lexmapr-docker

[![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active) [![Build Status](https://travis-ci.org/wilsontom/lexmapr-docker.svg?branch=master)](https://travis-ci.org/wilsontom/lexmapr-docker)
 ![License](https://img.shields.io/badge/license-GNU%20GPL%20v3.0-blue.svg "GNU GPL v3.0") [![Docker Pulls](https://img.shields.io/docker/pulls/wilsontom/lexmapr-docker.svg)](https://hub.docker.com/r/wilsontom/lexmapr-docker)


**Docker container for running [LexMapr](https://github.com/Public-Health-Bioinformatics/LexMapr)**

### Usage

* The input (.csv) and config (.json) files must be in a directory which is mounted as a volume when the container is run.

```sh
➜ ls -1 lexmapr_files
config.json
input.csv
```

* Run the container and mount your local directory

```sh
docker run -it -v lexmapr_files:/lexmaprFiles wilsontom/lexmapr-docker /bin/bash
```

* Test that everything is working

```sh
(base) root@ad08bf24819f:/LexMapr# > lexmapr --version
lexmapr 0.5.0
```

* To run mappings

```sh
lexmapr /lexmaprFiles/input.csv -c /lexmaprFiles/config.json -o /lexmaprFiles/output.tsv

cat /lexmapFiles/output.tsv

Sample_Id       Sample_Desc     Cleaned_Sample  Matched_Components
small_simple1   Chicken Breast  chicken breast  ['breast:uberon_0000310']
small_simple2   Baked Potato    baked potato    ['potato (whole, baked):foodon_03302196']
small_simple3   Canned Corn     canned corn     ['corn (canned):foodon_03302665']
small_simple4   Frozen Yogurt   frozen yogurt   ['frozen:pato_0001985']
small_simple5   Apple Pie       apple pie       ['apple pie:foodon_00002475']
```
