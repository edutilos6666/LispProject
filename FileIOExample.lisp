(defclass FileIOExample ()
()
)

(defmethod example1 ((ex FileIOExample))
  (format t "<<example1()>>")
  (terpri)
  ;;write
  (with-open-file (my-stream "test.txt"
        :direction :output
        :if-exists :supersede)
     (princ "Hello World" my-stream)
     (close my-stream)
    )

  ;; read
  (let ((in (open "test.txt" :if-does-not-exist nil)))
    (when in
      (loop for line = (read-line in nil)
        while line do (format t "~a~%" line)
        )

      (close in)
      )
    )
  )



(setq ex (make-instance 'FileIOExample))
(example1 ex)
