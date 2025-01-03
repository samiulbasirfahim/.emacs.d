;;; ui/modeline ---  -*- lexical-binding: t; -*-

;;; Commentary:
;; Modeline and tabline

(use-package centaur-tabs
  :demand
  :hook
  (dashboard-mode . centaur-tabs-local-mode)
  :config
  (centaur-tabs-mode t))

(use-package doom-modeline
  :ensure t
  :init
  (doom-modeline-mode 1))

(use-package all-the-icons
  :ensure t
  :after  doom-modeline)

(provide 'ui/modeline)
;;; modeline.el ends here
