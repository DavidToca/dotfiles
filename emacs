;; add files to loadpath
;; (add-to-list 'load-path "~/.emacs.d/rails-reloaded")
;; (add-to-list 'load-path "~/.emacs.d/ruby-mode")
(add-to-list 'load-path "~/.emacs.d/nav")


;; add to custom themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; requires
;; (require 'rails-autoload)
(require 'nav)
(require 'ido)
(require 'package)
(require 'windmove)

;; sets
(setq-default transient-mark-mode t)
(setq fill-column 20)
(setq next-line-add-newlines t)
(setq projectile-require-project-file nil)
(setq auto-save-visited-file-name t)
(setq auto-save-interval 1)
(setq auto-save-timeout 3)

;;set the temporary files of backup on temp file
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))

(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; activate modes
(ido-mode t)

;; activates rigth line numbers
(global-linum-mode t)

;; activates projectfille mode on ruby mode
(add-hook 'ruby-mode-hook 'projectile-mode t)



;; add marmale repo
(add-to-list 'package-archives
	         '("marmalade" .
		         "http://marmalade-repo.org/packages/"))

;; allowed color on shell mode
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;;initialize marmale
(package-initialize)

;;load python
(elpy-enable)

;; activate (color-theme-molokai) theme
;; (load-theme 'monokai t)
(load-theme 'molokai t)

;; delete suspent command
(global-unset-key "\C-z")

;; set Control-z as goto-line 
(global-set-key (kbd "C-z") 'goto-line)

;; automatically save buffers associated with files on buffer switch
;; and on windows switch
(defadvice switch-to-buffer (before save-buffer-now activate)
    (when buffer-file-name (save-buffer)))
(defadvice other-window (before other-window-now activate)
    (when buffer-file-name (save-buffer)))
(defadvice windmove-up (before other-window-now activate)
    (when buffer-file-name (save-buffer)))
(defadvice windmove-down (before other-window-now activate)
    (when buffer-file-name (save-buffer)))
(defadvice windmove-left (before other-window-now activate)
    (when buffer-file-name (save-buffer)))
(defadvice windmove-right (before other-window-now activate)
    (when buffer-file-name (save-buffer)))

;; add copy-line function

(defun copy-line (&optional arg)
    "Do a kill-line but copy rather than kill.  This function directly calls
kill-line, so see documentation of kill-line for how to use it including prefix
argument and relevant variables.  This function works by temporarily making the
buffer read-only, so I suggest setting kill-read-only-ok to t."
      (interactive "P")
        (toggle-read-only 1)
	  (kill-line arg)
	    (toggle-read-only 0))

(setq-default kill-read-only-ok t)
(global-set-key "\C-c\C-k" 'copy-line)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("4325f9a9fb853d0116a1197ece0dc22027ae67ef798efa6e05e009fe41e2f899" "71efabb175ea1cf5c9768f10dad62bb2606f41d110152f4ace675325d28df8bd" "301f218fa2357b2aa2a433e049f87e059c5ba2ad8b161634d758fbf007bf1d0a" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )






















