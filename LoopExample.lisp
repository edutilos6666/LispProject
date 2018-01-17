(defclass LoopExample ()
() )


(defmethod example1 ((ex LoopExample))
  (format t "<<example1()>>~%")
  (loop for x from 1 to 10 do
    (format t "step = ~a~%" x)
    )
)

(defmethod example2 ((ex LoopExample))
  (format t "<<example2()>>")
  (terpri)
  (setq x 1)
  (loop
    (format t "step = ~a~%" x)
    (setq x (+ x 1))
    (when (> x 10) (return x))
    )
  )

(defmethod example3 ((ex LoopExample))
  (format t "<<example3()>>")
  (terpri)
  (dotimes (y 12)
           (format t "step = ~a~%" y)
           )
  )


(defparameter ex (make-instance 'LoopExample))
(example1 ex)
(example2 ex)
(example3 ex)
