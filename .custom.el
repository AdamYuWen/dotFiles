;; Please note the color theme's name is "zenburn"
(load-theme 'zenburn t)

;; Full screen
(custom-set-variables '(initial-frame-alist (quote ((fullscreen . maximized)))))

;; Highlight line mode
(global-hl-line-mode t)
(set-face-background hl-line-face "dimgray" )

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Easy window switching.
(use-package ace-window
             :ensure t
             :init
             (progn
               (global-set-key [remap other-window] 'ace-window)
               (custom-set-faces
                '(aw-leading-char-face
                  ((t (:inherit ace-jump-face-foreground :height 3.0)))))
               ))

;; Bacon mode
;; flashes the cursor's line when you scroll
(use-package beacon
  :ensure t
  :config
  (beacon-mode 1)
  (setq beacon-color "#666600"))

;; Hungry Delete mode
;; deletes all the whitespace when you hit backspace or delete
(use-package hungry-delete
  :ensure t
  :config
  (global-hungry-delete-mode))

;; Expand Regoin
;; expand the marked region in semantic increments (negative prefix to reduce region)
(use-package expand-region
  :ensure t
  :config
  (global-set-key (kbd "C-=") 'er/expand-region))

;; iedit
(use-package iedit
  :ensure t)

;; on the fly syntax checking
(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode t))