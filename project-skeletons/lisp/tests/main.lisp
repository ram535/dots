(defpackage __PROJECT-NAME__/tests/main
  (:use :cl
   :__PROJECT-NAME__
        :rove))
(in-package :__PROJECT-NAME__/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :__PROJECT-NAME__)' in your Lisp.

(deftest count-words
  (testing "should count 0 words"
    (ok (= 0 (count-words ""))))
  (testing "should count 1 word"
    (ok (= 1 (count-words "hola"))))
  (testing "should count 2 word"
    (ok (= 2 (count-words "hola lucky")))))
