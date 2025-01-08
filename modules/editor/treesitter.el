(use-package evil-textobj-tree-sitter
  :after (evil treesit)
  :init
  (defun +tree-sitter-goto-textobj (group &optional previous end query)
    "Thin wrapper that returns the symbol of a named function, used in keybindings."
    (let ((sym (intern (format "+goto%s%s-%s" (if previous "-previous" "") (if end "-end" "") group))))
      (fset sym (lambda ()
                  (interactive)
                  (evil-textobj-tree-sitter-goto-textobj group previous end query)))
      sym))
  :general
  ;; Mapping textobjects
  (:keymaps 'evil-inner-text-objects-map
            ;; use evil-args 替代
            ;; "a" (evil-textobj-tree-sitter-get-textobj ("parameter.outer" "call.inner"))
            ;; bind `function.inner`(function block without name and args) to `f` for use in things like `vif`, `yif`
            "f" (evil-textobj-tree-sitter-get-textobj "function.inner")
            "F" (evil-textobj-tree-sitter-get-textobj "call.inner")
            "C" (evil-textobj-tree-sitter-get-textobj "class.inner")
            "v" (evil-textobj-tree-sitter-get-textobj "conditional.inner")
            "l" (evil-textobj-tree-sitter-get-textobj "loop.inner"))

  (:keymaps 'evil-outer-text-objects-map
            ;; 用 evil-args 替代
            ;; "a" (evil-textobj-tree-sitter-get-textobj ("parameter.outer" "call.outer"))
            ;; bind `function.outer`(entire function block) to `f` for use in things like `vaf`, `yaf`
            "f" (evil-textobj-tree-sitter-get-textobj "function.outer")
            "F" (evil-textobj-tree-sitter-get-textobj "call.outer")
            "C" (evil-textobj-tree-sitter-get-textobj "class.outer")
            "c" (evil-textobj-tree-sitter-get-textobj "comment.outer")
            "v" (evil-textobj-tree-sitter-get-textobj "conditional.outer")
            "l" (evil-textobj-tree-sitter-get-textobj "loop.outer")
            ;; Not Working
            "m" (evil-textobj-tree-sitter-get-textobj "import"
                  '((python-mode . [(import_statement) @import])
                    (rust-mode . [(use_declaration) @import]))))
  ;; Goto
  (:states '(normal) ; Previous
           "[ga" (+tree-sitter-goto-textobj "parameter.outer" t)
           "[gf" (+tree-sitter-goto-textobj "function.outer" t)
           "[gF" (+tree-sitter-goto-textobj "call.outer" t)
           "[gC" (+tree-sitter-goto-textobj "class.outer" t)
           "[gc" (+tree-sitter-goto-textobj "comment.outer" t)
           "[gv" (+tree-sitter-goto-textobj "conditional.outer" t)
           "[gl" (+tree-sitter-goto-textobj "loop.outer" t)
           )

  (:states '(normal) ; Next
           "]ga" (+tree-sitter-goto-textobj "parameter.outer")
           "]gf" (+tree-sitter-goto-textobj "function.outer")
           "]gF" (+tree-sitter-goto-textobj "call.outer")
           "]gC" (+tree-sitter-goto-textobj "class.outer")
           "]gc" (+tree-sitter-goto-textobj "comment.outer")
           "]gv" (+tree-sitter-goto-textobj "conditional.outer")
           "]gl" (+tree-sitter-goto-textobj "loop.outer")))

(with-eval-after-load 'which-key
  (setq which-key-allow-multiple-replacements t)
  (push '(("" . "\\`+?evil-textobj-tree-sitter-function--\\(.*\\)\\(?:.inner\\|.outer\\)") . (nil . "\\1"))
        which-key-replacement-alist))


(provide 'editor/treesitter)
;;; treesitter.el ends here
