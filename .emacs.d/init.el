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

;; auto-install
;;(require 'auto-install)
;;(setq auto-install-directory "~/.emacs.d/elisp/")
;;(auto-install-update-emacswiki-package-name t)
;;(auto-install-compatibility-setup)

;; auto-complete
;;(require 'auto-complete)
;;(require 'auto-complete-config)
;;(global-auto-complete-mode t)
;;(setq ac-auto-start t)

;; speedbar
;;(require 'sr-speedbar)
;;(setq speedbar-show-unknown-files t)
;;(setq sr-speedbar-right-side nil)
;;(sr-speedbar-refresh-turn-off)

;; cc-mode
;;(require 'cc-mode)
;;(add-hook 'c-mode-common-hook '(lambda () (setq c-basic-offset 4)))

;; php-mode
;;(require 'php-mode)
;;(setq php-mode-force-pear t)
;;(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))

;; ruby-mode
;;(autoload 'ruby-mode "ruby-mode" "Major mode for ruby files" t)
;;(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
;;(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

;; markdown-mode
;;(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t)
;;(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
;;(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
