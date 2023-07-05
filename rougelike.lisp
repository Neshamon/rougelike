;;;; rougelike.lisp

(in-package #:rougelike)

(defparameter *screen-width* 80)
(defparameter *screen-height* 50)

(defun draw ()
  (blt:clear)
  (setf (blt:color) (blt:white)
        (blt:cell-char 10 10) #\@)
  (blt:refresh))

(defun config ()
  "Configures the window with the specified size, title, and resizableness"
  (blt:set "window.resizable = true")
  (blt:set "window.size = ~Ax~A" *screen-width* *screen-height*)
  (blt:set "window.title = Rougelike"))

(defun main ()
  (blt:with-terminal 
    (config)
    (loop :do
          (draw)
          (blt:key-case (blt:read)
                        (:escape (return))
                        (:close (return))))))

