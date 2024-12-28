;; Buffers.
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
  "d" '(kill-current-buffer :wk "kill buffer")
  "D" '(rxen/kill-other-buffers :wk "kill other buffers"))

(global-definer
  "," '(switch-to-buffer :wk "switch buffer")
)

(define-key evil-normal-state-map (kbd "<tab>") 'centaur-tabs-forward-tab)
(define-key evil-normal-state-map (kbd "C-<tab>") 'centaur-tabs-toggle-groups)
(define-key evil-normal-state-map (kbd "<backtab>") 'centaur-tabs-backward-tab)

;; More stuff.
(evil-collection-compile-setup)
(evil-collection-xref-setup)
(evil-collection-custom-setup)


(provide 'editor/keybinds)
;;; keybinds.el ends here
