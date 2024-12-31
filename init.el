(add-to-list 'load-path "~/.emacs.d/modules")

(defun reload-emacs() (interactive)
  (load-file "~/.emacs.d/init.el"))

(setq user-full-name "Samiul Basir Fahim"
      user-mail-address "samiulbasirfahim.rxen@gmail.com")

(require 'core/straight)
(require 'core/sanity)
(require 'core/keybinds)

(require 'ui/theme)
(require 'ui/modeline)
(require 'ui/misc)
(require 'ui/dashboard)

(require 'editor/counsel)
(require 'editor/completion)
(require 'editor/lsp)
(require 'editor/checker)
(require 'editor/keybinds)
(require 'editor/projectile)
(require 'editor/treesitter)
(require 'editor/vterm)

(require 'lang/c)
(require 'lang/org)
(require 'lang/rust)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(doom-city-lights))
 '(custom-safe-themes
   '("4e2e42e9306813763e2e62f115da71b485458a36e8b4c24e17a2168c45c9cf9d" "7ec8fd456c0c117c99e3a3b16aaf09ed3fb91879f6601b1ea0eeaee9c6def5d9" default))
 '(org-agenda-files
   '("~/notes/agenda/personal.org" "/home/rxen/notes/agenda/coding.org")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
