#!/bin/sh

RUND="ecl"

$RUND -O https://beta.quicklisp.org/quicklisp.lisp

$RUND -load quicklisp.lisp -eval "(quicklisp-quickstart:install)^D"

rm quicklisp.lisp

$RUND -load ~/quicklisp/setup.lisp -eval "(ql:add-to-init-file)^D"

cd ~/quicklisp/local-projects

git clone https://github.com/40ants/cl-telegram-bot.git

cp -Ra cl-telegram-bot ~/quicklisp/local-projects

cd -

$RUND -eval "(ql:quickload \"cl-telegram-bot/core\")"








