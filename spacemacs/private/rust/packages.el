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

(defvar rust-packages
  '(
    rust-mode
    flycheck-rust
    toml-mode
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defun rust/init-rust-mode ()
  (use-package rust-mode
    :defer t
    ))
(defun rust/init-flycheck-rust ()
  (use-package flycheck-rust))

(defun rust/init-toml-mode ()
  (use-package toml-mode))

(defvar rust-excluded-packages '()
  "List of packages to exclude.")

(add-hook 'rust-mode-hook
          (lambda ()
            (smartparens-mode -1)
            (sp-pair "'" nil :actions :rem)))


;; For each package, define a function rust/init-<package-rust>
;;
;; (defun rust/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
