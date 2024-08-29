;; Happy hacking, renkel - Emacs ♥ you!
(defun org-dblock-write:block-update-time (params)
  (let ((fmt (or (plist-get params :format) "%d. %m. %Y")))
    (insert "Last block update at: "
            (format-time-string fmt))))
(progn
  (vertico-mode 'toggle)
  (marginalia-mode 'toggle))

;; August 04, 2024
;; Emacs 29 'keymap-set', 'defvar-keymap'
(defun test-command ()
  (interactive) ; This makes the fucntion a "command"
  (message "This is a test!"))

(keymap-set global-map "C-t" 'test-command)

;; older version of Emacs
(define-key global-map (kbd "C-t") 'test-command)

;; Package?
(use-package PACKAGE
  :bind ("C-t" . :test-command))

(defvar-keymap my-test-prefix-buffer-map
  :doc "My prefix map for buffers."
  "s" #'switch-to-buffer
  "m" #'buffer-menu)

;;
(defvar-keymap my-test-prefix-map
  :doc "My prefix map."
  "f" 'find-file
  "b" my-test-prefix-buffer-map
  "d" 'dired
  "t" 'test-command)

(keymap-set global-map "C-t" my-test-prefix-map)




