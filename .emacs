;; #####################################################
;;
;;    ░█▀▀▄ ░█▀▀▀█ ▀▀█▀▀ ░█▀▀▀ ░█▀▄▀█ ─█▀▀█ ░█▀▀█ ░█▀▀▀█ 
;;    ░█─░█ ░█──░█ ─░█── ░█▀▀▀ ░█░█░█ ░█▄▄█ ░█─── ─▀▀▀▄▄ 
;;    ░█▄▄▀ ░█▄▄▄█ ─░█── ░█▄▄▄ ░█──░█ ░█─░█ ░█▄▄█ ░█▄▄▄█
;;
;; #####################################################

(global-linum-mode 1)

;; ========================= Defaul Emacs settings ======================
(set-frame-font "Monaco 16" nil t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)
(display-time-mode t)
(global-hl-line-mode 1)

(setq scroll-step 1)
(setq linum-format "%3d\u2502")
(setq-default line-spacing 0)
(when window-system (set-frame-size (selected-frame) 140 35))

;; ============= Very strange settings for Russian language ==============
(set-language-environment 'UTF-8)	
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))
(define-coding-system-alias 'windows-1251 'cp1251)
(prefer-coding-system 'windows-1251)
(prefer-coding-system 'utf-8-unix)	

(defun test-def ()
  (interactive)
  (print "Ok, let's test it"))


;; ======================= Require Packages =============================


;; ---------------------- Neotree
(require 'neotree)
(global-set-key [f2] 'neotree-toggle)
(add-hook 'neotree-mode-hook
	    (lambda ()
	    (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
	    (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-quick-look)
	    (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
	    (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)
	    (define-key evil-normal-state-local-map (kbd "g") 'neotree-refresh)
	    (define-key evil-normal-state-local-map (kbd "n") 'neotree-next-line)
	    (define-key evil-normal-state-local-map (kbd "p") 'neotree-previous-line)
	    (define-key evil-normal-state-local-map (kbd "A") 'neotree-stretch-toggle)
	    (define-key evil-normal-state-local-map (kbd "H") 'neotree-hidden-file-toggle)))


;; ---------------------- Evil
(setq evil-want-C-u-scroll t)
(require 'evil)
(evil-mode 1)

;; ---------------------- Nerd commenter 
(require 'evil-nerd-commenter)
(define-key evil-normal-state-map (kbd "gc") 'evilnc-comment-or-uncomment-lines)

;; ---------------------- Easymotion
(require 'evil-easymotion)
(evilem-default-keybindings "SPC")

;; ----------------------- Ido
(require 'ido)
(ido-mode 1)

;; ----------------------- Autopair 
(require 'autopair)
(autopair-global-mode)

;; ----------------------- Telephone-line 
(setq telephone-line-height 10)

(setq telephone-line-primary-left-separator 'telephone-line-flat)
(setq telephone-line-primary-right-separator 'telephone-line-flat)

(require 'telephone-line)
(telephone-line-mode 1)



(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("b89ae2d35d2e18e4286c8be8aaecb41022c1a306070f64a66fd114310ade88aa" default))
 '(package-selected-packages
   '(## evil-nerd-commenter neotree telephone-line evil-easymotion autopair gruvbox-theme evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'gruvbox)
