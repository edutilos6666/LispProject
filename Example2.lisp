(format t "Hello world~%")
(print "What's your name ")
(setf *name* "edutilos")
; (defvar *name* (read))
(format t "your name = ~a~%" *name*)

(defun hello-you (*name*)
  (format t "Hello ~a!~%" *name*)
)



(setq *print-case* :capitalize)
(hello-you *name*)
(setq *print-case* :downcase)
(hello-you *name*)
(setq *print-case* :upcase)
(hello-you *name*)

(defun simple-math (x y)
  (setf add (+ x y))
  (setf sub (- x y))
  (setf mul (* x y))
  (setf div (/ x y))
  (format t "~a + ~a = ~a~%" x y add)
  (format t "~a  - ~a = ~a~%" x y sub)
  (format t "~a * ~a = ~a~%" x y mul)
  (format t "~a / ~a = ~a~%" x y div)
)

(simple-math 10 3)



(let ((var-1 5)
  (var-2 10))
(print (+ var-1 var-2))
(terpri)
)


(format t "Number with commas ~:d~%" 1000000)
(format t "PI to 5 characters ~5f~%" 3.1415939)
(format t "Pi to 4 decimals ~,4f~%" 3.141593)
(format t "10 Percent ~,,f~%" .10)
(format t "10 Dollars ~$ ~%" 10)

; Math Functions
(format t "(+ 5 4) = ~d~%" (+ 5 4))
(format t "(- 5 4) = ~d~%" (- 5 4))
(format t "(* 5 4) = ~d~%" (* 5 4))
(format t "(/ 5 4) = ~d~%" (/ 5 4))
(format t "(/ 5 4.0) = ~d~%" (/ 5 4.0))
(format t "(rem 5 4) = ~d~%" (rem 5 4))
(format t "(mod 5 4) = ~d~%" (mod 5 4))
(format t "(expt 4 2) = ~d~%" (expt 4 2))
(format t "(sqrt 81) = ~d~%" (sqrt 81))
(format t "(exp 1) = ~d~%" (exp 1))
(format t "(log 1000 10) = ~d~%" (log 1000 10))
(format t "(eq 'dog 'dog) = ~d~%" (eq 'dog 'dog))
(format t "(floor 5.5) = ~d~%" (floor 5.5))
(format t "(ceiling 5.5) = ~d~%" (ceiling 5.5))
(format t "(max 5 10) = ~d~%" (max 5 10))
(format t "(min 5 10) = ~d~%" (min 5 10))
(format t "(oddp 15) = ~d~%" (oddp 15))
(format t "(evenp 15) = ~d~%" (evenp 15))
(format t "(numberp 2) = ~d~%" (numberp 2))
(format t "(null nil) = ~d~%" (null nil))
(format t "(sin (asin 1)) = ~d~%" (sin (asin 1)))
(format t "(cos (acos 1)) = ~d~%" (cos (acos 1)))
(format t "(tan (atan 1)) = ~d~%" (tan (atan 1)))
(format t "(sinh (asinh 1)) = ~d~%" (sinh (asinh 1)))
(format t "(cosh (acosh 1)) = ~d~%" (cosh (acosh 1)))
(format t "(tanh (atanh 0.99)) = ~d~%" (tanh (atanh 0.99)))


; Equality
(defparameter *name* 'Derek)
(format t "(eq *name* Derek) = ~d~%" (eq *name* 'Derek))
(format t "(equal 'car 'truck) = ~d~%" (equal 'car 'truck))
(format t "(equal 10 10) = ~d~%" (equal 10 10))
(format t "(equal 5.5 5.3) = ~d~%" (equal 5.5 5.3))
(format t "(equal \"string\"  \"String\") = ~d~%" (equal "string" "String"))
(format t "(equal (list 1 2 3) (list 1 2 3)) = ~d~%" (equal (list 1 2 3)
   (list 1 2 3)))
(format t "(equalp 1.0 1) = ~d~%" (equalp 1.0 1))
(format t "(equalp Derek derek = ~d~%" (equalp "Derek" "derek"))


; Conditionals
(defparameter *age* 18)
(if (= *age* 18)
  (format t "You can vote~%")
  (format t "You can't vote~%")
)

(if (not (= *age* 18))
  (format t "You can vote~%")
  (format t "You can't vote~%")
  )


(if (and (>= *age* 18) (<= *age* 67))
  (format t "Time for work~%")
  (format t "Work if you want~%")
)

(if (or (<= *age* 14) (>= *age* 67))
  (format t "You shouldn't work~%")
  (format t "You should work~%")
)

(defparameter *age* 49)
(if (and (> *age* 0) (< *age* 10))
  (format t "You are a kid.~%")
  (if (and (>= *age* 10) (< *age* 20))
    (format t "You are a teenager.~%")
    (if (and (>= *age* 20) (< *age* 50))
      (format t "You are an adult.~%")
      (format t "You are an elderly.~%")
      )
    )
)


(defparameter *num* 2)
(defparameter *num-2* 2)
(defparameter *num-3* 2)

(if (= *num* 2)
  (progn
   (setf *num-2* (* *num-2* 2))
   (setf *num-3* (* *num-3* 3))
   )
  (format t "Not equal to 2~%")
  )

(format t "*num-2* = ~d~%" *num-2*)
(format t "*num-3* = ~d~%" *num-3*)


(defun get-school (age)
  (case age
    (5 (print "Kindergarten"))
    (6 (print "First Grade"))
    (otherwise '(middle school))
    )
  )

(get-school 5)
(get-school 6)
(get-school 10)

(terpri)

(setf *age* 18)
(when (= *age* 18)
  (setf *num-3* 18)
  (format t "Go to college you're ~d~%" *num-3*)
  )


(unless (not (= *age* 18))
  (setf *num-3* 20)
  (format t "Something Random ~%")
  )

(format t "*num-3* = ~d~%" *num-3*)


(defvar *college-ready* nil)

; cond is like if else if else
(cond ((>= *age* 18)
       (setf *college-ready* 'yes)
       (format t "Ready for College ~%"))
  ((< *age* 18)
   (setf *colege-ready* 'no)
   (format t "Not Ready for College~%")
   )
  (t (format t "Don't Know~%"))

       )


; looping
(loop for x from 1 to 10 do
  (print x))


(setq x 1)
(loop
  (format t "~d~%" x)
  (setq x (+ x 1))
  (when (> x 10) (return x))
  )


(loop for x from 1 to 10 do
  (print x)
  )

(terpri)

(setq x 1)
(loop
  (format t "x = ~d~%" x)
  (setq x (+ x 1))
  (when (>=  x 10) (return x))
  )


(loop for x in '(Petere Paul Mary) do
  (format t "~s and ~a~%" x x)
  )

(setq *print-case* :downcase)
(loop for y from 100 to 110 do
  (print y)
  )

(terpri)

(dotimes (y 12)
         (print y)
         )

(terpri)
(format t "~a~%" (cons 'superman 'batman))
(format t "~a~%" (list 'superman 'batman 'flash))
(format t "~a~%" (cons 'aquaman '(superman batman)))
(format t "First = ~a~%" (car '(superman batman aquaman)))
(setq names '("foo" "bar" "bim" "pako" "deko" "ceko"))
(format t "first name = ~a~%" (car names))
(format t "rest names = ~a~%" (cdr names))
(format t "second name = ~a~%" (cadr names))
(format t "third name = ~a~%" (caddr names))
(format t "fourth name = ~a~%" (cadddr names))
(format t "fourth name = ~a~%" (cddddr names))

(setq l1 '((foo bar) (edu tilos) (leo messi)))
(format t "l1[1][1] = ~a~%" (cadadr l1))
(format t "l1[2][1] = ~a~%" (cadddr l1))
(format t "Is l1 list? = ~a~%" (listp l1))
(format t "is foo in names= ? ~a~%" (if (member "foo" names) 't nil))
(format t "~a~%" (member "bar" names))
(setq numbers '(10 20 30 40 50))
(format t "~a~%" (if (member 10 numbers) 't nil))


(setq l1 '(foo))
(setq l2 '(bar))
(setq l3 '(bim pako))
(setq combined-list  (append l1 l2 l3))
(format t "combined-list = ~a~%" combined-list)

(defparameter *nums* '(2 4 6))
(push 1 *nums*)
(format t "nums[1] = ~a~%" (nth 2 *nums*))

(defvar person (list :id 1 :name "foo" :age 10 :wage 100.0 :active t))
(dolist (prop person)
        (format t "~a~%" prop)
)
(format t "~{~a: ~a ~}~%" person)
(format t "~a~%" person)

; association list
(defparameter *heroes*
  '(
    (Superman (Clark Kent))
    (Flash (Barry Allen))
    (Batman (Bruce Waye))
    )
  )

(format t "Superman Data ~a~%" (assoc 'superman *heroes*))
(format t "Flash Data = ~a~%" (assoc 'flash *heroes*))
(format t "Supermans is ~a~%" (cadr (assoc 'superman *heroes*)))


(defparameter *hero-size*
  '(
    (Superman (6 ft 3 in)(230 lbs))
    (Flash (6 ft 0 in) (190 lbs))
    (Batman (6 ft 2 in) (210 lbs))
    )
  )

(format t "Superman is ~a~%" (cadr (assoc 'Superman *hero-size*)))
(format t "Flash is ~a~%" (cadr (assoc 'Flash *hero-size*)))
(format t "Batman is ~a~%" (cadr (assoc 'Batman *hero-size*)))


; functions
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

(get-hero-data *hero-size*)

; here #'numberp -> is a call to function numberp
(format t "A number ~a~%" (mapcar #'numberp '(1 2 3 f g)))

(format t "~a~%" (mapcar #'numberp '(1 2 3 a b c)))

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


; return multiple values
(defun squares (num)
  (values (expt num 2) (expt num 3))
  )

(multiple-value-bind (a b) (squares 2)
                     (format t "2^2 = ~d 2^3 = ~d~%" a b)
                     )


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

; lambda
(setq res (mapcar (lambda (x) (* x 2)) '(1 2 3 4 5)))
(format t "res = ~a~%" res)

(execute-algo (lambda (x y) (+ x y)) 10 3)
(execute-algo (lambda (x y) (- x y)) 10 3)


; macros
; (defvar *num* 2)
; (defvar *num-2* 0)
; (if (= *num* 2)
;   (progn
;    (setf *num-2* 2)
;    (format t "*num-2* = ~a~%" *num-2*)
;    )
;   (format t "Not equal to 2 ~%")
;   )
;
;; That does not work
; (defmacro ifit (condition &rest body)
;   `(if ,condition(progn, @body) (format t "Can't Drive ~%"))
;   )
;
; (setf *age* 16)
; (ifit (>= *age* 16)
;   (print "You are over 16")
;   (print "Time to Drive")
;   (terpri)
;   )


(defun add (num1 num2)
  (let ((sum (+ num1 num2)))
    (format t "~a + ~a = ~a ~%" num1 num2 sum)
    )
  )

(add 10 3)


(defmacro letx (var val &body body)
  `(let ((,var,val)) ,@body)
  )

(defun subtract (num1 num2)
  (letx dif (- num1 num2)
    (format t "~a - ~a = ~a~%" num1 num2 dif)
    )
  )

(subtract 10 3)


(defmacro letx2 (var val &body body)
  `(let ((,var,val)) ,@body)
  )


; Arrays
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


; Hash Table
(defparameter people (make-hash-table))
(setf (gethash '102 people) '(Paul Smith))
(setf (gethash '103 people) '(Sam Smith))
(format t "people[102] = ~a~%" (gethash '102 people))

(maphash #'(lambda (k v) (format t "~a = ~a~%" k v)) people)
(remhash '103 people)
(maphash #'(lambda (k v) (format t "~a= ~a~%" k v)) people)



; FileIO
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
