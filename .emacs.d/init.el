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

;; yasnippet
;;(require 'yasnippet)
;;(yas-global-mode t)

;; auto-complete
;;(require 'auto-complete-config)
;;(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
;;(ac-config-default)

;; flycheck
;;(add-hook 'after-init-hook #'global-flycheck-mode)

;; magit
;;(require 'magit)

;; speedbar
;;(require 'sr-speedbar)
;;(setq speedbar-show-unknown-files t)
;;(setq sr-speedbar-right-side nil)
;;(sr-speedbar-refresh-turn-off)

;; rinari
;;(require 'rinari)

;; cc-mode
;;(require 'cc-mode)
;;(add-hook 'c-mode-common-hook '(lambda () (setq c-basic-offset 4)))

;; php-mode
;;(autoload 'php-mode "php-mode")
;;(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))

;; ruby-mode
;;(autoload 'ruby-mode "ruby-mode" "Major mode for ruby files" t)
;;(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
;;(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))
;;(add-hook 'ruby-mode-hook '(lambda () (rinari-launch)))

;; rhtml-mode
;;(require 'rhtml-mode)
;;(add-hook 'rhtml-mode '(lambda () (rinari-launch)))

;; scss-mode
;;(autoload 'scss-mode "scss-mode")
;;(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))

;; coffee-mode
;;(autoload 'coffee-mode "coffee-mode")
;;(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
;;(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

;; markdown-mode
;;(autoload 'markdown-mode "markdown-mode")
;;(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))
;;(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
