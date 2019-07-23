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
 '(package-selected-packages (quote (nyan-mode))))
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
