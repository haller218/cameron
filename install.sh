#!/bin/sh

RUND="ecl"

echo ">>> DOWNLOAD QUICKLISP:"

curl -O https://beta.quicklisp.org/quicklisp.lisp

echo ">>> INSTALL QUICKLISP:"

$RUND -load quicklisp.lisp -eval "(quicklisp-quickstart:install)^D"

rm quicklisp.lisp

echo ">>> ADD TO INIT FILE:"

$RUND -load ~/quicklisp/setup.lisp -eval "(ql:add-to-init-file)^D"

cd ~/quicklisp/local-projects

echo ">>> CLONE DEPENDECY:"

git clone https://github.com/40ants/cl-telegram-bot.git

cp -Ra cl-telegram-bot ~/quicklisp/local-projects

cd -

echo ">>> INSTALL DEPENDECY:"

$RUND -eval "(ql:quickload \"cl-telegram-bot/core\")"
