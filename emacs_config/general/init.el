;; This file tries to caputure my configurations across all platforms, please follow and copy paste
;; Step 1: Basic setup
;; Unset Ctrl-z
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-x C-z"))
(global-unset-key (kbd "C-x C-c"))
;; Show line numbers
(global-display-line-numbers-mode 1)
;; Word wrap
(global-visual-line-mode t)
;; Display running info of the computer
(display-battery-mode t)
(display-time-mode t)
;; Splash image
(defun always-use-fancy-splash-screens-p () 1)
(defalias 'use-fancy-splash-screens-p 'always-use-fancy-splash-screens-p)
(setq fancy-startup-text
      `(((lambda ()
	   (let* ((lines (with-temp-buffer
                           (insert-file-contents "~/.emacs.d/startup_lines.txt")
                           (split-string (buffer-string) "\n" t)))
                  (choice (nth (random (length lines)) lines)))
             (concat choice "\n"))))))
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
(set-frame-font "Maple Mono NF CN-16" nil t)
;; Spell checker (Don't forget to install aspell)
(setq-default ispell-program-name "/usr/local/bin/aspell")

;; Step 2: Package
;; Add melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;; Initialize Package
(package-initialize)

;; Step 3: Install pakcages and add some commands
;; company
(add-hook 'after-init-hook 'global-company-mode)

;; minimap
(minimap-mode)
(add-to-list 'minimap-major-modes 'text-mode)
(setq minimap-window-location 'right)

;; neotree

;; org-mode
(add-hook 'org-mode-hook 'flyspell-buffer)
(add-hook 'org-mode-hook 'turn-on-flyspell)
(setq org-log-done 'time)
(setq org-export-with-sub-superscripts nil)
(setq org-latex-compiler "xelatex") ; Use XeLaTeX for Unicode support
(setq org-latex-pdf-process
     '("xelatex -interaction nonstopmode %f"
       "xelatex -interaction nonstopmode %f")) ; Compile twice for references

;; solarized-theme
(setq solarized-use-variable-pitch nil) ;; Don't change the font for some headings and titles
(setq solarized-height-minus-1 1.0)
(setq solarized-height-plus-1 1.0)
(setq solarized-height-plus-2 1.0)
(setq solarized-height-plus-3 1.0)
(setq solarized-height-plus-4 1.0) ;; Avoid all font-size changes
(load-theme 'solarized-light t)

;; tabbar
(tabbar-mode t)

;; wakatime
(global-wakatime-mode t)