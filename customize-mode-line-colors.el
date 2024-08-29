;; Happy hacking, renkel - Emacs ♥ you!
;; Set face attributes but do not override a newly loaded theme

;; Purcell's emacs.d only use the default faces of Emacs
;; https://github.com/purcell/emacs.d/issues/459

;; M-x list-faces-display
;; M-x list-colors-display

;; `mode-line' and `mode-line-inactive'
(set-face-attribute 'mode-line nil
                    :background  nil
                    :foreground nil
                    :box nil)
