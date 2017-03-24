(package-initialize)

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(add-to-list 'exec-path "/usr/local/bin")


;; Put all backup files in this directory.
(setq backup-directory-alist `(("." .  "~/.saves")))

;; Autoreload files when they change on disk.
(global-auto-revert-mode t)

;; Autocomplete super fast.
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 1)



;; Focus follows mouse.
(setq mouse-autoselect-window t)

;; Remote the GUI stuff.
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; highlight matching paren
(show-paren-mode 1)

;; Make mouse scrolling more comfortable.
(setq mouse-wheel-progressive-speed nil)

;; No bell.
(setq ring-bell-function 'ignore)

;; Allow people to use vim mode if they want with M-x evil-mode
(require 'evil)

;; A better M-x
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; Basic project hopping around.
(require 'projectile)
(projectile-global-mode)
(add-hook 'prog-mode-hook 'projectile-mode)

;; Fix ido - better fuzzying for projectile and friends
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)

;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)
(require 'ido)
(ido-mode t)
(setq ido-everywhere t)
(require 'ido-ubiquitous)
(ido-ubiquitous-mode 1)

;; Autocomplete
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;; Rainbow parens
(require 'rainbow-delimiters)

;; Geiser check
(add-hook 'scheme-mode-hook 'geiser-mode)
(setq geiser-default-implementation 'mit)
;; Get around geiser bug not associating repls with buffers.
(setq geiser-active-implementations '(mit))


(use-package parinfer
  :ensure t
  :bind
  (("C-," . parinfer-toggle-mode))
  :init
  (progn
    (setq parinfer-extensions
          '(defaults       ; should be included.
            pretty-parens  ; different paren styles for different modes.
            evil           ; If you use Evil.
            lispy          ; If you use Lispy. With this extension, you should install Lispy and do not enable lispy-mode directly.
            paredit        ; Introduce some paredit commands.
            smart-tab      ; C-b & C-f jump positions and smart shift with tab & S-tab.
            smart-yank))   ; Yank behavior depend on mode.
    (add-hook 'clojure-mode-hook #'parinfer-mode)
    (add-hook 'emacs-lisp-mode-hook #'parinfer-mode)
    (add-hook 'common-lisp-mode-hook #'parinfer-mode)
    (add-hook 'scheme-mode-hook #'parinfer-mode)
    (add-hook 'lisp-mode-hook #'parinfer-mode)))




