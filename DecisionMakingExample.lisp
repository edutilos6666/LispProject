(defclass DecisionMakingExample ()
()
  )


(defmethod example1 ((ex DecisionMakingExample))
  (defparameter age 18)
  (if (and (> age 0) (< age 10))
    (format t "You are a kid.~%")
    (if (and (>= age 10) (< age 20))
      (format t "You are a teenager.~%")
      (if (and (>= age 20) (< age 50))
        (format t "You are an adult.~%")
        (format t "You are an elderly.~%")
        )
      )
    )



  (if (= age 10)
    (progn
      (format t "You are 10.~%")
      (format t "You are a kid.~%")
     )

    (progn
      (format t "You are not 10.~%")
      (format t "You are not a kid anymore.~%")
     )
    )
  )



(defmethod example2 ((ex DecisionMakingExample))
  (defparameter grade 'A)
  (case grade
    ('A (format t "You got an A.~%"))
    ('B (format t "You got a B.~%"))
    ('C (format t "You got a C.~%"))
    ('D (format t "You got a D.~%"))
    (otherwise (format t "You failed.~%"))
    )
  )


(defmethod example3 ((ex DecisionMakingExample))
  (defparameter age 10)
  (when (= age 10)
    (format t "You are 10.~%")
    (format t "You are a kid.~%")
    )
  )

(defmethod example4 ((ex DecisionMakingExample))
  (defparameter age 11)
  (unless (= age 10)
    (format t "You are not 10.~%")
    (format t "You are not a kid anymore.~%")
    )
  )

(defmethod example5 ((ex DecisionMakingExample))
  (defparameter age 10)
  (cond
    ((and (> age 0)(< age 10)) (format t "You are a kid.~%")  )
    ((and (>= age 10)(< age 20)) (format t "You are a teenager.~%") )
    ((and (>= age 20)(< age 50)) (format t "You are an adult.~%") )
    (t (format t "You are an elderly."))
    )
  )


(defvar ex (make-instance 'DecisionMakingExample))
(example1 ex)
(example2 ex)
(example3 ex)
(example4 ex)
(example5 ex)
