(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/seti-theme-20150314.122")
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))

(add-hook 'after-init-hook 'global-company-mode)

(load-theme 'seti t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("94ba29363bfb7e06105f68d72b268f85981f7fba2ddef89331660033101eb5e5" default)))
 '(org-agenda-files
   (quote
    ("~/Sync/org/DarkSouls.org" "~/Sync/org/ctrl-j.io.org" "~/Sync/org/daily-stuff.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq ido-enable-flex-matching 1)
(setq ido-everywhere 1)
(ido-mode 1)

(global-set-key "\C-ca" 'org-agenda)


(add-hook 'elm-mode-hook #'elm-oracle-setup-completion)
