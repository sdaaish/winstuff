;; For more information on Emacs on W32, see https://www.gnu.org/software/emacs/manual/html_node/efaq-w32/
;; and https://www.emacswiki.org/emacs/MsWindowsDotEmacs
;; Use this file for builtin Customize-function

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

;;Load packages
(require 'package)
;;(setq package-check-signature nil)
(setq package-archives nil)
(add-to-list 'package-archives
	     '("melpa-stable"	. "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("melpa"	. "https://melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("gnu"	. "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives
	     '("org"	. "http://orgmode.org/elpa/") t)
;;(add-to-list 'package-archives
;;	     '("marmalade"	. "https://marmalade-repo.org/packages/"))
(package-initialize)
(unless (and (file-exists-p (concat user-emacs-directory "elpa/archives/gnu"))
             (file-exists-p (concat user-emacs-directory "elpa/archives/melpa"))
             (file-exists-p (concat user-emacs-directory "elpa/archives/melpa-stable"))
	     (file-exists-p (concat user-emacs-directory "elpa/archives/org")))
  (package-refresh-contents))

;;Load local stuff
(add-to-list 'load-path (concat user-emacs-directory "lisp"))
(let ((default-directory (concat user-emacs-directory "packages")))
  (normal-top-level-add-subdirs-to-load-path))
(setq epackage--sources-replace-table
      '(("git://github" "https://github")))
(load (concat user-emacs-directory (convert-standard-filename "epackage/00conf/epackage-loader")) 'noerr)
(autoload 'epackage-manager "epackage" "" t)

;;Load theme
(load-theme 'deeper-blue)

;; Startup settings
(setq inhibit-splash-screen t
      inhibit-startup-screen t
      initial-scratch-message nil
      initial-major-mode 'org-mode)

;; No menubar or toolbar
(menu-bar-mode -1)
(tool-bar-mode -1)

;;No beep
(setq visible-bell t)

;; Initial settings
(setq-default major-mode 'text-mode)
(line-number-mode t)
(column-number-mode t)
(transient-mark-mode t)
(show-paren-mode 1)
(setq-default line-spacing 1)
(setq tab-width 2
      tab-always-indent t)      ;;Use tabs as indents, 2ch width


;; Newline settings
(setq mode-require-final-newline t)
(setq next-line-add-newlines nil)
(setq require-final-newline t)

;; Press y or n for yes or no
(defalias 'yes-or-no-p 'y-or-n-p)

;; From https://github.com/magnars/.emacs.d
;; Write backup files to own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

;; Make backups of files, even when they're in version control
(setq delete-old-versions nil)
(setq version-control t)
(setq vc-make-backup-files t)

;; Save point position between sessions
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file (expand-file-name ".places" user-emacs-directory))

;; Save history of files
(setq savehist-file (expand-file-name ".savehist" user-emacs-directory))
(savehist-mode 1)
(setq history-length t)
(setq history-delete-duplicates t)
(setq savehist-save-minibuffer-history 1)
(setq savehist-additional-variables
      '(kill-ring
        search-ring
        regexp-search-ring))

;; Windows position and size
(setq initial-frame-alist
      '((top . 50)
	(left . 400)))
(set-frame-height (selected-frame) 60)
(set-frame-width (selected-frame) 120)
(transient-mark-mode t)
(show-paren-mode 1)
(setq inhibit-splash-screen t)
(setq-default line-spacing 1)       

;; language
(set-input-mode t nil 'iso)
(standard-display-8bit 160 255)

(autoload 'tidy-buffer "tidy" "Run Tidy HTML parser on current buffer" t)
(autoload 'tidy-parse-config-file "tidy" "Parse the `tidy-config-file'" t)
(autoload 'tidy-save-settings "tidy" "Save settings to `tidy-config-file'" t)
(autoload 'tidy-build-menu  "tidy" "Install an options menu for HTML Tidy." t)
(defun my-html-mode-hook () "Customize my html-mode."
  (tidy-build-menu html-mode-map)
  (local-set-key [(control c) (control c)] 'tidy-buffer)
  (setq sgml-validate-command "tidy"))
(add-hook 'html-mode-hook 'my-html-mode-hook)


(define-key global-map (kbd "RET") 'newline-and-indent)
   (add-hook 'f90-mode-hook (lambda ()
			      (local-set-key (kbd "RET") 'reindent-then-newline-and-indent)))

;;(global-set-key "\C-a" 'mark-whole-buffer)
;;(global-set-key "\C-f" 'isearch-forward)
;;(global-set-key "\C-o" 'find-file)
;;(global-set-key "\C-s" 'save-buffer)
;;(global-set-key "\C-w" 'kill-this-buffer)

 
