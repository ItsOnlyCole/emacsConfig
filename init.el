;;------------------------------;;
;;          ItsOnlyCole         ;;
;;          EmacsConfig         ;;
;;------------------------------;;

(package-initialize)

;;Sets Up Melpa Package
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(display-line-numbers t)
 '(package-selected-packages
   (quote
    (dashboard all-the-icons page-break-lines shell-pop restart-emacs centaur-tabs nyan-mode)))
 '(shell-pop-universal-key "C-t"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;;----------------------;;
;;    Custom Package    ;;
;;       Settings       ;;
;;----------------------;;

;;---All The Icons---;;
(require 'all-the-icons)

;;---Centaur Tabs---;;
(require 'centaur-tabs)
(if window-system (centaur-tabs-mode t))
;;Keybinds are located in Custom Keybinds Section;;
(setq centaur-tabs-style "bar")
(setq centaur-tabs-set-icons t)
(setq centaur-tabs-set-bar 'left)
(setq centaur-tabs-set-modified-marker t)
;;(setq centaur-tabs-height 32)

;;---Dashboard---;;
;;To-DO: Configure Header and Footer;;
(require 'dashboard)
(dashboard-setup-startup-hook)
(setq dashboard-banner-logo-title "Welcome to Emacs Dashboard")
(setq dashboard-startup-banner 'official)
(setq dashboard-center-content t)
(setq dashboard-items '((bookmarks . 5)
                        (recents   . 5)))
(setq dashboard-set-heading-icons t)
(setq dashboard-set-file-icons t)
(setq dashboard-set-navigator t)

;;---Electric-Pair---;;
(defun electric-pair ()
 (interactive)
 (if (eolp) (let (parens-require-spaces) (insert-pair)) (self-insert-command 1)))

;;---IDO---;;
(require 'ido)
(ido-mode t)

;;---Nyan Mode Config---;;
(if window-system (nyan-mode 1))

;;---Page Break Lines---;;
(require 'page-break-lines)

;;----------------------;;
;;        Custom        ;;
;;       Keybinds       ;;
;;----------------------;;

;;---AutoIndent---;;
(define-key global-map (kbd "RET") 'newline-and-indent)

;;---Centaur Tabs---;;
(global-set-key (kbd "C-<left>") 'centaur-tabs-backward)
(global-set-key (kbd "C-<right>") 'centaur-tabs-forward)
