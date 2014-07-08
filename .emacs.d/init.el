;; Language
(set-language-environment 'Japanese)

;; Coding system
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)

;; Backup
(setq make-backup-files nil)
(setq delete-auto-save-files t)

;; Startup
(setq inhibit-startup-screen t)
(setq initial-scratch-message "")

;; Menu bar
(menu-bar-mode -1)

;; Line number / Column number
(line-number-mode t)
(column-number-mode t)

;; Tab
(setq-default tab-width 4 indent-tabs-mode nil)

;; Bell
(setq visible-bell t)
(setq ring-bell-function 'ignore)

;; Cocoa Emacs
(cond ((featurep 'ns)
       (setq ns-command-modifier (quote meta))
       (setq ns-alternate-modifier (quote super))
       (tool-bar-mode -1)
))

;; load-path
;;(add-to-list 'load-path "~/.emacs.d/elisp")

;; package
;;(require 'package)
;;(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
;;(package-initialize)

;; cask
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; yasnippet
(require 'yasnippet)
(yas-global-mode t)

;; auto-complete
(require 'auto-complete-config)
(ac-config-default)

;; helm
(require 'helm-config)
(helm-mode t)
(setq helm-delete-minibuffer-contents-from-point t)
(define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)
(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)

;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; magit
(require 'magit)

;; speedbar
(require 'sr-speedbar)
(setq speedbar-show-unknown-files t)
(setq sr-speedbar-right-side nil)
(sr-speedbar-refresh-turn-off)

;; anzu
(require 'anzu)
(global-anzu-mode t)

;; c-mode
(add-hook 'c-mode-common-hook '(lambda () (setq c-basic-offset 4)))

;; php-mode
(autoload 'php-mode "php-mode")
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))

;; rinari
(require 'rinari)

;; ruby-mode
(autoload 'ruby-mode "ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))
(add-hook 'ruby-mode-hook '(lambda () (rinari-launch)))

;; ruby-electric
(require 'ruby-electric)
(add-hook 'ruby-mode-hook '(lambda () (ruby-electric-mode t)))

;; ruby-block
(require 'ruby-block)
(add-hook 'ruby-mode-hook '(lambda () (ruby-block-mode t) (setq ruby-block-highlight-toggle t)))

;; rhtml-mode
(require 'rhtml-mode)
(add-hook 'rhtml-mode-hook '(lambda () (rinari-launch)))

;; css-mode
(add-hook 'css-mode-hook '(lambda () (setq css-indent-offset 2)))

;; scss-mode
(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))
(add-hook 'scss-mode-hook '(lambda () (setq scss-compile-at-save nil)))

;; js-mode
(add-hook 'js-mode-hook '(lambda () (setq js-indent-level 2)))

;; coffee-mode
(autoload 'coffee-mode "coffee-mode")
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))
(add-hook 'coffee-mode-hook '(lambda () (setq coffee-tab-width 2)))

;; yaml-mode
(autoload 'yaml-mode "yaml-mode")
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; markdown-mode
(autoload 'markdown-mode "markdown-mode")
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
