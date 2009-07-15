;;----------------------
;; General config stuff.
;;----------------------

;; Syntax highlighting is good.
(global-font-lock-mode 1)

;; No scroll bar, menu bar, toolbar or splash screen.
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode nil))
(if (fboundp 'tool-bar-mode) (tool-bar-mode nil))
(if (fboundp 'menu-bar-mode) (menu-bar-mode nil))
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

;; For composing email from external clients.
(global-set-key "\C-xy" 'server-edit)

;; C-k should kill the newline as well.
(setq kill-whole-line t)


;;-------------------------------------------
;; My elisp directory and a few custom modes.
;;-------------------------------------------

(add-to-list 'load-path (expand-file-name "~/.elisp"))

;; Custom Python mode.
(load "python-mode")

;; Programming the way Guido indented it.
(setq indent-tabs-mode nil)

;; Custom JavaScript mode.
(autoload 'javascript-mode "javascript" nil t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . javascript-mode))

;; Custom CSS mode.
(autoload 'css-mode "css-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.css$'" . css-mode))

;; reStructuredText mode.
(load "rst")
(add-hook 'text-mode-hook 'rst-text-mode-bindings)
(setq rst-level-face-base-light 0)

;; hg is my DVCS of choice.
(load "mercurial")

;; Speaking of version-control, I have a custom SVN install too.
(setq vc-svn-program "/opt/local/bin/svn")


;;---------------
;; Random things.
;;---------------

;; Being able to use the kill ring in a read-only buffer is handy.
(setq kill-read-only-ok 1)

;; Typing 'yes' and 'no' is too tedious :)
(defalias 'yes-or-no-p 'y-or-n-p)

;; Yes, I sometimes work with large files. That's OK.
(setq large-file-warning-threshold nil)

;; 80-character lines.
(setq fill-column 79)


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
