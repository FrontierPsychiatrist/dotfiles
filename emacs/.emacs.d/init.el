; Add Melpa to the config
; http://melpa.org/#/getting-started
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

; Enable use-package to manage installed packages
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(use-package magit
  :ensure t
  :config
  (setq magit-repository-directories '("/home/moritz/workspace")))

; Display icons for git changes on the left side
(use-package git-gutter
  :ensure t
  :config
  (global-git-gutter-mode 1))

; Browse "projects" (groups of files)
(use-package projectile
  :ensure t)

(use-package doom-themes
  :ensure t)
; In order to load the theme for each new client when running as daemon
; this hook is needed.
; See https://stackoverflow.com/questions/18904529/after-emacs-deamon-i-can-not-see-new-theme-in-emacsclient-frame-it-works-fr
(if (daemonp)
    (add-hook 'after-make-frame-functions
              (lambda (frame)
                (select-frame frame)
	        (load-theme 'doom-nord t)))
  (load-theme 'doom-nord t))

; General completion for opening files, commands etc
(use-package helm
  :ensure t
  :config
  ; Config ala https://github.com/emacs-helm/helm/wiki#helm-mode
  (global-set-key (kbd "M-x") #'helm-M-x)
  (global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
  (global-set-key (kbd "C-x C-f") #'helm-find-files)
  (helm-mode 1))

(use-package js
  :config
  (setq js-indent-level 2))

(use-package company
  :ensure t
  :config
  (add-hook 'after-init-hook 'global-company-mode))

; Vim key bindings
(use-package evil
  :ensure t
  :config
  (evil-mode 1))

; File tree browser with F8 key bound
(use-package neotree
  :ensure t
  :config
  (global-set-key [f8] 'neotree-toggle))

(use-package yaml-mode
  :ensure t)

; PATH env variable needed by elm-mode to find elm-make and node
(setenv "PATH" (concat (getenv "PATH") ":/home/moritz/.npm-packages/bin:/home/moritz/bin"))
(setq exec-path (append exec-path  '("/home/moritz/bin" "/home/moritz/.npm-packages/bin")))

; Don't generate tabs for indentation
(setq-default indent-tabs-mode nil)

; Delete trailing whitespace before saving any file
(add-hook 'before-save-hook 'delete-trailing-whitespace)

; Make company completions respect case
;(setq company-dabbrev-downcase nil)


;(setq ido-enable-flex-matching 1)
;(setq ido-everywhere 1)
;(ido-mode 1)

;(global-set-key "\C-ca" 'org-agenda)
;(load "~/.emacs.d/agenda-files.el")

;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
; '(custom-safe-themes
;   '("ecba61c2239fbef776a72b65295b88e5534e458dfe3e6d7d9f9cb353448a569e" default))
; '(package-selected-packages
;   '(projectile tide elm-mode doom-themes 2048-game cider org-mind-map magit helm evil company))
; '(projectile-mode t nil (projectile))
; '(typescript-auto-indent-flag nil)
; '(typescript-indent-level 2))
;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
; '(default ((t (:background "#151718" :foreground "#D4D7D6")))))

;(defun setup-tide-mode ()
;  (interactive)
;  (tide-setup)
;  (flycheck-mode +1)
;  (setq flycheck-check-syntax-automatically '(save-mode-enabled))
;  (setq tide-format-options '(:indentSize 2 :tabSize 2))
;  (eldoc-mode +1)
;  (tide-hl-identifier-mode +1)
;  (company-mode +1))
;(add-hook 'js2-mode-hook #'setup-tide-mode)
;(flycheck-add-next-checker 'javascript-eslint 'javascript-tide 'append)
;(setq company-tooltip-align-annotations t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(yaml-mode git-gutter neotree evil helm company doom-themes projectile magit use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
