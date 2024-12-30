;;; ui/misc ---  -*- lexical-binding: t; -*-

;;; Commentary:
;; disable and enable basic funtionality
;;; Code:
 
;; (use-package elcord)
;; (elcord-mode)


(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)
(blink-cursor-mode 0)
(fringe-mode -1)

(set-frame-parameter (selected-frame) 'alpha '(95 95))
(add-to-list 'default-frame-alist '(alpha 95 95))


(setq display-line-numbers-type 'relative)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;; Set default font to Rxen Sans
(set-face-attribute 'default nil
                    :family "Rxen Sans"
                    :height 180) ;; Adjust height as needed

;; Set font for Unicode symbols (Nerd Font)
(when (member "Symbols Nerd Font" (font-family-list))
  (set-fontset-font t 'unicode "Symbols Nerd Font" nil 'append))

;; Optional: Improve performance by limiting fontset fallback
(setq inhibit-compacting-font-caches t)


;; (add-to-list 'default-frame-alist
;;              '(font . "Rxen Sans-18"))

(provide 'ui/misc)
;;; misc.el ends here
