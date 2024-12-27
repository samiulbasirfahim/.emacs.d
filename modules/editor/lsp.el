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

