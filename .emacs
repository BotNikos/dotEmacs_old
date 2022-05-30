;; #####################################################
;;
;;    ░█▀▀▄ ░█▀▀▀█ ▀▀█▀▀ ░█▀▀▀ ░█▀▄▀█ ─█▀▀█ ░█▀▀█ ░█▀▀▀█ 
;;    ░█─░█ ░█──░█ ─░█── ░█▀▀▀ ░█░█░█ ░█▄▄█ ░█─── ─▀▀▀▄▄ 
;;    ░█▄▄▀ ░█▄▄▄█ ─░█── ░█▄▄▄ ░█──░█ ░█─░█ ░█▄▄█ ░█▄▄▄█
;;
;; #####################################################

;; packages
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; default settigns
(global-linum-mode)
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)
(display-time-mode t)
(global-hl-line-mode 1)

;; theme
(load-theme 'monokai t)

(setq scroll-step 1)
(setq linum-format "%3d\u2502")
(setq-default line-spacing 0)

;; evil
(setq evil-want-C-u-scroll t)
(require 'evil)
(evil-set-leader 'normal (kbd "<SPC>"))
(evil-mode 1)

(evil-define-key nil 'global (kbd "<escape>") 'keyboard-escape-quit)

;; telephone line
(require 'telephone-line)
(telephone-line-mode 1)

;; treemacs
(require 'treemacs-evil)
(global-set-key [f2] 'treemacs)

;; ivy
(ivy-mode 1)
(global-set-key (kbd "M-x") 'counsel-M-x) 
(evil-define-key 'normal 'global (kbd "<leader>.") 'counsel-find-file)
(define-key ivy-minibuffer-map (kbd "C-j") 'ivy-next-line)
(define-key ivy-minibuffer-map (kbd "C-k") 'ivy-previous-line)

;; melpa strings
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("ed68393e901a88b9feefea1abfa9a9c5983e166e4378c71bb92e636423bd94fd" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "24168c7e083ca0bbc87c68d3139ef39f072488703dcdd82343b8cab71c0f62a7" "78e6be576f4a526d212d5f9a8798e5706990216e9be10174e3f3b015b8662e27" "c8b83e7692e77f3e2e46c08177b673da6e41b307805cd1982da9e2ea2e90e6d7" "1436985fac77baf06193993d88fa7d6b358ad7d600c1e52d12e64a2f07f07176" default)))
 '(helm-M-x-reverse-history t)
 '(helm-minibuffer-history-mode t)
 '(package-selected-packages
   (quote
    (counsel ivy helm treemacs-evil treemacs telephone-line ## monokai-pro-theme dracula-theme evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

