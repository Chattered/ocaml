(push (concat (getenv "merlin") "/share/emacs/site-lisp") load-path)
(require 'merlin)
(require 'tuareg)
(add-to-list 'auto-mode-alist '("\\.mli?\\'" . tuareg-mode))
(autoload 'merlin-mode "merlin" "Merlin mode" t)
(add-hook 'tuareg-mode-hook 'merlin-mode)
(add-hook 'caml-mode-hook 'merlin-mode)

