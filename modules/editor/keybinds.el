;; Buffers.
(require 'use-package)


(defun rxen/org-reset-checkboxes-in-current-buffer-habits ()
  "Uncheck all checkboxes in habit entries in the current buffer."
  (interactive)
  (save-excursion
    (goto-char (point-min))
    ;; Loop over all headings with STYLE=habit
    (org-map-entries
     (lambda ()
       ;; Restrict to the subtree
       (org-narrow-to-subtree)
       (goto-char (point-min))
       ;; Iterate over all checkbox lines and uncheck them
       (while (re-search-forward "^- \\[X\\]" nil t)
         (replace-match "- [ ]"))
       (widen))
     "/+STYLE=\"habit\"" 'file)))

(use-package ace-window)
;; Windows.
(general-create-definer window-menu-definer
  :wrapping global-definer
  :prefix "SPC w"
  "" '(:ignore t :wk "window"))

(window-menu-definer
  "w" '(ace-window :wk "select window")
  "h" '(evil-window-left :wk "left")
  "j" '(evil-window-down :wk "down")
  "k" '(evil-window-up :wk "up")
  "l" '(evil-window-right :wk "right")
  "H" '(evil-window-decrease-width :wk "Width-")
  "J" '(evil-window-decrease-height :wk "Height-")
  "K" '(evil-window-increase-height :wk "Height+")
  "L" '(evil-window-increase-width :wk "Width+")
  "v" '(evil-window-vsplit :wk "vertical split")
  "s" '(evil-window-split :wk "horizontal split")
  "q" '(evil-window-delete :wk "close")
  "d" '(delete-other-windows :wk "close other")
  "f" '(toggle-frame-fullscreen :wk "toggle fullscreen")
  "=" '(balance-windows :wk "balance windows"))



(general-create-definer buffer-menu-definer
  :states '(normal motion)
  :wrapping global-definer
  :prefix "SPC b"
  "" '(:ignore t :wk "buffer"))

(defun rxen/kill-other-buffers ()
  "Kill all buffers but the current one.
Don't mess with special buffers."
  (interactive)
  (dolist (buffer (buffer-list))
    (unless (or (eql buffer (current-buffer)) (not (buffer-file-name buffer)))
      (kill-buffer buffer))))

(buffer-menu-definer
  "b" '(switch-to-buffer :wk "switch buffer")
  "q" '(kill-current-buffer :wk "kill buffer")
  "r" '(rxen/org-reset-checkboxes-in-current-buffer-habits :wk "Reset all checkboxes")
  "D" '(rxen/kill-other-buffers :wk "kill other buffers"))

(global-definer
  "," '(switch-to-buffer :wk "switch buffer")
  "q" '(kill-current-buffer :wk "kill buffer")
  "a" '(org-agenda :wk "Org agenda")
)

(define-key evil-normal-state-map (kbd "C-<tab>") 'centaur-tabs-toggle-groups)
(define-key evil-normal-state-map (kbd "H") 'centaur-tabs-backward-tab)
(define-key evil-normal-state-map (kbd "L") 'centaur-tabs-forward-tab)
(define-key evil-normal-state-map (kbd ":") 'counsel-M-x)

;; More stuff.
(evil-collection-compile-setup)
(evil-collection-xref-setup)
(evil-collection-custom-setup)


(provide 'editor/keybinds)
;;; keybinds.el ends here
