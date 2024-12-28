(add-hook 'prog-mode-hook
          (lambda()
            (setq c-indentation-style 'k&r
                  c-basic-offset       4)))

(add-hook 'prog-mode-hook
          (lambda()
            (setq treesit-font-lock-level 4
                  c-ts-mode-indent-style 'k&r
                  c-ts-mode-indent-offset 4)))


(use-package cc-mode
  :mode (("\\.c\\'" . c-mode) ("\\.cpp\\'" . c++-mode) ("\\.h\\'" . c++-mode) ("\\.hpp\\'" . c++-mode))
  :hook ((c-mode . (lambda () (message "Configuring c-mode...")))
         (c++-mode . (lambda () (message "Configuring c++-mode...")))
         (c-mode-common . (lambda () (message "Configuring c-mode common..."))))
  :config
  (setq c-basic-offset 4)
  (setq indent-tabs-mode nil)
  (setq tab-width 4)
)


(provide 'lang/c)
;;; c.el ends here
