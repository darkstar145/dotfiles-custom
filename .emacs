;; If you don't have MELPA in your package archives:
(require 'package)
(add-to-list
  'package-archives
  '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)
;(package-refresh-contents)

;; Small changes for better defaults
(require 'better-defaults)

;; Theme
(require 'leuven-theme)
(load-theme 'leuven t)

;; UI
(set-default-font "Inconsolata 14")
(menu-bar-mode -1)
(tool-bar-mode -1) 

;; org-mode
(require 'org)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(setq org-log-done t)

(setq org-agenda-files (list "~/Dropbox/org"))

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(require 'smex)
(smex-initialize)

(require 'evil)
(evil-mode 1)
(require 'evil-magit)

;; Editing
(setq default-tab-width 2)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(package-selected-packages
   (quote
    (org-bullets smart-mode-line evil-magit magit smex better-defaults evil leuven-theme rjsx-mode intero))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
