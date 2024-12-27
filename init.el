(add-to-list 'load-path "~/.emacs.d/modules")

(defun reload-emacs() (interactive)
  (load-file "~/.emacs.d/init.el"))

(require 'core/straight)
(require 'core/sanity)

(require 'ui/theme)
(require 'ui/modeline)
