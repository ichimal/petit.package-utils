(cl:in-package :petit.package-utils)

(defun use-conflict-package (from-package &optional (to-package *package*))
  (do-external-symbols (sym from-package)
    (shadowing-import sym to-package) )
  (use-package from-package to-package) )

#-clisp
(defun package-shortest-name (pkg)
  (declare (optimize (speed 3) (safety 0) (debug 0)))
  (loop with short-name = (package-name pkg)
        with short-len = (length short-name)
        with nicks = (package-nicknames pkg)
        for nick-name in nicks
        for nick-len = (length nick-name)
        when (< nick-len short-len)
          do (setq short-name nick-name
                   short-len  nick-len )
        finally (return short-name) ))

