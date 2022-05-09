;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Oleh Bezhenar"
      user-mail-address "kolodach41@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "Hack Nerd Font Mono" :size 14 :weight 'semi-bold)
      doom-variable-pitch-font (font-spec :family "Hack Nerd Font Mono" :size 14 :weight 'semi-bold))


;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-gruvbox)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
(after! evil
  (setq evil-escape-delay 0.5)
  (setq evil-escape-key-sequence "jj"))

(after! org
  (setq org-agenda-files (list
                          (directory-files-recursively "~/org/" "\\.org$")
                          (directory-files-recursively "~/org-me/" "\\.org$")))
  (setq org-startup-with-inline-images t)
  (setq org-superstar-headline-bullets-list '("⁖" "◉" "○" "✸" "✿"))
  `org-download-enable
  (setq org-startup-with-inline-images t))

(org-babel-do-load-languages
    'org-babel-load-languages
    '((mermaid . t)
      (plantuml . t)
      (scheme . t)))

(setq org-plantuml-jar-path
  (expand-file-name "C:\\Users\\Oleh_Bezhenar\\.emacs.d\\plantuml.jar"))
(setq plantuml-jar-path
      (expand-file-name "C:\\Users\\Oleh_Bezhenar\\.emacs.d\\plantuml.jar"))

(let ((path (expand-file-name "C:\\Users\\Oleh_Bezhenar\\AppData\\Local\\Programs\\MiKTeX\\miktex\\bin\\x64")))
      (setenv "PATH" (concat path ":" (getenv "PATH")))
      (add-to-list 'exec-path path))

(let ((path (expand-file-name "C:\\Program Files (x86)\\Common Files\\Oracle\\Java\\javapath")))
      (setenv "PATH" (concat path ":" (getenv "PATH")))
      (add-to-list 'exec-path path))

;; (setenv "PATH" (concat (expand-file-name "C:\\Users\\Oleh_Bezhenar\\AppData\\Local\\Programs\\MiKTeX\\miktex\\bin\\x64") ":" (getenv "PATH")))
;; (add-to-list 'exec-path (expand-file-name "C:\\Users\\Oleh_Bezhenar\\AppData\\Local\\Programs\\MiKTeX\\miktex\\bin\\x64"))

(add-to-list
  'org-src-lang-modes '("plantuml" . plantuml))

(after! smooth-scrolling
  (smooth-scrolling-mode 1))

;; (let ((path1 (expand-file-name "C:\\Users\\Oleh_Bezhenar\\AppData\\Local\\Programs\\MiKTeX\\miktex\\bin\\x64")))
;;       (setenv "PATH" (concat path1 ":" (getenv "PATH")))
;;       (add-to-list 'exec-path path1))
;; (let ((path (expand-file-name "C:\\Program Files (x86)\\Common Files\\Oracle\\Java\\javapath")))
;;       (setenv "PATH" (concat path ":" (getenv "PATH")))
;;       (add-to-list 'exec-path path))
;; C:\Program Files (x86)\Common Files\Oracle\Java\javapath
;; (let ((my-path "C:\\texlive\\2022\\bin\\win32"))
;;      (setenv "PATH" (concat my-path ":" (getenv "PATH")))
;;      (add-to-list 'exec-path my-path))
;; (setenv "PATH" (concat "path-of-your-dvipng" ";" (getenv "PATH")))
;; (add-to-list 'exec-path "path-of-your-dvipng")
