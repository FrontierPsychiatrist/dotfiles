(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(defvar my-packages '(org company elm-mode seti-theme magit))

(dolist (package my-packages)
  (unless (package-installed-p package)
    (package-install package)))
