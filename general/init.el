;; This file tries to caputure my configurations across all platforms, please follow and copy paste
;; Step 1: Basic setup
;; Unset Ctrl-z
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-x C-z"))
(global-unset-key (kbd "C-x C-c"))
;; Show line numbers
(global-linum-mode t)
;; Word wrap
(global-visual-line-mode t)
;; Display running info of the computer
(display-battery-mode t)
(display-time-mode t)
(setq fancy-startup-text '(((lambda() "write down anything you like"))))
(setq fancy-splash-image (expand-file-name "image.png"))
;; Set the behavior on version control
(setq
 backup-by-copying t
 backup-directory-alist
 '(("." . "~/.saves"))
 delete-old-versions t
 kept-new-versions 60
 kept-old-versions 20
 version-control t)
;; Set the fonts
;; Set English font
(set-face-attribute 'default nil :font "Menlo 18") ;; For Windows "Consolas 16"
;; Set Chinese font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
		    charset (font-spec :family "STFangSong"
				       :size 22))) ;; For Windows "Fangsong" 24
;; Set the background color
(custom-set-faces
 '(default ((t (:background "#c7edcc")))))
;; Spell checker (Don't forget to install aspell)
(setq-default ispell-program-name "/usr/local/bin/aspell")

;; Step 2: Package
;; If you are using Linux whose Emacs version is below 24, download package.el, and add the following codes
(when
    (load
     (expand-file-name "~/.emacs.d/package.el")))
;; Add melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;; Again, when using Emacs <24, add the following
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
;; Initialize Package
(package-initialize)

;; Step 3: Install pakcages and add some commands
;; The following two lines of codes will be revisited for multiple times due to different package installation and platform you used.
(setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin")) ;; Currently my Windows does not need this line.
(setq exec-path (append exec-path '("/Library/TeX/texbin"))) ;; This line may be written for multiple times
(custom-set-variables
 ;; use the following line if you are in Windows
 ;; '(wakatime-python-bin "C:/Python27/python.exe")
 '(wakatime-api-key "xxx")
 '(wakatime-cli-path "/wakatime/cli.py"))

;; wakatime:
(global-wakatime-mode t)
;; Don't forget to go back to the line above

;; neotree

;; tabbar
(tabbar-mode t)

;; auctex
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(add-hook 'LaTeX-mode-hook 'flyspell-buffer)
(add-hook 'LaTeX-mode-hook 'turn-on-flyspell)

;; company
(add-hook 'after-init-hook 'global-company-mode)

;; company-jedi
;; currently only available on Linux and Mac
(defun my/python-mode-hook ()
  (add-to-list 'company-backends 'company-jedi))
(add-hook 'python-mode-hook 'my/python-mode-hook)

;; org-mode
(add-hook 'org-mode-hook 'flyspell-buffer)
(add-hook 'org-mode-hook 'turn-on-flyspell)
(setq org-log-done 'time)
