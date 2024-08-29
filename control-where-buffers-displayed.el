;; Happy hacking, renkel - Emacs ♥ you!
(setq display-buffer-alist nil)

(defun my-test-delete-other-windows (window)
  (select-window window))

(defun my-test-select-window (window)
  (delete-other-windows window))

(setq display-buffer-alist
      '(
        ;; Anatomy of an entry
        ;; ( BUFFER-MATCHER(REGEX)
        ;;   LIST-OF-DISPLAY-FUNCTIONS
        ;;   &optional PARAMETERS)
        ("\\*Occur\\*"
         (display-buffer-reuse-window
          display-buffer-below-selected)
         ;; Parameters
         (window-height . fit-window-to-buffer)
         (dedicated . t)
         (body-function . my-test-body-function)
         )
        ))
;; Emacs: control where buffers are displayed (the 'display-buffer-alist')
;; Min 18.15 (July 20, 2024)
