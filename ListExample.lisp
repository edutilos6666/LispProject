(defclass ListExample ()
()
)


(defmethod example1 ((ex ListExample))
  (format t "<<example1()>>")
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
  )


; Associative list
(defmethod example2 ((ex ListExample))
  (format t "<<example2()>>")
  (terpri)
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
  )


(setq ex (make-instance 'ListExample))
(example1 ex)
(example2 ex)
