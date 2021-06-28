(defsystem "__PROJECT-NAME__"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on ("str")
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "__PROJECT-NAME__/tests"))))

(defsystem "__PROJECT-NAME__/tests"
  :author ""
  :license ""
  :depends-on ("__PROJECT-NAME__"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for __PROJECT-NAME__"
  :perform (test-op (op c) (symbol-call :rove :run c)))
