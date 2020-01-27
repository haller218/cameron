(defun search-version-in-changelog (lines)
  (let* ((line (nth 4 lines))
         (space-pos (position #\Space line)))
    (when space-pos
      (subseq line 0 space-pos))))


(defsystem cameron-telegram-botnet
  :description "Cameron Telegram BotNet, based on sovietspaceship's work but mostly rewritten."
  :author "Haller <amnesia101101@tutanota.com>"
  :version (:read-file-line "ChangeLog.rst" :at search-version-in-changelog)
  :license "MIT"
  :class :package-inferred-system
  :pathname "src"
  :depends-on ("cl-telegram-bot/core"))
