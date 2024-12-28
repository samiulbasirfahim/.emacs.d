;;; ui/theme ---  -*- lexical-binding: t; -*-

;;; Commentary:
;; Load up my current theme, whatever that may be.

;;; Code:
(require 'use-package)

(use-package remember-last-theme
  :config (remember-last-theme-enable))

(use-package doom-themes)
(use-package ef-themes)
(use-package catppuccin-theme)

;; (straight-use-package
;;  '(kanagawa
;;    :host github
;;    :repo "emacsmirror/kanagawa-themes"
;;    :branch "main"))

(provide 'ui/theme)
;;; theme.el ends here
