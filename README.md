petit.package-control
====

Petit package for packaging utilities.

## APIs:

### *[Function]* `USE-CONFLICT-PACKAGE`:

An alternative `CL:USE-PACKAGE` function.
`USE-CONFLICT-PACKAGE` enables `USE-PACKAGE`'ing any packages which have conflicted external symbols.

e.g.

    (defpackage :foo
      (:shadow #:car)
      (:use :cl)
      (:export :car) )
    (in-package :foo)
    (defun car (obj) ...)

    (in-package :cl-user)
    (pkgctl:use-conflict-package :foo)
    (symbol-package 'car) ; => #<PACKAGE FOO>

You can also specify *to-package* for `USE-CONFLICT-PACKAGE` optionally.

e.g. `(pkgctl:use-conflict-package` *from-package* *to-package*`)`

### *[Function]* `PACKAGE-SHORTEST-NAME`:

Returns shortest name or nickname of given [package designator](http://clhs.lisp.se/Body/26_glo_p.htm#package_designator).

e.g. `(pkgctl:package-shortest-name :common-lisp-user) ; => "USER"`

Note: for GNU CLISP, `PKGCTL:PACKAGE-SHORTEST-NAME` is just a synonym of [`EXT:PACKAGE-SHORTEST-NAME`](file://localhost/C:/Users/ichimal/Documents/public/documents/lang/lisp/cl/clisp/impnotes/prompt.html#package-shortest-name).

## License:
Under MIT license.
