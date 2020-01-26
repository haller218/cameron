#!/bin/sh

echo ">>> CURL QUICKLISP:"

curl -O https://beta.quicklisp.org/quicklisp.lisp

echo ">>> INSTALL QUICKLISP:"

sbcl --load quicklisp.lisp --eval "(quicklisp-quickstart:install)(ql:add-to-init-file)"

cd quicklisp/local-projects

echo ">>> INSTALL cl-telegram-bot:"

git clone https://github.com/40ants/cl-telegram-bot.git

cp -Ra cl-telegram-bot $HOME/quicklisp/local-projects

echo ">>> INSTALL PACKAGES:"

sbcl --eval "(ql:quickload \"cl-telegram-bot/core\")"






