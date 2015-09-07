;; This is the Aquamacs Preferences file.
;; Add Emacs-Lisp code here that should be executed whenever
;; you start Aquamacs Emacs. If errors occur, Aquamacs will stop
;; evaluating this file and print errors in the *Messags* buffer.
;; Use this file in place of ~/.emacs (which is loaded as well.)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(getenv "PATH")
 (setenv "PATH"
(concat
 "/usr/texbin" ":"
(getenv "PATH")))
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)
(global-wakatime-mode t)
(global-visual-line-mode t)
(setq
    backup-by-copying t
    backup-directory-alist
    '(("." . "~/.saves"))
    delete-old-versions t
    kept-new-versions 6
    kept-old-versions 2
    version-control t)
