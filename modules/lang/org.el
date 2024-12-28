(use-package org
  :config
  (setq org-agenda-start-with-log-mode t)
  (setq org-log-done 'time)
  (setq org-log-into-drawer t)
  (setq org-ellipsis "..."
        org-hide-emphasis-markers t
        org-hide-leading-stars t
        org-agenda-files (append
                          (file-expand-wildcards "~/notes/*.org")))
  :hook (org-mode . org-indent-mode))

(use-package org-bullets
  :hook (org-mode . org-bullets-mode))

(use-package org-modern)
(add-hook 'org-mode-hook #'org-modern-mode)
(setq org-modern-block-fringe nil)
(setq org-modern-star nil)

(use-package evil-org
  :ensure t
  :after org
  :hook (org-mode . (lambda () evil-org-mode))
  :config
  ;; (require 'evil-org-agenda)
  ;; (evil-org-agenda-set-keys)
  )

(provide 'lang/org)
;;; org.el ends here
