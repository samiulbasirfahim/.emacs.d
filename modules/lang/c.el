(add-hook 'prog-mode-hook
          (lambda()
            (setq treesit-font-lock-level 4
                  c-ts-mode-indent-style 'k&r
                  c-ts-mode-indent-offset 4)))


(use-package cc-mode
  :mode (("\\.c\\'" . c-ts-mode) ("\\.cpp\\'" . c++-ts-mode) ("\\.h\\'" . c-ts-mode) ("\\.hpp\\'" . c++-ts-mode))
  :hook ((c-ts-mode . (lambda () (message "Configuring c-mode...")))
         (c++-ts-mode . (lambda () (message "Configuring c++-mode...")))
         (c-mode-common . (lambda () (message "Configuring c-mode common..."))))
  :config
  (setq c-basic-offset 4)
  (setq indent-tabs-mode nil)
  (setq tab-width 4)
)

(setq treesit-language-source-alist
      '((cpp "https://github.com/tree-sitter/tree-sitter-cpp")
        (c "https://github.com/tree-sitter/tree-sitter-c")
        (rust "https://github.com/tree-sitter/tree-sitter-rust")
        ))

(provide 'lang/c)
;;; c.el ends here
