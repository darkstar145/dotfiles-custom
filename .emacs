;; If you don't have MELPA in your package archives:
(require 'package)
(add-to-list
  'package-archives
  '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

;; Small changes for better defaults
(require 'better-defaults)

;; Theme
(require 'leuven-theme)
(load-theme 'leuven t)

;; UI
(set-default-font "Inconsolata 18")
(menu-bar-mode -1)
(tool-bar-mode -1) 

(sml/setup)

(require 'smex)
(smex-initialize)

(require 'evil)
(evil-mode 1)
(require 'evil-magit)

;; JS
(require 'rjsx-mode)
(add-to-list 'auto-mode-alist '(".*\.js\'" . rjsx-mode))
(add-hook 'rsjx-mode-hook
          (lambda ()
            (setq tab-width 2)
            (setq indent-tabs-mode 1)))

;; Install Intero
(require 'intero)
(add-hook 'haskell-mode-hook 'intero-mode)

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
    (smart-mode-line evil-magit magit smex better-defaults evil leuven-theme rjsx-mode intero))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
