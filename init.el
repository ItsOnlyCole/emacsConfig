;;------------------------------;;
;;          ItsOnlyCole         ;;
;;          EmacsConfig         ;;
;;------------------------------;;


(package-initialize)

;;Sets Up Melpa Package
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))


(custom-set-variables
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(display-line-numbers t)
 '(package-selected-packages (quote (nyan-mode))))
(custom-set-faces
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
