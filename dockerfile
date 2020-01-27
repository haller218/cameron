FROM ubuntu:18.04

RUN apt -qqy update

RUN apt -qqy upgrade

RUN apt -qqy install git curl gcc autoconf make automake

RUN apt -qqy install ecl

ENV HOME=/home/cameron

RUN useradd -m cameron

USER cameron

WORKDIR $HOME

# install Roswell - Qlot

RUN git clone https://github.com/roswell/roswell

WORKDIR $HOME/roswell

RUN sh bootstrap

RUN ./configure

RUN make -j3

USER root

RUN make install

USER cameron

WORKDIR $HOME

RUN ros

RUN ros install qlot

RUN git clone https://notabug.org/antonearro/cameron

WORKDIR $HOME/cameron

CMD ["/bin/sh"]



