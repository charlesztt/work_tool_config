(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(custom-enabled-themes (quote (light-blue)))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(save-place t nil (saveplace))
 '(show-paren-mode t)
 '(wakatime-api-key "go to website")
 '(wakatime-cli-path "C:/Python34/Lib/site-packages/wakatime-4.1.4-py3.4.egg/wakatime/cli.py")
 '(wakatime-python-bin "C:/Python34/python.exe"))
(global-wakatime-mode)
(global-linum-mode)
(setq
    backup-by-copying t
    backup-directory-alist
    '(("." . "~/.saves"))
    delete-old-versions t
    kept-new-versions 6
    kept-old-versions 2
    version-control t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "FangSong" :foundry "outline" :slant normal :weight normal :height 181 :width normal)))))
