;; Don't bother me about symlinked files in version control.
(setq vc-follow-symlinks nil)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (sanityinc-tomorrow-eighties)))
 '(custom-safe-themes
   (quote
    ("67e998c3c23fe24ed0fb92b9de75011b92f35d3e89344157ae0d544d50a63a72" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" default)))
 '(go-impl-aliases-alist (quote (("hh" . "http.Handler") ("irw" . "io.ReadWriter"))))
 '(package-selected-packages
   (quote
    (ob-restclient restclient ob-http flycheck-gometalinter ox-gfm wsd-mode indicators go-impl htmlize rjsx-mode rainbow-delimiters deft color-theme-sanityinc-tomorrow markdown-mode projectile protobuf-mode noflet magit go-guru undo-tree linum-relative popwin go-add-tags yasnippet flycheck htmilize ox-reveal zenburn-theme which-key use-package try org-edna org-bullets counsel color-theme badger-theme auto-complete ace-window)))
 '(safe-local-variable-values (quote ((org-src-preserve-indentation . t)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
