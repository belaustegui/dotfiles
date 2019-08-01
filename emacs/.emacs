;; Add MELPA repository
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Disable backup and autosave
(setq-default backup-inhibited t
	      auto-save-default nil)

;; Disable toolbar, menu and scrollbar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
;; Enable parens and brackets matching
(show-paren-mode 1)

;; Disable startup message
(setq-default inhibit-startup-message t)

;; Show column numbers
(setq-default column-number-mode t)

;; Configure indentation
(setq-default indent-tabs-mode nil
	      js-indent-level 2
	      javscript-indent-level 2
	      c-basic-offset 2
	      web-mode-markup-indent-offset 2
	      web-mode-css-indent-offset 2
	      web-mode-code-indent-offset 2
	      css-indent-offset 2)

;; Autoindent when creating a new line
(global-set-key (kbd "RET") 'newline-and-indent)

;; Enable IDO for fast navigation
;;(setq-default ido-enable-flex-matching t)
;;(setq-default ido-everywhere t)
;;(ido-mode 1)

;; Delete trailing whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Disable bell sound
(setq-default ring-bell-function 'ignore)

;; Install 'use-package' if necessary
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Required packages
(eval-when-compile
  (require 'use-package)) ;; We depend on use-package to do this magic
;; Auto install all used pacakges without having to specify manually
;; the `:ensure t` sentence for each.
(setq-default use-package-always-ensure t)
(use-package exec-path-from-shell
  :config
  (setq-default exec-path-from-shell-check-startup-files nil)
  (exec-path-from-shell-initialize))
(use-package web-mode
  :config
  (setq-default web-mode-markup-indent-offset 2)
  (setq-default web-mode-css-indent-offset 2)
  (setq-default web-mode-code-indent-offset 2)
  (setq-default web-mode-attr-indent-offset 2))
(use-package markdown-mode)
(use-package elixir-mode)
(use-package editorconfig)
(use-package ido
  :config
  (setq-default ido-enable-flex-matching t)
  (setq-default ido-everywhere t)
  (ido-mode))
(use-package smartparens)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (smartparens ido-mode editorconfig elixir-mode markdown-mode web-mode exec-path-from-shell use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
