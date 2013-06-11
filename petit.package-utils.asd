(cl:in-package :cl-user)

(defpackage #:petit.package-control-asd
  (:use :cl :asdf) )

(in-package #:petit.package-control-asd)

(defsystem petit.package-control
  :name "petit package control"
  :version "0.1.0"
  :maintainer "SUZUKI Shingo"
  :author "SUZUKI Shingo"
  :licence "MIT"
  :description "petit utilities for packaging"
  :components ((:file "package-control")) )

