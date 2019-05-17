;; package setup
(require 'package)
(add-to-list
 'package-archives
 '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(package-initialize)

;; use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;; evil
(use-package evil
  :init
  (evil-mode 1))
(use-package org-evil)

;; org mode
(add-to-list 'load-path "~/.emacs.d/lisp")
(load "org-mode")

;; basic packages
(use-package better-defaults)
(use-package magit)
(use-package smex
  :init
  (global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "M-X") 'smex-major-mode-commands)
  (define-key evil-motion-state-map ":" 'smex)
  (define-key evil-motion-state-map ";" 'evil-ex)
  ;; This is your old M-x.
  (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command))
(use-package ido-completing-read+
  :init
  (ido-mode 1)
  (ido-everywhere 1)
  (ido-ubiquitous-mode 1))
(use-package paredit)
(use-package idle-highlight-mode)
(use-package find-file-in-project)
(use-package scpaste)
(use-package elisp-slime-nav)
(use-package helm)

;; UI
(use-package leuven-theme
  :init
  (load-theme 'leuven t))
(use-package powerline
  :init
  (powerline-default-theme))
;; Set default font
(set-face-attribute 'default nil
                    :family "Inconsolata"
                    :height 110
                    :weight 'normal
                    :width 'normal)

;; intero
(use-package intero
  :init
  (add-hook 'haskell-mode-hook 'intero-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-use-fuzzy nil)
 '(backup-directory-alist (quote (("." . "~/.local/share/emacs/backups"))))
 '(compilation-context-lines 2)
 '(compilation-error-screen-columns nil)
 '(compilation-scroll-output t)
 '(compilation-search-path (quote (nil "src")))
 '(custom-safe-themes
   (quote
    ("170bb47b35baa3d2439f0fd26b49f4278e9a8decf611aa33a0dad1397620ddc3" default)))
 '(electric-indent-mode nil)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(line-move-visual t)
 '(next-error-highlight t)
 '(next-error-highlight-no-select t)
 '(next-line-add-newlines nil)
 '(package-selected-packages
   (quote
    (load-dir load-directory org-babel-eval-in-repl org-mime org-plus-contrib org-chef org-checklist org-timeline bbdb helm powerline leuven ido-completing-read+ elisp-slime-nav scpaste find-file-in-project idle-highlight-mode paredit ido-ubiquitous smex magit better-defaults org-evil evil-mode solarized-theme use-package org-bullets leuven-theme intero)))
 '(require-final-newline t)
 '(sentence-end-double-space nil)
 '(show-paren-mode t)
 '(show-trailing-whitespace t)
 '(visible-bell t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-mode-line-clock ((t (:foreground "red" :box (:line-width -1 :style released-button))))))
