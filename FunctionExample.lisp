(defclass FunctionExample()
()
)

(defmethod example1 ((ex FunctionExample))
  (format t "<<example1()>>")
  (terpri)
  (defun hello()
    (print "Hello")
    (terpri)
    )

  (hello)


  (defun get-avg (num-1 num-2)
    (/ (+ num-1 num-2) 2)
    )
  (format t "Avg 10 & 50 = ~a~%" (get-avg 10 50))

  (defun print-list (w x &optional y z)
    (format t "List = ~a~%" (list w x y z))
    )

  (print-list 1 2 )
  (print-list 1 2 3)
  (print-list 1 2 3 4)

  (defvar *total* 0)
  (defun sum(&rest nums)
    (dolist (num nums)
            (setf *total* (+ *total* num))
            )
    (format t "Sum = ~a~%" *total*)
    )


  (sum 1 2 3 4 5)


  (defun print-list(&optional &key x y z)
    (format t "List = ~a~%" (list x y z))
    )

  (print-list :x 1 :y 2)
  (print-list :x 1 :y 2 :z 3)

  (defun print-list-2 (&key x y z)
    (format t "List = ~a~%" (list x y z))
    )

  (print-list-2 :x 1 :y 2 )


  (defun difference (num1 num2)
    (return-from difference(- num1 num2))
    )

  (format t "10 - 2 = ~a~%" (difference 10 2))


  (defun get-hero-data (size)
    (format t "~a~%"
            `(,(caar size) is ,(cadar size) and ,(cddar size))
            )
    )



  (defparameter *hero-size*
    '(
      (Superman (6 ft 3 in)(230 lbs))
      (Flash (6 ft 0 in) (190 lbs))
      (Batman (6 ft 2 in) (210 lbs))
      )
    )
  (get-hero-data *hero-size*)
  ; here #'numberp -> is a call to function numberp
  (format t "A number ~a~%" (mapcar #'numberp '(1 2 3 f g)))

  (format t "~a~%" (mapcar #'numberp '(1 2 3 a b c)))
)



(defmethod example2 ((ex FunctionExample))
  (format t "<<example2()>>")
  (terpri)
  ; flet for defining local functions
  (flet (
         (double-it (num)
                    (* num 2)
                    )
         )
        (format t "double-it 10 = ~a~%" (double-it 10))
        )


  (flet (
         (add (x y)
              (+ x y)
              )
         (sub (x y)
              (- x y)
              )
         (mul (x y)
              (* x y)
              )
         (div (x y)
              (/ x y)
              )
         )
        (setq x 10)
        (setq y 3)
        (setq add-res (add x y))
        (setq sub-res (sub x y))
        (setq mul-res (mul x y))
        (setq div-res (div x y))
        (format t "~a + ~a = ~a~%" x y add-res)
        (format t "~a - ~a = ~a~%" x y sub-res)
        (format t "~a * ~a = ~a~%" x y mul-res)
        (format t "~a / ~a = ~a~%" x y div-res)
        )

  )



(defmethod example3 ((ex FunctionExample))
  (format t "<<example3()>>")
  (terpri)
  ; with labels we can call one local fn
  ; from another local fn
  (labels (
         (add (x y)
              (+ x y)
              )
         (sub (x y)
              (- x y)
              )
         (mul (x y)
              (* x y)
              )
         (div (x y)
              (/ x y)
              )
         (combined-fn ()
           (setq x 10)
           (setq y 3)
           (setq add-res (add x y))
           (setq sub-res (sub x y))
           (setq mul-res (mul x y))
           (setq div-res (div x y))
           (format t "~a + ~a = ~a~%" x y add-res)
           (format t "~a - ~a = ~a~%" x y sub-res)
           (format t "~a * ~a = ~a~%" x y mul-res)
           (format t "~a / ~a = ~a~%" x y div-res)
         )
        )

          (combined-fn)



        )
  )


(defmethod example4 ((ex FunctionExample))
  (format t "<<example4()>>")
  (terpri)
  ; return multiple values
  (defun squares (num)
    (values (expt num 2) (expt num 3))
    )

  (multiple-value-bind (a b) (squares 2)
                       (format t "2^2 = ~d 2^3 = ~d~%" a b)
                       )
  )


(defmethod example5 ((ex FunctionExample))
  (format t "<<example5()>>")
  (terpri)
  ; higher-order functions
  (defun times-3 (x) (* 3 x))
  (defun times-4 (x) (* 4 x))

  (defun multiplies (mult-func max-num)
    (dotimes (x max-num)
             (format t "~d = ~d~%" x (funcall mult-func x))
             )
    )

  (multiplies #'times-3 10)
  (multiplies #'times-4 10)


  (defun execute-algo (algo  x y)
                (setq res (funcall algo x y))
                (format t "(algo x y ) = ~a~%" res)
                )

  (defun add (x y)
     (+ x y)
    )

  (defun sub(x y)
    (- x y)
    )

  (defun mult(x y)
    (* x y)
    )

  (defun div(x y)
     (/ x y)
    )
  (defvar x 10)
  (defvar y 3)
  (execute-algo #'add x y)
  (execute-algo #'sub x y)
  (execute-algo #'mult x y)
  (execute-algo #'div x y)

  )


(defmethod example6 ((ex FunctionExample))
  (format t "<<example6()>>")
  (terpri)
  ; lambda
  (setq res (mapcar (lambda (x) (* x 2)) '(1 2 3 4 5)))
  (format t "res = ~a~%" res)

  (defun execute-algo (algo  x y)
                (setq res (funcall algo x y))
                (format t "(algo x y ) = ~a~%" res)
                )
  (execute-algo (lambda (x y) (+ x y)) 10 3)
  (execute-algo (lambda (x y) (- x y)) 10 3)
  )


(setq ex (make-instance 'FunctionExample))
(example1 ex)
(example2 ex)
(example3 ex)
(example4 ex)
(example5 ex)
(example6 ex)
