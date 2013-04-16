;;; emacs-visual-test.el ---

;;; Commentary:
;;

(load-file "test-emacsd/init.el")

(defun visual-test-find-file (name)
  (find-file (expand-file-name name "test-files")))

(defun visual-test-screenshot ()
  (call-process "scrot" nil nil nil "-u" "screenshot-%Y-%m-%d_%H-%M-%S_$wx$h.png")
  (message "saved screenshot"))

;; set theme
(load-theme 'solarized-dark t)
;; open a file
(visual-test-find-file "django-template.html")
;;  go to some position
(goto-char 27)
;; Prepare taking a screenshot
(run-with-idle-timer 2 nil
                     '(lambda ()
                        (visual-test-screenshot)
                        (keyboard-quit)
                        (kill-buffer)
                        ))
;; open ispell-complete word interaction
(call-interactively 'ispell-complete-word)

;;
;; TODO async queueing of actions
;;




(provide 'emacs-visual-test)

;;; emacs-visual-test.el ends here
