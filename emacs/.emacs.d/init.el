
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
; PATH env variable needed by elm-mode to find elm-make and node
(setenv "PATH" (concat (getenv "PATH") ":/home/moritz/.npm-packages/bin:/home/moritz/bin"))
(setq exec-path (append exec-path  '("/home/moritz/bin" "/home/moritz/.npm-packages/bin")))

(load "~/.emacs.d/my-packages.el")

(add-hook 'after-init-hook 'global-company-mode)
; Make company completions respect case
(setq company-dabbrev-downcase nil)

(load-theme 'doom-nord t)

(setq ido-enable-flex-matching 1)
(setq ido-everywhere 1)
(ido-mode 1)

(global-set-key "\C-ca" 'org-agenda)
(load "~/.emacs.d/agenda-files.el")

(require 'helm-config)
; bind the normal M-x to helm
(global-set-key (kbd "M-x") 'helm-M-x)

(setq magit-repository-directories '("/home/moritz/workspace"))

(setq-default indent-tabs-mode nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("ecba61c2239fbef776a72b65295b88e5534e458dfe3e6d7d9f9cb353448a569e" default))
 '(package-selected-packages
   '(projectile tide elm-mode doom-themes 2048-game cider org-mind-map magit helm evil company))
 '(projectile-mode t nil (projectile))
 '(typescript-auto-indent-flag nil)
 '(typescript-indent-level 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background "#151718" :foreground "#D4D7D6")))))

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save-mode-enabled))
  (setq tide-format-options '(:indentSize 2 :tabSize 2))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (company-mode +1))
;(add-hook 'js2-mode-hook #'setup-tide-mode)
;(flycheck-add-next-checker 'javascript-eslint 'javascript-tide 'append)
(setq company-tooltip-align-annotations t)

(setq js-indent-level 2)
