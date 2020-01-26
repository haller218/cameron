#/bin/sh

curl -O https://beta.quicklisp.org/quicklisp.lisp

sbcl --load quicklisp.lisp --eval "(quicklisp-quickstart:install)(ql:add-to-init-file)"

git clone https://github.com/40ants/cl-telegram-bot.git

cp -Ra cl-telegram-bot $HOME/quicklisp/local-projects

sbcl --eval "(ql:quickload \"cl-telegram-bot/core\")"






