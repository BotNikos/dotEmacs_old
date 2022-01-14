(setq user-full-name "Nikita Bolotov"
      user-mail-address "boss.nikitos1212@mail.ru")

;; envirovment settings
(set-frame-font "Fira Code 14" nil t)

(setq-default indent-tabs-moe nil)
(setq tab-width 4)
(setq indent-line-function 'insert-tab)

(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)

(add-hook 'html-mode-hook
          (lambda ()
            (set (make-local-variable 'sgml-basic-offset) 4)))

;; custom key-bindings
(global-set-key (kbd "C-/") 'comment-line)
(global-set-key (kbd "TAB") 'emmet-insert)

;; cusom functions
(defun emmet-insert ()
  (interactive)
  (setq current-position (point))
  (setq char-before (buffer-substring (- current-position 1) current-position))
  (if (or (equal char-before "\n") (equal char-before " "))
      (insert "    ")
    (emmet-expand-line nil)))

(setq doom-theme 'doom-dracula)


(setq org-directory "~/org/")

(setq display-line-numbers-type t)
