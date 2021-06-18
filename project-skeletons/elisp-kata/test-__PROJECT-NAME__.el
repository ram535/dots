(require 'test-simple)
(test-simple-start)

(load-file "./__PROJECT-NAME__")

(assert-equal 0 #'aTest "some text")

(end-tests)
