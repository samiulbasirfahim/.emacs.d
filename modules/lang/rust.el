(require 'editor/lsp)

(use-package rust-mode
  :straight t
  :init
  (setq rust-mode-treesitter-derive t)
  :config
  (setq lsp-rust-analyzer-cargo-watch-command "clippy")
  :general
  (run-leader-definer
    :keymaps 'lsp-mode-map
    "r" '(rust-run :wk "Rust run")
    "c" '(rust-check :wk "Rust check")
    "t" '(rust-test :wk "Rust test")
    "C" '(rust-compile :wk "Rust compile")))

(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-ts-mode))


(add-to-list 'treesit-language-source-alist
	     '(rust . ("https://github.com/tree-sitter/tree-sitter-rust")))

(provide 'lang/rust)
;;; rust.el ends here
