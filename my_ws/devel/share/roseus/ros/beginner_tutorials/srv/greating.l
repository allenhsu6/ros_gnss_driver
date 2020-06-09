;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::greating)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'greating (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::GREATING")
  (make-package "BEGINNER_TUTORIALS::GREATING"))
(unless (find-package "BEGINNER_TUTORIALS::GREATINGREQUEST")
  (make-package "BEGINNER_TUTORIALS::GREATINGREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::GREATINGRESPONSE")
  (make-package "BEGINNER_TUTORIALS::GREATINGRESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::greatingRequest
  :super ros::object
  :slots (_say_hello ))

(defmethod beginner_tutorials::greatingRequest
  (:init
   (&key
    ((:say_hello __say_hello) "")
    )
   (send-super :init)
   (setq _say_hello (string __say_hello))
   self)
  (:say_hello
   (&optional __say_hello)
   (if __say_hello (setq _say_hello __say_hello)) _say_hello)
  (:serialization-length
   ()
   (+
    ;; string _say_hello
    4 (length _say_hello)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _say_hello
       (write-long (length _say_hello) s) (princ _say_hello s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _say_hello
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _say_hello (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass beginner_tutorials::greatingResponse
  :super ros::object
  :slots (_feedback ))

(defmethod beginner_tutorials::greatingResponse
  (:init
   (&key
    ((:feedback __feedback) "")
    )
   (send-super :init)
   (setq _feedback (string __feedback))
   self)
  (:feedback
   (&optional __feedback)
   (if __feedback (setq _feedback __feedback)) _feedback)
  (:serialization-length
   ()
   (+
    ;; string _feedback
    4 (length _feedback)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _feedback
       (write-long (length _feedback) s) (princ _feedback s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _feedback
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _feedback (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass beginner_tutorials::greating
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::greating :md5sum-) "6743e6c347f9c39f0a25ef9d7fce858a")
(setf (get beginner_tutorials::greating :datatype-) "beginner_tutorials/greating")
(setf (get beginner_tutorials::greating :request) beginner_tutorials::greatingRequest)
(setf (get beginner_tutorials::greating :response) beginner_tutorials::greatingResponse)

(defmethod beginner_tutorials::greatingRequest
  (:response () (instance beginner_tutorials::greatingResponse :init)))

(setf (get beginner_tutorials::greatingRequest :md5sum-) "6743e6c347f9c39f0a25ef9d7fce858a")
(setf (get beginner_tutorials::greatingRequest :datatype-) "beginner_tutorials/greatingRequest")
(setf (get beginner_tutorials::greatingRequest :definition-)
      "string say_hello
---
string feedback
")

(setf (get beginner_tutorials::greatingResponse :md5sum-) "6743e6c347f9c39f0a25ef9d7fce858a")
(setf (get beginner_tutorials::greatingResponse :datatype-) "beginner_tutorials/greatingResponse")
(setf (get beginner_tutorials::greatingResponse :definition-)
      "string say_hello
---
string feedback
")



(provide :beginner_tutorials/greating "6743e6c347f9c39f0a25ef9d7fce858a")


