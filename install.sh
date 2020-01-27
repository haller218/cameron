#!/bin/sh

RUND="ecl"

$RUND -O https://beta.quicklisp.org/quicklisp.lisp

$RUND --load quicklisp.lisp --eval "(quicklisp-quickstart:install)^D"

rm quicklisp.lisp

$RUND --load /home/$USER/quicklisp/setup.lisp --eval "(ql:add-to-init-file)^D"

cd $HOME/quicklisp/local-projects

git clone https://github.com/40ants/cl-telegram-bot.git

cp -Ra cl-telegram-bot $HOME/quicklisp/local-projects

cd -

$RUND --eval "(ql:quickload \"cl-telegram-bot/core\")"








