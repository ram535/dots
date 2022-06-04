;;; -*- lexical-binding: t -*-

(require 'buttercup)
(require '__PROJECT-NAME__)

(describe "Count words"
  (it "should count the number of words"
    (expect 0 :to-be (count-words ""))
    (expect 1 :to-be (count-words "hola"))
    (expect 2 :to-be (count-words "hola lucky"))))

;;; test-__PROJECT-NAME__.el ends here
