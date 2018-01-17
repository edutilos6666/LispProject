(defclass MacroExample ()
()
  )


(defmethod example1 ((ex MacroExample))
  (format t "<<example1()>>")
  (terpri)
  (defun add (num1 num2)
    (let ((sum (+ num1 num2)))
      (format t "~a + ~a = ~a ~%" num1 num2 sum)
      )
    )

  (add 10 3)

  ; our custom macro
  (defmacro letx (var val &body body)
    `(let ((,var,val)) ,@body)
    )

  (defun subtract (num1 num2)
    (letx dif (- num1 num2)
      (format t "~a - ~a = ~a~%" num1 num2 dif)
      )
    )

  (subtract 10 3)

  )


(setq ex (make-instance 'MacroExample))
(example1 ex)
