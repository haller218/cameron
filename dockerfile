FROM ubuntu:18.04

RUN apt -qqy update

RUN apt -qqy upgrade

RUN apt -qqy install git curl make gcc

RUN apt -qqy install sbcl

RUN useradd -m cameron

ENV HOME=/home/cameron

USER cameron

WORKDIR $HOME

RUN git clone https://notabug.org/antonearro/cameron

RUN cd cameron

RUN sh install.sh



