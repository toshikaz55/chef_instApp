;;;  start.el

;; Seiji Zenitani's configuration for Emacs 22/23.
;; I put this file in ~/lib/emacs/ and then byte-compile it.
;; The *.elc file is loaded from the following .emacs.el:
;;
;; ;; load all *.elc files...
;; (mapcar (lambda (x)(load-file x))(directory-files "~/lib/emacs" t "\\.elc$"))

;; load path
(let ((default-directory (expand-file-name "~/.emacs.d/lisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)
    )
)

;; set language Japanese
(set-language-environment 'Japanese)
;; UTF-8
(prefer-coding-system 'utf-8)

;; 編集行のハイライト
(global-hl-line-mode)

;; basic setup
(setq inhibit-startup-message t)        ; don't show the startup message
(setq kill-whole-line t)                ; C-k deletes the end of line
(setq make-backup-files nil)            ; don't make *~
(setq auto-save-list-file-prefix nil)   ; don't make ~/.saves-PID-hostname
(setq auto-save-default nil)            ; disable auto-saving
(column-number-mode 1)
(display-time-mode 1)

(setq initial-frame-alist
      (append (list
	       '(width . 120)
	       '(height . 60)
	       )
      initial-frame-alist))


;; recentf
(require 'recentf)
(setq recentf-auto-cleanup 'never)
(setq recentf-max-saved-items 100)
(recentf-mode 1)

;; misc stuff
(setq htmlize-output-type 'font)

;; cursor type
(setq cursor-type 'box)

;; keys
(global-set-key "\C-z" 'undo)
(global-set-key "\C-x\C-b" 'electric-buffer-list)
(global-set-key "\C-c\C-i" 'indent-region) ; C-u C-c TAB => (un)indent-region
(global-set-key "\C-c;" 'comment-or-uncomment-region)
(global-set-key "\C-ck" (lambda ()(interactive)(kill-line 0)))
(global-set-key "\C-cu" 'untabify)


;; package instll
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
  (package-initialize)
)

;; --------- Window system ---------

(when window-system

(add-to-list 'default-frame-alist '(width . 90))
(add-to-list 'default-frame-alist '(height . 40))

;; default color
(add-to-list 'default-frame-alist '(cursor-color . "SlateBlue2"))
(add-to-list 'default-frame-alist '(cursor-type . box))
(add-to-list 'default-frame-alist '(mouse-color . "SlateBlue2"))
(add-to-list 'default-frame-alist '(foreground-color . "gray10"))
(add-to-list 'default-frame-alist '(background-color . "white"))
;(set-face-foreground 'modeline "white")
;(set-face-background 'modeline "SlateBlue2")
;(set-face-background 'region  "LightSteelBlue1")

;; faces
;(set-face-foreground 'font-lock-comment-face "MediumSeaGreen")
;(set-face-foreground 'font-lock-string-face  "purple")
;(set-face-foreground 'font-lock-keyword-face "blue")
;(set-face-foreground 'font-lock-function-name-face "blue")
;(set-face-bold-p 'font-lock-function-name-face t)
;(set-face-foreground 'font-lock-variable-name-face "black")
;(set-face-foreground 'font-lock-type-face "LightSeaGreen")
;(set-face-foreground 'font-lock-builtin-face "purple")
;(set-face-foreground 'font-lock-constant-face "black")
;(set-face-foreground 'font-lock-warning-face "blue")
;(set-face-bold-p 'font-lock-warning-face nil)

;; pc-selection-mode/transient-mark-mode
;(when (>= emacs-major-version 22)
;  (setq pc-select-selection-keys-only t)
;  (pc-selection-mode 1)
;  (set-scroll-bar-mode 'right)
;  )

;; nxhtml
(when (load "autostart" t)
  (setq nxhtml-skip-welcome t)
  )

;; additional menu
(require 'easymenu)
(setq my-encoding-map (make-sparse-keymap "Encoding Menu"))
(easy-menu-define my-encoding-menu my-encoding-map
  "Encoding Menu."
 '("Change File Encoding"
   ["UTF8 - Unix (LF)" (set-buffer-file-coding-system 'utf-8-unix) t]
   ["UTF8 - Mac (CR)" (set-buffer-file-coding-system 'utf-8-mac) t]
   ["UTF8 - Win (CR+LF)" (set-buffer-file-coding-system 'utf-8-dos) t]
   ["--" nil nil]
   ["Shift JIS - Mac (CR)" (set-buffer-file-coding-system 'sjis-mac) t]
   ["Shift JIS - Win (CR+LF)" (set-buffer-file-coding-system 'sjis-dos) t]
   ["--" nil nil]
   ["EUC - Unix (LF)"  (set-buffer-file-coding-system 'euc-jp-unix) t]
   ["JIS - Unix (LF)"  (set-buffer-file-coding-system 'junet-unix) t]
   ))
(define-key-after menu-bar-file-menu [my-file-separator]
  '("--" . nil) 'kill-buffer)
(define-key-after menu-bar-file-menu [my-encoding-menu]
  (cons "File Encoding" my-encoding-menu) 'my-file-separator)

)


;;jaspace.el を使った全角空白、タブ、改行表示モード
;;切り替えは M-x jaspace-mode-on or -off
(require 'jaspace)
;; 全角空白を表示させる。
(setq jaspace-alternate-jaspace-string "□")
;; 改行記号を表示させる。「⏎」はMacの環境依存文字
;(setq jaspace-alternate-eol-string "\xab\n")
(setq jaspace-alternate-eol-string "⏎\n")
;; タブ記号を表示。
;;(setq jaspace-highlight-tabs t)  ; highlight tabs

;; EXPERIMENTAL: On Emacs 21.3.50.1 (as of June 2004) or 22.0.5.1, a tab
;; character may also be shown as the alternate character if
;; font-lock-mode is enabled.
;; タブ記号を表示。
(setq jaspace-highlight-tabs ?^) ; use ^ as a tab marker


;; ShellモードでANSIカラーが文字化けするのを防ぐ
(autoload 'ansi-color-for-comint-mode-on "ansi-color" "Set `ansi-color-for-comint-mode' to t." t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)


;; タブ幅を 4 に設定
(setq-default tab-width 4)
;; タブ幅の倍数を設定
(setq tab-stop-list
  '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60))
;; タブはスペースではなくタブ
(setq-default indent-tabs-mode t)

(add-hook 'c-mode-common-hook
		  '(lambda ()
			 (c-set-style "GNU")
			 (setq c-basic-offset 4)
			 (setq c-tab-width 4 )
			 (setq c-tab-always-indent t)
			 (setq tab-width 4)
))


;;elscreen
(setq elscreen-prefix-key "\C-t")
(load "elscreen" "ElScreen" t)
;(elscreen-set-prefix-key "\C-t")


;;; start.el ends here.

