;;; emacs-visual-test.el ---

;;; Commentary:
;;

(load-file "test-emacsd/init.el")


(defun visual-test-find-file (name)
  "DOCSTRING"
  (find-file (expand-file-name name "test-files")
))

(visual-test-find-file "django-template.html")


(provide 'emacs-visual-test)

;;; emacs-visual-test.el ends here
