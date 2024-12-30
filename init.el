(add-to-list 'load-path "~/.emacs.d/modules")

(defun reload-emacs() (interactive)
  (load-file "~/.emacs.d/init.el"))

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
   '("7ec8fd456c0c117c99e3a3b16aaf09ed3fb91879f6601b1ea0eeaee9c6def5d9" "b5fd9c7429d52190235f2383e47d340d7ff769f141cd8f9e7a4629a81abc6b19" "541282f66e5cc83918994002667d2268f0a563205117860e71b7cb823c1a11e9" "6e33d3dd48bc8ed38fd501e84067d3c74dfabbfc6d345a92e24f39473096da3f" "f64189544da6f16bab285747d04a92bd57c7e7813d8c24c30f382f087d460a33" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
