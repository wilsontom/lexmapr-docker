# lexmapr-docker

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
