(defclass HashTableExample ()
()
  )


(defmethod example1 ((ex HashTableExample))
  (format t "<<example1()>>")
  (terpri)
  (defparameter people (make-hash-table))
  (setf (gethash '102 people) '(Paul Smith))
  (setf (gethash '103 people) '(Sam Smith))
  (format t "people[102] = ~a~%" (gethash '102 people))

  (maphash #'(lambda (k v) (format t "~a = ~a~%" k v)) people)
  (remhash '103 people)
  (maphash #'(lambda (k v) (format t "~a= ~a~%" k v)) people)
  )

(setq ex (make-instance 'HashTableExample))
(example1 ex)
