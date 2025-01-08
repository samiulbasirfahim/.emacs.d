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
;; (require 'editor/vterm)

(require 'lang/c)
(require 'lang/org)
(require 'lang/rust)
(require 'lang/nix)


(setq custom-safe-themes t)
(setq custom-theme-directory "~/.emacs.d/themes")



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(ef-cherie))
 '(custom-safe-themes
   '("ac893acecb0f1cf2b6ccea5c70ea97516c13c2b80c07f3292c21d6eb0cb45239" "09e98c608045c7778c67d5671161cfbb741cc25350abe61e3eb2ce798bb88209" "f053f92735d6d238461da8512b9c071a5ce3b9d972501f7a5e6682a90bf29725" default))
 '(org-agenda-files
   '("~/docs/notes/agenda/works.org" "/home/rxen/docs/notes/agenda/studies.org" "/home/rxen/docs/notes/agenda/habits.org")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
