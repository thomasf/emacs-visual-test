(setq
 inhibit-startup-message t
 inhibit-splash-screen t
 inhibit-startup-buffer-menu t
 inhibit-startup-echo-area-message t
 initial-scratch-message ";;_
;;                 __         _,******
;;   ,-----,        _  _,**
;;   | Mu! |          _   ____,****
;;   ;-----;        _
;;        \\   ^__^
;;         \\  (^^)\\_______
;;          ^-(..)\\       )\\/\\/^_^
;;                ||----w |
;; __.-''*-,.,____||_____||___,_.-
;;                 ''     ''

")


(defconst emacsd-directory (file-name-directory load-file-name))
(defun add-to-load-path (path &optional dir)
  (setq load-path
        (cons (expand-file-name path (or dir emacsd-directory)) load-path)))

(add-to-load-path "site-lisp")

(defconst user-themes-directory
  (expand-file-name "themes" emacsd-directory))

;; emacs23 compat
(if (boundp 'custom-theme-load-path)
    (add-to-list 'custom-theme-load-path user-themes-directory)
  (add-to-list 'load-path user-themes-directory))

(tool-bar-mode -1)
(menu-bar-mode -1)



