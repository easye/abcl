(defstruct (foo (:conc-name nil))
  slot)

(prove:plan 1)
(let* ((form
	 '(lambda (x) (flet ((slot (y) y)) (slot x))))
       (interpreted
	 (eval form))
       (compiled
	 (compile nil form))
       (result
	 (handler-case
	     (equal (funcall interpreted 2)
		    (funcall compiled 2))
	   (error (e)
	     (prove:diag (format nil "Execution failed with ~a '~a'" (type-of e) e))
	     e))))
  (prove:ok
   (subtypep (type-of result) 'boolean)
   "Whether compiled local FLET definition overrides structure accessor"))

(prove:finalize)


