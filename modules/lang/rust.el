(require 'editor/lsp)

(use-package rust-mode
  :straight t
  :init
  (setq rust-mode-treesitter-derive t)
  :general
  (run-leader-definer
    :keymaps 'lsp-mode-map
    "r" '(rust-run :wk "Rust run")
    "c" '(rust-check :wk "Rust check")
    "t" '(rust-test :wk "Rust test")
    "C" '(rust-compile :wk "Rust compile")))

(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-ts-mode))

(provide 'lang/rust)
;;; rust.el ends here
