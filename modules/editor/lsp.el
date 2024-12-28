;;; lsp.el --- -*- lexical-binding: t; -*-

;;; Commentary: LSP servers. They're good.

;;; Code:
(require 'use-package)
(require 'core/keybinds)

(global-unset-key (kbd "K"))

(general-create-definer lsp-leader-definer
  :states '(normal motion visual)
  :wrapping global-definer
  :prefix "SPC l"
  "" '(:ignore t :which-key "mode"))


(general-create-definer run-leader-definer
  :states '(normal motion visual)
  :wrapping global-definer
  :prefix "SPC r"
  "" '(:ignore t :which-key "mode"))


(use-package lsp-mode
  :straight t
  :init
  (setq read-process-output-max (* 1024 16))
  (setq lsp-headerline-breadcrumb-enable nil)
  (setq lsp-keymap-prefix "C-c l")
  (setq lsp-enable-snippet t)
  (setq lsp-inlay-hint-enable t)
  (setq lsp-completion-enable t)
  (setq lsp-enable-on-type-formatting t)
  (setq lsp-headerline-breadcrumb-enable nil)
  :hook
  (c-ts-mode     . lsp)
  (c++-ts-mode   . lsp)
  (rust-ts-mode  . lsp)
  (lsp-mode   . lsp-enable-which-key-integration)

  :general
  (lsp-leader-definer
   :keymaps 'lsp-mode-map
   "a" '(lsp-execute-code-action :wk "code action")
   "gd" '(lsp-find-declaration :wk "goto declaration")
   "gi" '(lsp-find-implementation :wk "goto implementation")
   "gr" '(lsp-find-references :wk "find references")
   "gD" '(lsp-find-definition :wk "go definition")
   "gp" '(xref-go-back :wk "go back")
   "gn" '(xref-go-forward :wk "go next"))
  (general-define-key
   :states 'normal
   :keymaps 'lsp-mode-map
   "K" 'lsp-describe-thing-at-point)

  :commands lsp)

(defun my-enable-company-mode ()
  "Enable company-mode for Emacs Lisp files."
  (company-mode 1))

(add-hook 'emacs-lisp-mode-hook 'my-enable-company-mode)

(use-package apheleia
  :straight t
  :general
  (lsp-leader-definer
   :keymaps 'lsp-mode-map
   "f" '(apheleia-format-buffer :wk "Format buffer"))

  :config
  (setf (alist-get 'clang-format apheleia-formatters)
        '("clang-format" "--style={IndentWidth: 4}")))

(provide 'editor/lsp)
;;; lsp.el ends here
