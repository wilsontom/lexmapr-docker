FROM continuumio/miniconda

LABEL maintainer "Tom Wilson <tpw2@aber.ac.uk"

ENV BASH_ENV ~/.bashrc
SHELL ["/bin/bash", "-c"]

RUN conda create --name LexMapr python=3.6 --yes

RUN conda activate LexMapr

RUN git clone https://github.com/Public-Health-Bioinformatics/LexMapr.git

WORKDIR "./LexMapr"

RUN pip install .

RUN python -m nltk.downloader all

RUN lexmapr