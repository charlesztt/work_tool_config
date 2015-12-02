(setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin"))
(setq exec-path (append exec-path '("/Library/TeX/texbin")))
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)
(global-linum-mode t)
(global-visual-line-mode t)
(global-wakatime-mode t)
(tabbar-mode t)
(display-battery-mode t)
(display-time-mode t)
(setq-default ispell-program-name "/usr/local/bin/aspell")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fancy-splash-image "kancolle.png")
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
         kept-new-versions 60
         kept-old-versions 20
         version-control t)
