;;;; -*- mode:lisp;coding:utf-8 -*-
;;;;**************************************************************************
;;;;FILE:               check-asdf.lisp
;;;;LANGUAGE:           Common-Lisp
;;;;SYSTEM:             Common-Lisp
;;;;USER-INTERFACE:     NONE
;;;;DESCRIPTION
;;;;    
;;;;    Check an asdf file for circular dependencies.
;;;;    
;;;;AUTHORS
;;;;    <PJB> Pascal J. Bourguignon <pjb@informatimago.com>
;;;;MODIFICATIONS
;;;;    2013-03-25 <PJB> Created.
;;;;BUGS
;;;;LEGAL
;;;;    AGPL3
;;;;    
;;;;    Copyright Pascal J. Bourguignon 2013 - 2015
;;;;    
;;;;    This program is free software: you can redistribute it and/or modify
;;;;    it under the terms of the GNU Affero General Public License as published by
;;;;    the Free Software Foundation, either version 3 of the License, or
;;;;    (at your option) any later version.
;;;;    
;;;;    This program is distributed in the hope that it will be useful,
;;;;    but WITHOUT ANY WARRANTY; without even the implied warranty of
;;;;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;;;    GNU Affero General Public License for more details.
;;;;    
;;;;    You should have received a copy of the GNU Affero General Public License
;;;;    along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;;;**************************************************************************

(defpackage "COM.INFORMATIMAGO.TOOLS.CHECK-ASDF"
  (:use "CL")
  (:use "COM.INFORMATIMAGO.COMMON-LISP.CESARUM.UTILITY")
  (:use "COM.INFORMATIMAGO.TOOLS.ASDF-FILE")
  (:use "COM.INFORMATIMAGO.TOOLS.DEPENDENCY-CYCLES")
  (:export "CHECK-ASDF-SYSTEM-FILE")
  (:documentation "

Check an asdf file for circular dependencies.

Usage:

    (com.informatimago.tools.check-asdf:check-asdf-system-file 
                  #P\"/some/system.asd\"  :report output-stream)

License:

    AGPL3
    
    Copyright Pascal J. Bourguignon 2013 - 2013
    
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
    
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.
    
    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
"))
(in-package "COM.INFORMATIMAGO.TOOLS.CHECK-ASDF")

(defvar *sorted-files* nil)

(defun check-asdf-system-file (asd-file &key (report *standard-output*))
  (let* ((asdf-files (load-simple-asd-file asd-file))
         (sorted-files (topological-sort (hash-table-values asdf-files)
                                         (function dependencies))))
    (setf *sorted-files*  (copy-seq sorted-files))
    (if (= (length sorted-files) (hash-table-count asdf-files))
        (format report "~&No cycle among files. ~%")
        (format report "~&The :depends-on relationship between files contains cycles! ~
~%It should be a tree.~%"))
    (report-problems (hash-table-values asdf-files) :report report)))

;;;; THE END ;;;;
