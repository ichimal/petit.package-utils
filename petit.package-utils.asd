(cl:in-package :cl-user)

(defpackage #:petit.package-utils-asd
  (:use :cl :asdf) )

(in-package #:petit.package-utils-asd)

(defsystem petit.package-utils
  :name "petit package utils"
  :version "0.1.0"
  :maintainer "SUZUKI Shingo"
  :author "SUZUKI Shingo"
  :licence "MIT"
  :description "petit toolbox for packaging"
  :components
    ((:module src
      :serial t
      :components ((:file #:package-utils)) )))

