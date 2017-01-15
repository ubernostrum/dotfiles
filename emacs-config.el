
;;----------------------
;; General config stuff.
;;----------------------

;; Syntax highlighting is good.

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(global-font-lock-mode 1)

;; No scroll bar, menu bar, toolbar or splash screen.
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode nil))
(if (fboundp 'tool-bar-mode) (tool-bar-mode nil))
(menu-bar-mode -1)
(setq inhibit-startup-message t)

;; Don't crap backup files all over the place.
(setq make-backup-files nil)

;; UTF-8 is yummy.
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Mac-specific keyboard and anti-aliasing stuff.
(setq mac-allow-anti-aliasing nil)
(setq mac-command-modifier (quote alt))
(setq mac-option-modifier (quote meta))

;; Server mode is yummy.
(server-start)


;;-------------
;; Keybindings.
;;-------------

(global-set-key "\C-w"     'backward-kill-word)

;; I always mix up these two.
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

(global-set-key "\M-g" 'goto-line)
(global-set-key "\C-cs" 'shell)

(global-set-key "\C-xc" 'comment-region)

;; For editing from external clients.
(global-set-key "\C-xy" 'server-edit)

;; C-k should kill the newline as well.
(setq kill-whole-line t)


;;-------------------------------------------
;; My elisp directory and a few custom modes.
;;-------------------------------------------

(add-to-list 'load-path (expand-file-name "~/.elisp"))

;; Theme.
(add-to-list 'custom-theme-load-path "~/.elisp/emacs-color-theme-solarized")
(load-theme 'solarized-dark t)

;; Custom CSS mode.
(autoload 'css-mode "css-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.css$" . css-mode))
(add-to-list 'auto-mode-alist '("\\.less$" . css-mode))

;; reStructuredText mode.
(require 'rst)
(add-to-list 'auto-mode-alist '("\\.rst$" . rst-mode))
(add-to-list 'auto-mode-alist '("\\.txt$" . rst-mode))
(setq rst-level-face-base-light 0)
(add-hook 'rst-mode-hook 'rst-text-mode-bindings)

(require 'editorconfig)
(editorconfig-mode 1)

;;---------------
;; Random things.
;;---------------

;; Being able to use the kill ring in a read-only buffer is handy.
(setq kill-read-only-ok 1)

;; Typing 'yes' and 'no' is too tedious :)
(defalias 'yes-or-no-p 'y-or-n-p)

;; Yes, I sometimes work with large files. That's OK.
(setq large-file-warning-threshold nil)

;; Yes, I symlink things. Deal with it.
(setq vc-follow-symlinks t)

;; Programming the way Guido indented it.
(setq indent-tabs-mode nil)

;; 80-character lines.
(setq fill-column 79)

;; More descriptive handling of duplicate buffer names.
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)


;;-------------------------------------------------------
;; And let Custom dump some font and color stuff in here.
;;-------------------------------------------------------

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 115 :width normal :family "andale"))))
 '(mode-line ((t (:background "white" :foreground "black")))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("1157a4055504672be1df1232bed784ba575c60ab44d8e6c7b3800ae76b42f8bd" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "a71be4e5e9e418025daea651f8a1628953abb7af505da5e556e95061b6a6e389" default)))
 '(org-agenda-files (quote ("~/dev/org")))
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.milkbox.net/packages/"))))
 '(package-selected-packages (quote (python-mode rust-mode org fsharp-mode)))
 '(rst-level-face-base-color "black"))
