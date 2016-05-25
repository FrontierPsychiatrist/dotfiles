(load "~/.emacs.d/my-packages.el")

(add-hook 'after-init-hook 'global-company-mode)
; Make company completions respect case
(setq company-dabbrev-downcase nil)

(load-theme 'seti t)

(setq ido-enable-flex-matching 1)
(setq ido-everywhere 1)
(ido-mode 1)

(global-set-key "\C-ca" 'org-agenda)
(load "~/.emacs.d/agenda-files.el")

(add-hook 'elm-mode-hook #'elm-oracle-setup-completion)

(require 'helm-config)
; bind the normal M-x to helm
(global-set-key (kbd "M-x") 'helm-M-x)
