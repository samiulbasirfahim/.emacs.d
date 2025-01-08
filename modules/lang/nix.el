(require 'editor/lsp)

(use-package nix-ts-mode
  :mode (("\\.nix\\'" . nix-ts-mode)))



(add-to-list 'treesit-language-source-alist
	     '(nix . ("https://github.com/nix-community/tree-sitter-nix")))



(provide 'lang/nix)
;;; nix.el ends here
