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
(global-linum-mode t)
(global-visual-line-mode t)
(global-wakatime-mode t)
(display-battery-mode t)
(display-time-mode t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(wakatime-api-key "[blocked]")
 '(wakatime-cli-path "[github_folder]/wakatime/wakatime/cli.py"))
(custom-set-faces
     ;; custom-set-faces was added by Custom.
     ;; If you edit it by hand, you could mess it up, so be careful.
     ;; Your init file should contain only one such instance.
     ;; If there is more than one, they won't work right.
     '(default ((t (:family "Menlo" :foundry "outline" :slant normal :background "#d4fc9b" :weight normal :height 181 :width normal)))))
(setq
         backup-by-copying t
         backup-directory-alist
         '(("." . "~/.saves"))
         delete-old-versions t
         kept-new-versions 6
         kept-old-versions 2
         version-control t)
