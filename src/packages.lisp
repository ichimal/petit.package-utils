(cl:in-package #:petit.package-utils-asd)

(defpackage :petit.package-utils
  (:nicknames :petit.pu :ppu)
  (:use :cl)
  (:export #:use-conflict-package #:to-export-symbols)
  #+clisp (:shadowing-import-from :ext #:package-shortest-name)
  (:export #:package-shortest-name) )

