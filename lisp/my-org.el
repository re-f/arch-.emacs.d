;; agenda
(setq org-agenda-files (list "~/Dropbox/knowledgebase"))

;; config org-mode
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)

;; capture
(global-set-key (kbd "C-c c") 'org-capture)
(setq org-default-notes-file "~/Dropbox/knowledgebase/inbox.org")

;; todo
(setq org-enforce-todo-dependencies t)
(provide 'my-org)