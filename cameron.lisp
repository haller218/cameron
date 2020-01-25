(require "cl-telegram-bot")

(defpackage the-bot (:use :cl :cl-telegram-bot))

(in-package the-bot)

(defbot echo-bot)

(defmethod on-message ((bot echo-bot)
		       text)
  (reply text))

(defmethod on-command ((bot echo-bot)
		       (command (eql :list))
		       text)
  (declare (ignorable text))
  (reply "/help /whoami /run /eval"))

(defmethod on-command ((bot echo-bot)
		       (command (eql :help))
		       text)
  (declare (ignorable text))]
  (reply "Just send me any text and I'll reply with the same text."))

(defmethod on-command ((bot echo-bot)
		       (command (eql :eval))
		       text)
  (declare (ignorable text))
  (reply (eval (read-from-string text))))

(defmethod on-command ((bot echo-bot)
		       (command (eql :run))
		       text)
  (declare (ignorable text))
  (reply "run"))


(defmethod on-command ((bot echo-bot)
		       (command (eql :whoami))
		       text)
  (declare (ignorable text))
  (reply (uiop:hostname)))
 

(defmethod on-command ((bot echo-bot)
		       (command (eql :start))
		       text)
  (declare (ignorable text))
  (reply "Wellcome Lisper! Have a fun, playing with cl-telegram-bot!"))



(start-processing (make-echo-bot (uiop:getenv "API_TELEGRAM_BOTNET"))
		  :debug nil)

