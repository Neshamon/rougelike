;;;; rougelike.asd

(asdf:defsystem #:rougelike
  :description "Describe rougelike here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :depends-on (#:cl-blt)
  :components ((:file "package")
               (:file "rougelike")))
