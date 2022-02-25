;;(let ((sys-exports
#|
           '(#:*debugging-locals-p*
             #:find-locals)))
|#
(defpackage abcl-introspect/system
  (:nicknames #:abcl-introspect/sys)
  (:use :common-lisp)
  (:export
   #:*debugging-locals-p*
   #:find-locals))

(import '(abcl-introspect/system:*debugging-locals-p*) :sys)
(export '(abcl-introspect/system:*debugging-locals-p*) :sys)
(import '(abcl-introspect/system:find-locals) :sys)
(export '(abcl-introspect/system:find-locals) :sys)


  




