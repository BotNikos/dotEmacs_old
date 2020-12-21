;; Some default emacs settings
(setq user-full-name "Nikita Bolotov"
      user-mail-address "boss.nikitos1212@mail.ru")

(setq doom-theme 'doom-monokai-pro)

(set-frame-font "Monaco 15" nil t)
(global-set-key [f2] 'neotree-toggle)

(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

(setq tramp-default-method "ssh")
(setq tramp-auto-save-directory "~/tramp-autosave")

(setq org-directory "~/org/")
(setq display-line-numbers-type t)


;; My "FTP" to lycoris.su
(defun uploadAllToLycoris()
        "upload all files and directories to lycoris.su"
        (interactive)
        (shell-command "sh ~/uploadAll.sh")
        (message "All uploads complete"))

(defun uploadOneToLycoris()
        "upload one directory to lycoris.su"
        (interactive)
        (setq directory (read-string "Enter directory name for uploading: "))
        (shell-command (format "sh ~/uploadOne.sh %s" directory))
        (message "%s directory is uploaded" directory))


(defun downloadAllFromLycoris()
        "donwload all files and directories from lycoris.su"
        (interactive)
        (shell-command "sh ~/downloadAll.sh")
        (message "All downloads complete"))


(defun downloadOneFromLycoris()
        "download one directory from lycoris.su"
        (interactive)
        (setq directory (read-string "Enter directory name for downloading: "))
        (shell-command (format "sh ~/downloadOne.sh %s" directory))
        (message "%s directory is downloaded" directory))


(global-set-key (kbd "M-<f1>") 'uploadAllToLycoris)
(global-set-key (kbd "M-<f2>") 'uploadOneToLycoris)
(global-set-key (kbd "C-<f1>") 'downloadAllFromLycoris)
(global-set-key (kbd "C-<f2>") 'downloadOneFromLycoris)
