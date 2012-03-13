;;;; -*- mode:lisp;coding:utf-8 -*-
;;;;**************************************************************************
;;;;FILE:               option.lisp
;;;;LANGUAGE:           Common-Lisp
;;;;SYSTEM:             Common-Lisp
;;;;USER-INTERFACE:     NONE
;;;;DESCRIPTION
;;;;    
;;;;    This package processes command line options.
;;;;    
;;;;AUTHORS
;;;;    <PJB> Pascal J. Bourguignon <pjb@informatimago.com>
;;;;MODIFICATIONS
;;;;    2012-03-10 <PJB> Extracted from ~/bin/script.lisp
;;;;BUGS
;;;;LEGAL
;;;;    AGPL3
;;;;    
;;;;    Copyright Pascal J. Bourguignon 2012 - 2012
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

(defpackage "COM.INFORMATIMAGO.COMMON-LISP.UNIX.OPTION"
  (:use "COMMON-LISP"
        "COM.INFORMATIMAGO.COMMON-LISP.CESARUM.STRING")
  (:export "PNAME" "*PROGRAM-NAME*" "*DEBUG*"
           "REDIRECTING-STDOUT-TO-STDERR"
           "DEFINE-OPTION"
           "CALL-OPTION-FUNCTION" 
           "SET-DOCUMENTATION-TEXT"
           "*BASH-COMPLETION-HOOK*"
           "PARSE-OPTIONS" "QUIT"
           ;; Exit codes:
           "EX-OK" "EX--BASE" "EX-USAGE" "EX-DATAERR" "EX-NOINPUT"
           "EX-NOUSER" "EX-NOHOST" "EX-UNAVAILABLE" "EX-SOFTWARE"
           "EX-OSERR" "EX-OSFILE" "EX-CANTCREAT" "EX-IOERR"
           "EX-TEMPFAIL" "EX-PROTOCOL" "EX-NOPERM" "EX-CONFIG"
           "EX--MAX")
  (:documentation "
This package processes command line options.

Copyright Pascal J. Bourguignon 2012 - 2012

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.
"))
(in-package "COM.INFORMATIMAGO.COMMON-LISP.UNIX.OPTION")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;

(defvar *program-name* "unnamed"
  "Name of the program.
If available we use the actual command line program name,
otherwise we fallback to *PROGRAM-NAME*.")


(defvar *debug* nil
  "Errors break into the debugger.")

;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;


(defmacro redirecting-stdout-to-stderr (&body body)
  (let ((verror  (gensym))
        (voutput (gensym)))
   `(let* ((,verror  nil)
           (,voutput (with-output-to-string (stream)
                       (let ((*standard-output* stream)
                             (*error-output*    stream)
                             (*trace-output*    stream))
                         (handler-case (progn ,@body)
                           (error (err) (setf ,verror err)))))))
      (when ,verror
        (terpri *error-output*)
        (princ ,voutput *error-output*)
        (terpri *error-output*)
        (princ ,verror *error-output*)
        (terpri *error-output*)
        (terpri *error-output*)
        #-testing-script (throw 'quit 1)))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; From /usr/include/sysexits.h (Linux)
;;;

(defconstant ex-ok            0   "successful termination")

(defconstant ex--base         64  "base value for error messages")

(defconstant ex-usage         64  "command line usage error
    The command was used incorrectly, e.g., with
    the wrong number of arguments, a bad flag, a bad
    syntax in a parameter, or whatever.")

(defconstant ex-dataerr       65  "data format error
    The input data was incorrect in some way.
    This should only be used for user's data & not
    system files.")

(defconstant ex-noinput       66  "cannot open input
    An input file (not a system file) did not
    exist or was not readable.  This could also include
    errors like \"No message\" to a mailer (if it cared
    to catch it).")

(defconstant ex-nouser        67  "addressee unknown
    The user specified did not exist.  This might
    be used for mail addresses or remote logins.
    ")

(defconstant ex-nohost        68  "host name unknown
    The host specified did not exist.  This is used
    in mail addresses or network requests.")

(defconstant ex-unavailable   69  "service unavailable
    A service is unavailable.  This can occur
    if a support program or file does not exist.  This
    can also be used as a catchall message when something
    you wanted to do doesn't work, but you don't know
    why.")

(defconstant ex-software      70  "internal software error
    An internal software error has been detected.
    This should be limited to non-operating system related
    errors as possible.")

(defconstant ex-oserr         71  "system error (e.g., can't fork)
    An operating system error has been detected.
    This is intended to be used for such things as \"cannot
    fork\", \"cannot create pipe\", or the like.  It includes
    things like getuid returning a user that does not
    exist in the passwd file.")

(defconstant ex-osfile        72  "critical OS file missing
    Some system file (e.g., /etc/passwd, /etc/utmp,
    etc.) does not exist, cannot be opened, or has some
    sort of error (e.g., syntax error).")

(defconstant ex-cantcreat     73  "can't create (user) output file
    A (user specified) output file cannot be created.")

(defconstant ex-ioerr         74  "input/output error
     An error occurred while doing I/O on some file.")

(defconstant ex-tempfail      75  "temp failure; user is invited to retry
    temporary failure, indicating something that
    is not really an error.  In sendmail, this means
    that a mailer (e.g.) could not create a connection,
    and the request should be reattempted later.")

(defconstant ex-protocol      76  "remote error in protocol
    the remote system returned something that
    was \"not possible\" during a protocol exchange.")

(defconstant ex-noperm        77  "permission denied
    You did not have sufficient permission to
    perform the operation.  This is not intended for
    file system problems, which should use NOINPUT or
    CANTCREAT, but rather for higher level permissions.")

(defconstant ex-config        78  "configuration error")

(defconstant ex--max          78  "maximum listed value")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; OPTIONS PROCESSING
;;;


(defun pname ()
  "This function can be used to set *program-name* in
the main script  (setf script:*program-name* (script:pname))
"
  (file-namestring *program-name*))


(defparameter *options*
  (make-hash-table :test (function equal))
  "The dictionary of options.")


(defstruct option
  keys arguments documentation function)


(defun q&d-parse-parameters (parameters)
  "Parses (mandatory &optional optionals... &rest rest &key key...)"
  (loop
     :with mandatories = '()
     :with optionals   = '()
     :with rest        = nil
     :with keys        = '()
     :with state       = :mandatory
     :with params      = parameters
     :for param = (first params)
     :while params
     :do (ecase state
           ((:mandatory)
            (case param
              ((&optional) (setf state :optional))
              ((&rest)     (setf state :rest))
              ((&key)      (setf state :key))
              (otherwise (push param mandatories)))
            (pop params))
           ((:optional)
            (case param
              ((&optional) (error "&OPTIONAL given more than once in ~S" parameters))
              ((&rest)     (setf state :rest))
              ((&key)      (setf state :key))
              (otherwise (push param optionals)))
            (pop params))
           ((:rest)
            (case param
              ((&optional) (error "&OPTIONAL given after &REST in ~S" parameters))
              ((&rest)     (error "&REST given twice in ~S" parameters))
              ((&key)      (setf state :key))
              (otherwise   (setf state :after-rest
                                 rest param)))
            (pop params))
           ((:after-rest)
            (case param
              ((&optional) (error "&OPTIONAL given after &REST in ~S" parameters))
              ((&rest)     (error "&REST given after &REST in ~S" parameters))
              ((&key)      (setf state :key))
              (otherwise   (error "Several &REST parameters given in ~S" parameters)))
            (pop params))
           ((:key)
            (case param
              ((&optional) (error "&OPTIONAL given after &KEY in ~S" parameters))
              ((&rest)     (error "&REST given after &KEY in ~S" parameters))
              ((&key)      (setf state :key))
              (otherwise   (push param keys)))
            (pop params)))
     :finally (return (values (nreverse mandatories)
                              (nreverse optionals)
                              rest
                              (nreverse keys)))))


(defun keywordize (string-designator)
  (intern (string string-designator) (load-time-value (find-package "KEYWORD"))))


(defun q&d-arguments (mandatories optionals rest keys)
  "
BUG: when the optionals or keys have a present indicator,
     we just ignore it and build a list that will pass
     the default value anyways...
" 
  (assert (every (function symbolp) mandatories))
  (append mandatories
          (mapcar (lambda (opt)
                    (etypecase opt
                      (cons   (first opt))
                      (symbol opt)))
                  optionals)
          (when rest (list rest))
          (mapcan (lambda (key)
                    (etypecase key
                      (cons  (etypecase (first key)
                               (symbol (list (keywordize (first key)) (first key)))
                               (cons   (list (second (first key)) (first (first key))))))
                      (symbol (list (keywordize key) key))))
                  keys)))


(defun wrap-option-function (keys option-arguments docstring option-function)
  (let ((vargs (gensym)))
    (multiple-value-bind (mandatories optionals rest keys-args) (q&d-parse-parameters option-arguments)
      (setf *print-circle* nil)
      (make-option
       :keys keys
       :arguments option-arguments
       :function (compile (make-symbol (format nil "~:@(~A-WRAPPER~)" (first keys)))
                          `(lambda (,vargs)
                             (if (<= ,(length mandatories) (length ,vargs))
                                 ,(cond
                                   (rest
                                    `(destructuring-bind ,option-arguments ,vargs
                                       (funcall ',option-function ,@(q&d-arguments mandatories
                                                                                   optionals
                                                                                   rest
                                                                                   keys-args))
                                       nil))
                                   (keys-args
                                    (error "An option cannot have &key parameters without a &rest parameter. ~@
                                            Invalid option parameters: ~S" option-arguments))
                                   (t
                                    (let ((vremaining (gensym)))
                                      `(destructuring-bind (,@option-arguments &rest ,vremaining) ,vargs
                                         (funcall ',option-function ,@(q&d-arguments mandatories
                                                                                     optionals
                                                                                     rest
                                                                                     keys-args))
                                         ,vremaining))))
                                 (error "Missing arguments: ~{~A ~}"
                                        (subseq ',option-arguments (length ,vargs))))))
       :documentation (split-string docstring (string #\newline))))))


(defgeneric call-option-function (option arguments &optional undefined-argument)
  (:method ((key string) arguments &optional undefined-argument)
    (let* ((funopt  (gethash key *options*)))
      (cond
        (funopt             (call-option-function funopt arguments undefined-argument))
        (undefined-argument (funcall undefined-argument key arguments))
        (t                  (error "Unknown option ~A ; try: ~A help" key (pname))))))
  (:method ((option option) arguments &optional undefined-argument)
    (declare (ignore undefined-argument))
    (funcall (option-function option) arguments)))


(defmacro define-option (names parameters &body body)
  "
DO:         Define a new option for the scirpt.
NAMES:      A list designator of option names (strings
            such as \"-a\" \"--always\").
PARAMETERS: A list of option parameters.  The names of
            these parameters must be descriptive as they
            are used to build the usage help text.
BODY:       The code implementing this option.
RETURN:     The lisp-name of the option (this is a symbol
            named for the first option name).
"
  (let* ((main-name   (if (listp names)
                          (first names)
                          names))
         (other-names (if (listp names)
                          (rest names)
                          '()))
         (lisp-name   (intern (string-upcase main-name)))
         (docstring   (if (and (stringp (first body)) (rest body))
                          (first body)
                          nil))
         (body        (if (and (stringp (first body)) (rest body))
                          (rest body)
                          body)))
    `(progn
       (setf (gethash ',main-name *options*)
             (wrap-option-function ',(cons main-name other-names)
                                   ',parameters
                                   ',docstring
                                   (lambda ,(remove '&rest parameters)
                                     ,docstring
                                     (block ,lisp-name
                                       ,@body))))
       ,@(mapcar (lambda (other-name)
                   `(setf (gethash ',other-name *options*) (gethash ',main-name *options*)))
                 other-names)
       ',lisp-name)))


(defvar *documentation-text* "")


(defun set-documentation-text (text)
  (setf *documentation-text* text))


(defun option-list ()
  (let ((options '()))
    (maphash (lambda (key option)
               (declare (ignore key))
               (pushnew option options))
             *options*)
    options))


(define-option ("help" "-h" "--help") ()
  "Give this help."
  (with-pager ()
      (let ((options (option-list)))
        (format t "~2%~A options:~2%" (pname))
        (dolist (option (sort options (function string<)
                              :key (lambda (option) (first (option-keys option)))))
          (format t "    ~{~A~^ | ~}  ~:@(~{~A ~}~)~%~@[~{~%        ~A~}~]~2%"
                  (option-keys option)
                  (option-arguments option)
                  (option-documentation option)))
        (format t "~A~%" *documentation-text*))))



;; TODO: See if we couldn't simplify it, perhaps with complete -C.

(defun list-all-option-keys ()
  (let ((keys '()))
    (dolist (option (option-list))
      (dolist (key (option-keys option))
        (push key keys)))
    keys))


(defun completion-option-prefix (prefix)
  (dolist (key (remove-if-not (lambda (key)
                                (and (<= (length prefix) (length key))
                                     (string= prefix key :end2 (length prefix))))
                              (list-all-option-keys)))
    (format t "~A~%" key))
  (finish-output))


(defun completion-all-options ()
  (dolist (key (list-all-option-keys))
    (format t "~A~%" key))
  (finish-output))


(defvar *bash-completion-hook* nil
  "A function (lambda (index words) ...)
that will print the completion and return true, or do nothing and return nil.")


(define-option ("--bash-completions") (index &rest words)
  "Implement the auto-completion of arguments.
This option is designed to be invoked from the function generated by
the '--bash-completion-function' option.  There should be no need to
use directly.
"
  (let ((index (parse-integer index :junk-allowed t)))
    (unless (and *bash-completion-hook*
                 (funcall *bash-completion-hook* index words))
      (if index
          (completion-option-prefix (elt words index))
          (completion-all-options))))
  (throw 'quit 0))


(define-option ("--bash-completion-function") ()
  "Write two bash commands (separated by a semi-colon) to create a
bash function used to do auto-completion of command arguments.
Use it with:

       eval $($COMMAND  --bash-completion-function) 

and then typing TAB on the command line after the command name will
autocomplete argument prefixes.
"
  (format t "function completion_~A(){ ~
COMPREPLY=( $(~:*~A --bash-completions \"$COMP_CWORD\" \"${COMP_WORDS[@]}\") ) ; } ;~
complete -F completion_~:*~A ~:*~A~%"
          *program-name*)
  (throw 'quit 0))



(defun parse-options (arguments &optional default undefined-argument)
  (catch 'quit
    (flet ((process-arguments ()
             (cond
               (arguments
                (loop
                  :while arguments
                  :do (setf arguments (call-option-function (pop arguments)
                                                            arguments
                                                            undefined-argument))))
               (default
                (funcall default)))))
      (if *debug*
          (process-arguments)
          (handler-case (process-arguments)
            (error (err)
              (format *error-output* "~%ERROR: ~A~%" err)
              ;; TODO: select different sysexits codes depending on the error class.
              (return-from parse-options ex-software)))))
    0))

;;;; THE END ;;;;