;;; packages.el --- DonaldY layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author:  <donal@DESKTOP-UDRBLVC>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `DonaldY-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `DonaldY/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `DonaldY/pre-init-PACKAGE' and/or
;;   `DonaldY/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst DonaldY-packages
  '(youdao-dictionary)
 )

;; 初始化 package
;; 可以使用 , d m 快捷键, 然后按下 e 展开宏
(defun DonaldY/init-youdao-dictionary()
  (use-package youdao-dictionary
    :defer t
    :init
    (spacemacs/set-leader-keys "oy" 'youdao-dictionary-search-at-point+)
    )
  )



;;; packages.el ends here
