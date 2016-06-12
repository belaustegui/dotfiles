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
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; Delete trailing whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Disable bell sound
(setq-default ring-bell-function 'ignore)

;; Required packages
(require 'use-package) ;; We depend on use-package to do this magic
(use-package drupal-mode
  :ensure t)
(use-package web-mode
  :init
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-attr-indent-offset 2)
  (setq web-mode-style-padding 2)
  (setq web-mode-script-padding 2)
  (setq web-mode-block-padding 2)
  :mode
  ("\\.tpl\\.php\\'" . web-mode)
  ("\\.erb\\'" . web-mode)
  :ensure t)
(use-package yaml-mode :ensure t)
(use-package markdown-mode :ensure t)
(use-package flycheck :ensure t)
(use-package elixir-mode :ensure t)
(use-package editorconfig :ensure t)
(global-flycheck-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'solarized-dark)
