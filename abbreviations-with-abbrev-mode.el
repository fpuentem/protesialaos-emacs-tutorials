;; Happy hacking, renkel - Emacs ♥ you!
;; Happy hacking, renkel - Emacs ♥ you!


;; megit
;; https://github.com/protesilaos


;; M-x abbrev-mode is required
(define-abbrev global-abbrev-table "metest" "a global abbrev for demo purposes")
(define-abbrev text-mode-abbrev-table "metest" "text-mode abbrev expansion here")
(define-abbrev org-mode-abbrev-table "metest" "org-mode abbrev")

;; 'abbrev-mode' is buffer-local
(abbrev-mode 1) ; This is wrong

;; Parent mode: 'prog-mode' (programming), 'text-mode' (prose).
;; The following is correct. Remember the inheritance of major modes.
(add-hook 'text-mode-hook 'abbrev-mode)

(defun my-current-time ()
  (insert (format-time-string "%T")))

(my-current-time) 
;;00:45:02

(define-abbrev global-abbrev-table "medyn" "" 'my-current-time)
;; 23:50:08

(defun my-greet-person ()
  (interactive)
  (insert (format "Hello %s" (read-string "Great person: "))))


(define-abbrev global-abbrev-table "mehi" "" 'my-greet-person)

Hello Fab 
;; 23:50:08

(define-abbrev global-abbrev-table ":uni" "🦄")

;; Based on the Manual(C-h i). How to search by node and what NODE means?
;; Insert emoji M-x emoji-list
