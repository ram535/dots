(ql:quickload "str")
(ql:quickload "fiveam")

(defun count-words (text)
  (if (str:empty? text)
      0
      (1+ (str:count-substring " " text))))


(fiveam:test count-words
  (fiveam:is (= 0 (count-words "")))
  (fiveam:is (= 1 (count-words "hola")))
  (fiveam:is (= 2 (count-words "hola lucky"))))

(fiveam:run!)
