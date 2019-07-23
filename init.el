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
 '(package-selected-packages (quote (centaur-tabs nyan-mode))))
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

;;---Nyan Mode Config---;;
(nyan-mode 1)

;;---Electric-Pair---;;
(defun electric-pair ()
 (interactive)
 (if (eolp) (let (parens-require-spaces) (insert-pair)) (self-insert-command 1)))

;;---IDO---;;
(require 'ido)
(ido-mode t)

;;---Centaur Tabs---;;
;(require 'centaur-tabs)
;(centaur-tabs-mode t)
;(global-set-key (kbd "C-<left>") 'centaur-tabs-backward)
;(global-set-key (kbd "C-<right>") 'centaur-tabs-forward)
;(setq centaur-tabs-style "bar")
;(setq centaur-tabs-set-icons t)
;(setq centaur-tabs-set-bar 'left)
;(setq centaur-tabs-set-modified-marker t)
;;(setq centaur-tabs-height 32)

;;----------------------;;
;;        Custom        ;;
;;       Keybinds       ;;
;;----------------------;;

;;---AutoIndent---;;
(define-key global-map (kbd "RET") 'newline-and-indent)
