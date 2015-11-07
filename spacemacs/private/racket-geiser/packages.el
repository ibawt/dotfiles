;;; packages.el --- rust Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defvar racket-geiser-packages
  '(
    geiser
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defun racket-geiser/init-geiser ()
  (use-package geiser))

(defun racket-geiser/post-init-company()
  (add-hook 'scheme-mode-hook 'company-mode))

(defvar racket-geiser-excluded-packages '()
  "List of packages to exclude.")

(when (configuration-layer/layer-usedp 'auto-completion)
  (defun racket-geiser/post-init-company ()
    (spacemacs|add-company-hook racket-mode)))

;; For each package, define a function racket-geiser/init-<package-rust>
;;
;; (defun rust/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
