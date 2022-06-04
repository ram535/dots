(defpackage __PROJECT-NAME__
  (:use :cl)
  (:export #:count-words))

(in-package :__PROJECT-NAME__)

(defun count-words (text)
  (if (str:empty? text)
      0
      (1+ (str:count-substring " " text))))
