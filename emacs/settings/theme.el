(setq custom-theme-directory (concat user-emacs-directory "themes"))
;; (load-theme 'monokai t)
(load-theme 'spolsky t)
(require-package 'sublime-themes)
(setq linum-format " %4d  ")

;; abcdefghijklmnopqrstuvwxyz
;; ABCDEFGHIJKLMNOPQRSTUVWXYZ
;; 1234567890
;; (set-default-font "UbuntuMono-18")
;; (set-default-font "Monaco-14")
;; (set-default-font "Inconsolata-17")
(set-default-font "DejaVuSansMono-14")
(setq default-frame-alist '((font . "DejaVuSansMono-14"))) ;; emacs --daemon

;; Smart Mode Line
(require-package 'smart-mode-line)
(setq sml/theme 'respectful
      sml/shorten-directory t
      sml/shorten-modes t
      sml/show-encoding t)
(sml/setup)

(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(menu-bar-mode -1)
(blink-cursor-mode -1)
(setq evil-default-cursor t)
(setq inhibit-startup-screen t)

(display-time-mode t)
(setq major-mode 'conf-mode
      display-time-24hr-format t
      display-time-day-and-date 0
      )
(display-battery-mode t)
(electric-indent-mode t)
(global-hl-line-mode -1)

(setq frame-title-format
      '("" invocation-name " : " (:eval (if (buffer-file-name)
                                            (abbreviate-file-name (buffer-file-name))
                                          "%b"))))

;; nice scrolling
(setq scroll-margin 1
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

;; mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; midnight mode purges buffers which haven't been displayed in 3 days
(require 'midnight)
(setq midnight-mode 't)

;; Show keystrokes in progress
(setq echo-keystrokes 0.1)

;; Transparently open compressed files
(auto-compression-mode t)

;; UTF-8 please
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; large gc threshold (5G)
(setq gc-cons-threshold 50000000)
