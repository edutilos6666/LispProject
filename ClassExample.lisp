(defclass ClassExample ()
()
)

(defmethod example1 ((ex ClassExample))
  (format t "<<example1()>>")
  (terpri)
  (defclass Person()
    (id name age wage active)
  )


  (defparameter p1 (make-instance 'Person))
  (setf (slot-value p1 'id) 1)
  (setf (slot-value p1 'name) "foo")
  (setf (slot-value p1 'age) 10)
  (setf (slot-value p1 'wage) 100.0)
  (setf (slot-value p1 'active) t)

  (format t "<<p1 details>>~%")
  (format t "id = ~a~%" (slot-value p1 'id))
  (format t "name = ~a~%" (slot-value p1 'name))
  (format t "age = ~a~%" (slot-value p1 'age))
  (format t "wage = ~a~%" (slot-value p1 'wage))
  (format t "active = ~a~%" (slot-value p1 'active))

  (defmethod print-props ((p Person))
  (format t "<<p1 details>>~%")
  (format t "id = ~a~%" (slot-value p 'id))
  (format t "name = ~a~%" (slot-value p 'name))
  (format t "age = ~a~%" (slot-value p 'age))
  (format t "wage = ~a~%" (slot-value p 'wage))
  (format t "active = ~a~%" (slot-value p 'active))
  )


  (print-props p1)
)


(defmethod example2 ((ex ClassExample))
  (format t "<<example2()>>")
  (terpri)
  (defclass Worker()
    ((id :initarg :id :initform (error "must provide id"))
    (name :initarg :name :initform (error "must provide name"))
    (age :initarg :age :initform (error "must provide age"))
    (wage :initarg :wage :initform (error "must privide wage"))
    (active :initarg :active :initform (error "must provide active"))
  )
  )

  (defmethod set-id ((w Worker) id)
     (setf (slot-value w 'id) id)
  )

  (defmethod set-name ((w Worker) name)
     (setf (slot-value w 'name) name)
  )


  (defmethod set-age ((w Worker) age)
    (setf (slot-value w 'age) age)
  )

  (defmethod set-wage ((w Worker) wage)
    (setf (slot-value w 'wage) wage)
  )

  (defmethod set-active ((w Worker) active)
    (setf (slot-value w 'active) active)
  )

  (defmethod print-props ((w Worker))
    (format t "<<Worker details>>~%")
    (format t "id = ~a~%" (slot-value w 'id))
    (format t "name = ~a~%" (slot-value w 'name))
    (format t "age = ~a~%" (slot-value w 'age))
    (format t "wage = ~a~%" (slot-value w 'wage))
    (format t "active = ~a~%" (slot-value w 'active))
  )




  (defparameter w (make-instance 'Worker :id 1 :name "foo" :age 10 :wage 100.0 :active nil))

  (defparameter w2 (make-instance 'Worker :id 2 :name "bar" :age 20 :wage 200.0 :active t))
  (set-id w2 3)
  (set-name w2 "bim")
  (set-age w2 30)
  (set-wage w2 300.0)
  (set-active w2 nil)


  (print-props w)
  (print-props w2)
  )


(defmethod example3 ((ex ClassExample))
  (format t "<<example3()>>")
  (terpri)
  (defclass Box ()
    (
     (width
       :initarg :width :initform 0.0)
     (height :initarg :height :initform 0.0)
     (depth :initarg :depth :initform 0.0)
  )
  )

  (defmethod volume ((b Box))
    (setf w (slot-value b 'width))
    (setf h (slot-value b 'height))
    (setf d (slot-value b 'depth))
    (* w (* h d))
  )

  (defmethod to-string  ((b Box))
    (format t "Box(~a,~a,~a)~%" (slot-value b 'width) (slot-value b 'height)
      (slot-value b 'depth))
  )


  (defmethod add-box ((b1 Box) (b2 Box))
    (setf w1 (slot-value b1 'width))
    (setf h1 (slot-value b1 'height))
    (setf d1 (slot-value b1 'depth))
    (setf w2 (slot-value b2 'width))
    (setf h2 (slot-value b2 'height))
    (setf d2 (slot-value b2 'depth))
    (setf w (+ w1 w2))
    (setf h (+ h1 h2))
    (setf d (+ d1 d2))
    (make-instance 'Box :width w :height h :depth d)
  )


  (defmethod subtract-box ((b1 Box) (b2 Box))
    (setf w1 (slot-value b1 'width))
    (setf h1 (slot-value b1 'height))
    (setf d1 (slot-value b1 'depth))
    (setf w2 (slot-value b2 'width))
    (setf h2 (slot-value b2 'height))
    (setf d2 (slot-value b2 'depth))
    (setf w (- w1 w2))
    (setf h (- h1 h2))
    (setf d (- d1 d2))
    (make-instance 'Box :width w :height h :depth d)
  )


  (defmethod multiply-box ((b1 Box) (b2 Box))
    (setf w (* (slot-value b1 'width) (slot-value b2 'width)))
    (setf h (* (slot-value b1 'height) (slot-value b2 'height)))
    (setf d (* (slot-value b1 'depth) (slot-value b2 'depth)))
    (make-instance 'Box :width w :height h :depth d)
  )

  (defmethod divide-box ((b1 Box) (b2 Box))
    (setf w (/ (slot-value b1 'width) (slot-value b2 'width)))
    (setf h (/ (slot-value b1 'height) (slot-value b2 'height)))
    (setf d (/ (slot-value b1 'depth) (slot-value b2 'depth)))
    (make-instance 'Box :width w :height h :depth d)
  )


  (defparameter b1 (make-instance 'Box :width 3.0 :height 3.0 :depth 3.0))
  (defparameter b2 (make-instance 'Box :width 2.0 :height 2.0 :depth 2.0))
  (to-string b1)
  (to-string b2)
  (format t "Volume of b1 = ~a~%" (volume b1))
  (format t "Volume of b2 = ~a~%" (volume b2))
  (defparameter b-add (add-box b1 b2))
  (to-string b-add)
  (defparameter b-subtract (subtract-box b1 b2))
  (to-string b-subtract)
  (defparameter b-multiply (multiply-box b1 b2))
  (to-string b-multiply)
  (defparameter b-divide (divide-box b1 b2))
  (to-string b-divide)

  )


(setq ex (make-instance 'ClassExample))
(example1 ex)
(example2 ex)
(example3 ex)
