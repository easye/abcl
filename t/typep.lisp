(prove:plan 4)

;;; <https://github.com/armedbear/abcl/pull/735>

#|
(typep 1.0 'number) -> T but (typep 1.0 (find-class 'number) -> NIL
(typep 1.0 'real) -> T but (typep 1.0 (find-class 'read) -> NIL

|#

(prove:ok
 (typep 1.0 'number)
 "1.0 is a NUMBER")
(prove:ok
 (typep 1.0 (find-class 'number))
 "1.0 is a NUMBER class")
(prove:ok
 (typep 1.0 'real)
 "1.0 is a REAL")
(prove:ok
 (typep 1.0 (find-class 'real))
 "1.0 is a REAL class")

(prove:finalize)
 
 
