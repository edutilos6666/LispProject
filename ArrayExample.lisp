(defclass ArrayExample ()
()
)

(defmethod example1 ((ex ArrayExample))
  (format t "<<example1()>>")
  (terpri)
  (defparameter names (make-array 3))
  (setf (aref names 1) 'Bob)
  (format t "names[0] = ~a~%" (aref names 1))

  (setf num-array (make-array '(3 3)
        :initial-contents '((0 1 2) (3 4 5) (6 7 8))
                              ))

  (dotimes (x 3)
           (dotimes (y 3)
                    (print (aref num-array x y))
                    )
           )
)

(setq ex (make-instance 'ArrayExample))
(example1 ex)
