(require 'use-package)

(use-package typescript-ts-mode)

(use-package web-mode)

(add-to-list 'treesit-language-source-alist
	     '(typescript . ("https://github.com/tree-sitter/tree-sitter-typescript" "master" "typescript/src")))

(add-to-list 'treesit-language-source-alist
             '(tsx . ("https://github.com/tree-sitter/tree-sitter-typescript" "master" "tsx/src")))

(add-hook 'tsx-ts-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)
            (setq tab-width 4)
            (setq indent-width 4)))

(add-hook 'typescript-ts-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)
            (setq typescript-ts-mode-indent-offset 4)
            (setq tab-width 4)
            (setq indent-width 4)))

(use-package lsp-tailwindcss
  :custom
  (lsp-tailwindcss-server-path (executable-find "tailwindcss-language-server"))
  ;; NOTE: this package and/or `lsp-tailwindcss-server' do something
  ;; dumb for commpletions which causes the server to always return
  ;; huge responses with all possible tailwindcss classes. Increasing
  ;; `gc-cons-threshold' and `read-process-output-max' by a lot is the
  ;; only way to not get Emacs stuck on completion requests.
  (gc-cons-threshold 100000000)
  (read-process-output-max (* 10 1024 1024)) ; 10mb.
  :init
  (setq lsp-tailwindcss-add-on-mode t)
  (setq lsp-tailwindcss-skip-config-check t))


(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-ts-mode))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . tsx-ts-mode))

(provide 'lang/tsx)
;;; tsx.el ends here
