;;; lsp.el --- -*- lexical-binding: t; -*-

;;; Commentary: LSP servers. They're good.

;;; Code:
(require 'use-package)

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
  (c-mode     . lsp)
  (lisp-mode  . lsp)
  (rust-mode  . lsp)
  (c++-mode   . lsp)
  (lua-mode   . lsp)
  (lsp-mode   . lsp-enable-which-key-integration)
  :commands lsp)

(defun my-enable-company-mode ()
  "Enable company-mode for Emacs Lisp files."
  (company-mode 1))

(add-hook 'emacs-lisp-mode-hook 'my-enable-company-mode)


(use-package flycheck
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode))



(provide 'editor/lsp)
;;; lsp.el ends here
