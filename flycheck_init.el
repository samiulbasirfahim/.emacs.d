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
(require 'lang/ts)
(require 'lang/svelte)


(setq custom-safe-themes t)
(setq custom-theme-directory "~/.emacs.d/themes")



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(doom-rose-pine))
 '(org-agenda-files '("~/docs/workout.org" "/home/rxen/docs/agenda/prisma.org")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
