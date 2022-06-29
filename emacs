;; packages
(require 'package)
(setq package-enable-at-startup nil) ;; Disable package initialization

;; MELPA
(add-to-list 'package-archives
			 ' ("melpa" . "http://melpa.org/packages/"))

(package-initialize) ;; Package initialization

;; Disable annoying beeping
(setq visible-bell 1)

;; Enable line numbers
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'text-mode-hook 'display-line-numbers-mode)

;; Show parent parentheses
(show-paren-mode 1)

;; Disable the default startup screen
;; (setq inhibit-startup-message t)

;; Disable most gui elements
(tool-bar-mode -1)
;; (menu-bar-mode -1)
(scroll-bar-mode -1)

;; Enable copypasting outside of Emacs
(setq x-select-enable-clipboard t)

;; Disable automatic creation of backup files
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Enable conservative scrolling
(setq scroll-conservatively 100)

;; Disable ring-bell
(setq ring-bell-function 'ignore)

;; Indentation
(setq-default tab-width 4)
(setq-default standard-indent 4)
(setq c-basic-offset tab-width)
(setq-default electric-indent-inhibit t)
(setq-default indent-tabs-mode t)
(setq backward-delete-char-untabify-method 'nil)

;;Enable prettify symbols mode
(global-prettify-symbols-mode t)

;; Enable bracket pair-matching
(setq electric-pair-pairs '(
                            (?\{ . ?\})
                            (?\( . ?\))
                            (?\[ . ?\])
                            (?\" . ?\")
                            ))
(electric-pair-mode t)

;; Creating a new window switches your cursor to it
 (defun split-and-follow-horizontally ()
	(interactive)
	(split-window-below)
	(balance-windows)
	(other-window 1))
 (global-set-key (kbd "C-x 2") 'split-and-follow-horizontally)

 (defun split-and-follow-vertically ()
	(interactive)
	(split-window-right)
	(balance-windows)
	(other-window 1))
 (global-set-key (kbd "C-x 3") 'split-and-follow-vertically)

;; Transform yes-or-no questions into y-or-n
(defalias 'yes-or-no-p 'y-or-n-p)

;; Easier resize bindigs
;; Super - Control - <arrow>
(global-set-key (kbd "s-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "s-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "s-C-<down>") 'shrink-window)
(global-set-key (kbd "s-C-<up>") 'enlarge-window)

;; Highlight current line
;; (global-hl-line-mode t)

;; Defer loading most packages for quicker startup times
(setq use-package-always-defer t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(cua-mode t)
 '(custom-enabled-themes '(doom-monokai-classic))
 '(custom-safe-themes
   '("8d8207a39e18e2cc95ebddf62f841442d36fcba01a2a9451773d4ed30b632443" "a9abd706a4183711ffcca0d6da3808ec0f59be0e8336868669dc3b10381afb6f" "b99e334a4019a2caa71e1d6445fc346c6f074a05fcbb989800ecbe54474ae1b0" "251ed7ecd97af314cd77b07359a09da12dcd97be35e3ab761d4a92d8d8cf9a71" "be84a2e5c70f991051d4aaf0f049fa11c172e5d784727e0b525565bb1533ec78" "60ada0ff6b91687f1a04cc17ad04119e59a7542644c7c59fc135909499400ab8" "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "2dd4951e967990396142ec54d376cced3f135810b2b69920e77103e0bcedfba9" "6945dadc749ac5cbd47012cad836f92aea9ebec9f504d32fe89a956260773ca4" "1436985fac77baf06193993d88fa7d6b358ad7d600c1e52d12e64a2f07f07176" default))
 '(doom-modeline-mode t)
 '(package-selected-packages
   '(multiple-cursors spacemacs-theme doom-themes dracula-theme doom-modeline))
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))
