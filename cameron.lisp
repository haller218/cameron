#!/usr/bin/sbcl --script

(require "cl-telegram-bot")

(defpackage the-bot (:use :cl :cl-telegram-bot))

(in-package the-bot)

(defbot echo-bot)

(defmethod on-message ((bot echo-bot)
		       text)
  (reply text))

(defmethod on-command ((bot echo-bot)
		       (command (eql :help))
		       text)
  (declare (ignorable text))
  (reply "Just send me any text and I'll reply with the same text."))


(defmethod on-command ((bot echo-bot)
		       (command (eql :start))
		       text)
  (declare (ignorable text))
  (reply "Wellcome Lisper! Have a fun, playing with cl-telegram-bot!"))


(start-processing (make-echo-bot (uiop:getenv "API_TELEGRAM_BOTNET"))
		  :debug nil)

