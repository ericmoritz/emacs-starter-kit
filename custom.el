;(global-font-lock-mode 1)
;(setq default-tab-width 4)
;(setq-default indent-tabs-mode nil)
;(put 'narrow-to-region 'disabled nil)

;disable backup.
(setq backup-inhibited t)


;(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
;(add-hook 'py-shell-hook 'ansi-color-for-comint-mode-on)

;; Load our custom libraries
(add-to-list 'load-path "~/.emacs.d/site-packages")
;(add-to-list 'load-path "~/.emacs.d/site-packages/org-mode")

(load "80-split.el")
(load "ideal-python-environment.el")
;(load "go-mode-load.el")
;(load "org-mode-load.el")

;; Window Movement Keys
(global-set-key "\C-c\C-p" 'windmove-up)
(global-set-key "\C-c\C-f" 'windmove-right)
(global-set-key "\C-c\C-n" 'windmove-down)
(global-set-key "\C-c\C-b" 'windmove-left)
(global-set-key "\C-c\C-b" 'windmove-left)
(global-set-key "\M-g\M-g" 'goto-line)

;; Always open the inital window at 79 chars
(do-80-split)

;; Turn on truncated lines
(setq-default truncate-lines t)

(add-hook 'python-mode-hook
          (lambda () (flyspell-prog-mode)))

(setq org-todo-keywords
             '((sequence "TODO(t)" "WAIT(w@/!)" "|" "DONE(d!)" "CANCELED(c@)")))


(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))

; Why isn't this built into erlang-mode? ugh
(add-to-list (quote auto-mode-alist) (cons "\\.erl$" (function erlang-mode)))
