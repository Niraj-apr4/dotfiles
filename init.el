;; enable melpa 
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; custom set variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cdlatex-paired-parens "$[{(")
 '(org-highlight-latex-and-related '(native script entities))
 '(package-selected-packages '(magit yasnippet cdlatex auctex evil use-package)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; set font size
(set-face-attribute 'default nil :height 110)

;; use package declaration
(eval-when-compile
  (require 'use-package))

;; VI key-bindings
(use-package evil
  :ensure t
  :config
  (evil-mode 1))

;; auctex settings
(use-package tex
  :ensure auctex
  :pin gnu
  :hook ((LaTeX-mode . prettify-symbols-mode)))

;; cdlatex settings
(use-package cdlatex
  :ensure t
  :hook (LaTeX-mode . turn-on-cdlatex))

;; yasnippet settings
(use-package yasnippet
  :ensure t)
              
;; magit
(use-package magit
  :ensure t)

;; org-mode settings
(add-hook 'org-mode-hook #'turn-on-org-cdlatex) ;; turn on org-cdlatex
