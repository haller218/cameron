FROM alpine:latest

RUN apk --no-progress update

RUN apk --no-progress upgrade

RUN apk --no-progress add git curl gcc autoconf make automake g++ curl-dev

RUN apk --no-progress add ecl

ENV HOME=/home/cameron

RUN adduser -h $HOME -u 1111 -D cameron

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



