;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages/")
   t))

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;; 添加国内源
(setq package-archives
      '(("gnu"          . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
        ("melpa"        . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
        ("melpa-stable" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa-stable/")
        ("org"          . "https://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
        ("marmalade"    . "https://mirrors.tuna.tsinghua.edu.cn/elpa/marmalade/")))
;; 显示行号,并在行号和正文之间保留一个空格；参考：https://blog.csdn.net/cuma2369/article/details/107669036
;;(global-linum-mode 1)
;;(setq linum-format (lambda (line) (propertize (format (let ((w (length (number-to-string (count-lines (point-min) (point-max)))))) (concat "%" 
;;(number-to-string w) "d ")) line) 'face 'linum)))



;; 配置国内源b
(setq package-archives
      '(("gnu"          . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
        ("melpa"        . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
        ("melpa-stable" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa-stable/")
        ("org"          . "https://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
        ("marmalade"    . "https://mirrors.tuna.tsinghua.edu.cn/elpa/marmalade/")))

;; config org-mode
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

;; 新建标题默认不分割
(setq org-M-RET-may-split-line '((headline . nil)))

;; themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'solo-jazz t)
