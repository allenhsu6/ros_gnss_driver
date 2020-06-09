
(cl:in-package :asdf)

(defsystem "beginner_tutorials-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "greating" :depends-on ("_package_greating"))
    (:file "_package_greating" :depends-on ("_package"))
  ))