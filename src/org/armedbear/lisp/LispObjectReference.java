package org.armedbear.lisp;


// <https://docs.oracle.com/en/java/javase/25/docs/api/java.base/java/lang/ref/PhantomReference.html>

//              java.lang.ref.PhantomReference<Symbol>
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;


import static org.armedbear.lisp.Lisp.*;
public class LispObjectReference
  extends java.lang.ref.PhantomReference<LispObject>
{
  // Creates a new phantom reference that refers to the given object
  // and is registered with the given queue.
  public LispObjectReference (LispObject referent,
                              ReferenceQueue<? super LispObject> q)
  {
    // TODO
  }
}
