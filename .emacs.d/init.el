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

;; Space
(setq-default show-trailing-whitespace t)

;; Bell
(setq visible-bell t)
(setq ring-bell-function 'ignore)

;; Windmove
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)
(global-set-key (kbd "C-x p") '(lambda () (interactive) (other-window -1)))

;; Cocoa Emacs
(cond ((featurep 'ns)
       (setq ns-command-modifier (quote meta))
       (setq ns-alternate-modifier (quote super))
       (define-key global-map [?¥] [?\\])
       (tool-bar-mode -1)
))

;; Recent files
(require 'recentf)
(setq recentf-max-saved-items 10000)
(setq recentf-auto-cleanup 'never)
(recentf-mode t)

;; Ediff
(setq ediff-window-setup-function 'ediff-setup-windows-plain)
(setq ediff-split-window-function 'split-window-horizontally)

;; package
;;(require 'package)
;;(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
;;(package-initialize)

;; cask
;;(require 'cask "~/.cask/cask.el")
;;(cask-initialize)

;; exec-path-from-shell
;;(when (memq window-system '(mac ns))
;;    (exec-path-from-shell-initialize))

;; yasnippet
;;(yas-global-mode t)

;; auto-complete
;;(ac-config-default)
;;(setq ac-use-menu-map t)
;;(define-key ac-menu-map (kbd "C-n") 'ac-next)
;;(define-key ac-menu-map (kbd "C-p") 'ac-previous)

;; helm
;;(helm-mode t)
;;(define-key global-map (kbd "M-x")     'helm-M-x)
;;(define-key global-map (kbd "C-x C-f") 'helm-find-files)
;;(define-key global-map (kbd "C-x C-r") 'helm-recentf)
;;(define-key global-map (kbd "C-x C-b") 'helm-buffers-list)
;;(define-key global-map (kbd "M-y")     'helm-show-kill-ring)
;;(define-key global-map (kbd "C-c i")   'helm-imenu)
;;(define-key global-map (kbd "M-.")     'helm-etags-select)
;;(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
;;(define-key helm-read-file-map  (kbd "TAB") 'helm-execute-persistent-action)
;;(setq helm-delete-minibuffer-contents-from-point t)

;; popwin
;;(require 'popwin)
;;(popwin-mode t)

;; flycheck
;;(global-flycheck-mode)

;; magit
;;(global-set-key (kbd "C-c g") 'magit-status)
;;(setq magit-display-buffer-function 'magit-display-buffer-fullframe-status-v1)

;; expand-region
;;(global-set-key (kbd "C-@") 'er/expand-region)
;;(global-set-key (kbd "C-M-@") 'er/contract-region)

;; multiple-cursors
;;(global-set-key (kbd "C-M-c") 'mc/edit-lines)

;; region-bindings-mode
;;(require 'region-bindings-mode)
;;(region-bindings-mode-enable)
;;(define-key region-bindings-mode-map "a" 'mc/mark-all-like-this)
;;(define-key region-bindings-mode-map "n" 'mc/mark-next-like-this)
;;(define-key region-bindings-mode-map "p" 'mc/mark-previous-like-this)
;;(define-key region-bindings-mode-map "m" 'mc/mark-more-like-this-extended)

;; highlight-symbol
;;(global-set-key (kbd "M-s h") 'highlight-symbol)
;;(global-set-key (kbd "M-s n") 'highlight-symbol-next)
;;(global-set-key (kbd "M-s p") 'highlight-symbol-prev)

;; anzu
;;(global-anzu-mode t)

;; neotree
;;(setq neo-keymap-style 'concise)
;;(setq neo-smart-open t)
;;(global-set-key (kbd "C-c t") 'neotree-toggle)

;; dash-at-point
;;(global-set-key (kbd "C-c d") 'dash-at-point)
;;(global-set-key (kbd "C-c e") 'dash-at-point-with-docset)

;; osx-dictionary
;;(global-set-key (kbd "C-c C-d") 'osx-dictionary-search-pointer)

;; c-mode
;;(add-hook 'c-mode-common-hook '(lambda () (setq c-basic-offset 4)))

;; csharp-mode
;;(add-hook 'csharp-mode-hook '(lambda () (omnisharp-mode) (flycheck-mode)))

;; omnisharp
;;(require 'omnisharp)
;;(setq omnisharp-server-executable-path "~/omnisharp-server/OmniSharp/bin/Debug/OmniSharp.exe")
;;(define-key omnisharp-mode-map (kbd "<C-tab>") 'omnisharp-auto-complete)
;;(define-key omnisharp-mode-map "." 'omnisharp-add-dot-and-auto-complete)

;; shader-mode
;;(require 'shader-mode)

;; ruby-mode
;;(autoload 'ruby-mode "ruby-mode" "Major mode for ruby files" t)
;;(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
;;(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))
;;(setq inf-ruby-default-implementation "pry")
;;(setq ruby-insert-encoding-magic-comment nil)

;; ruby-electric
;;(add-hook 'ruby-mode-hook '(lambda () (ruby-electric-mode t)))

;; robe
;;(setq robe-mode-map nil)
;;(add-hook 'ruby-mode-hook 'robe-mode)
;;(add-hook 'robe-mode-hook 'ac-robe-setup)

;; rinari
;;(add-hook 'ruby-mode-hook 'rinari-launch)

;; emmet-mode
;;(add-hook 'sgml-mode-hook 'emmet-mode)
;;(add-hook 'web-mode-hook 'emmet-mode)
;;(add-hook 'css-mode-hook 'emmet-mode)

;; web-mode
;;(add-to-list 'auto-mode-alist '("\\.html?$" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.erb$" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.tag$" . web-mode))
;;(add-hook 'web-mode-hook '(lambda () (setq-default indent-tabs-mode nil) (setq web-mode-markup-indent-offset 2) (setq web-mode-css-indent-offset 2) (setq web-mode-code-indent-offset 2) (setq web-mode-style-padding 2) (setq web-mode-script-padding 2)))

;; css-mode
;;(add-hook 'css-mode-hook '(lambda () (setq css-indent-offset 2)))

;; scss-mode
;;(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))
;;(add-hook 'scss-mode-hook '(lambda () (setq scss-compile-at-save nil)))

;; js-mode
;;(add-to-list 'auto-mode-alist '("\\.js\\.erb$" . js-mode))
;;(add-hook 'js-mode-hook '(lambda () (setq js-indent-level 2)))

;; yaml-mode
;;(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; markdown-mode
;;(autoload 'markdown-mode "markdown-mode")
;;(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))
;;(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))

;; Marked 2
;;(defun markdown-preview-file ()
;;  "use Marked 2 to preview the current file"
;;  (interactive)
;;  (shell-command
;;   (format "open -a 'Marked 2.app' %s"
;;       (shell-quote-argument (buffer-file-name))))
;;)
;;(global-set-key (kbd "C-c m") 'markdown-preview-file)

;; adoc-mode
;;(add-to-list 'auto-mode-alist '("\\.adoc$" . adoc-mode))
