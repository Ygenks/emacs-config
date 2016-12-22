;;; emacs-rc-dev-latex --- Summary

;;; Commentary:
;; Settings only for Latex

;;; Code:
(require 'preview)
(require 'tex-site)
(require 'company-auctex)

(setq TeX-PDF-mode t)
(setq TeX-auto-save t)
(setq TeX-parse-self t)

(add-hook 'LaTeX-mode-hook
          '(lambda ()
            (set (make-local-variable 'company-backends)
             '(company-math-symbols-latex company-latex-commands
               company-auctex-labels company-auctex-bibs
               company-auctex-macros company-auctex-symbols
               company-auctex-environments))

            (define-key LaTeX-mode-map (kbd "$") 'self-insert-command)
            (add-hook 'write-contents-functions 'cleanup-buffer-notabs nil t)))

(provide 'emacs-rc-dev-latex)
;;; emacs-rc-dev-latex.el ends here
