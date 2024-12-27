(use-package dashboard
  :straight t
  :config
  (dashboard-setup-startup-hook))
(setq dashboard-items '((recents   . 3)
                        (bookmarks . 3)
                        ;; (agenda    . 3)
                        ))
(setq dashboard-startup-banner "~/.emacs.d/avatar.png")
(setq initial-buffer-choice (lambda () (get-buffer-create dashboard-buffer-name)))

(provide 'ui/dashboard)
;;; dashboard.el ends here
