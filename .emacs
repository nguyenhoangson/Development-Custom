(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(custom-enabled-themes (quote (deeper-blue)))
 '(custom-safe-themes
   (quote
    ("f641bdb1b534a06baa5e05ffdb5039fb265fde2764fbfd9a90b0d23b75f3936b" default)))
 '(jde-jdk-registry (quote (("1.8.0" . "/usr/local/jdk1.8.0_60/")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :family "Inconsolata")))))

(setq load-path (cons (expand-file-name "~/.emacs.d/emacs-rails-reloaded") load-path))
  (require 'rails-autoload)

(add-to-list 'load-path "~/.emacs.d/jdee-2.4.1/lisp")

(load "jde")

(setq backup-directory-alist `(("." . "~/.saves")))

(setq backup-by-copying t)

(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)

(setq make-backup-files nil)

;; Customize source packages
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

;; Customize font type
;; Link: http://stackoverflow.com/questions/6026713/how-do-i-change-emacs-default-font-size-and-font-type
(custom-set-faces
 ;; custom-set-faces was added by Custom.x
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :family "Source Code Pro")))))

;; Customise themes
;; Link: https://github.com/don9z/blackboard-theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/blackboard-theme")

(load-theme 'blackboard t)


;;; ====================== CUSTOM KEYSTROKES ===========================

;; Bind magit-status buffer to custom shortcut keystrokes
(global-set-key (kbd "C-x g") 'magit-status)

;; Bind magit-remote-add buffer to custom shortcut keystrokes
(global-set-key (kbd "C-x r") 'magit-remote-add)

;; Move cursor to beginning or end of buffer
(global-set-key (kbd "C-t") 'beginning-of-buffer)
(global-set-key (kbd "C-b") 'end-of-buffer)

;; Save desktop session for future use
(desktop-save-mode 1)

