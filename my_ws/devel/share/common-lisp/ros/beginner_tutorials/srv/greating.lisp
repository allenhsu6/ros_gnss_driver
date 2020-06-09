; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude greating-request.msg.html

(cl:defclass <greating-request> (roslisp-msg-protocol:ros-message)
  ((say_hello
    :reader say_hello
    :initarg :say_hello
    :type cl:string
    :initform ""))
)

(cl:defclass greating-request (<greating-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <greating-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'greating-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<greating-request> is deprecated: use beginner_tutorials-srv:greating-request instead.")))

(cl:ensure-generic-function 'say_hello-val :lambda-list '(m))
(cl:defmethod say_hello-val ((m <greating-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:say_hello-val is deprecated.  Use beginner_tutorials-srv:say_hello instead.")
  (say_hello m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <greating-request>) ostream)
  "Serializes a message object of type '<greating-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'say_hello))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'say_hello))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <greating-request>) istream)
  "Deserializes a message object of type '<greating-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'say_hello) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'say_hello) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<greating-request>)))
  "Returns string type for a service object of type '<greating-request>"
  "beginner_tutorials/greatingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'greating-request)))
  "Returns string type for a service object of type 'greating-request"
  "beginner_tutorials/greatingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<greating-request>)))
  "Returns md5sum for a message object of type '<greating-request>"
  "6743e6c347f9c39f0a25ef9d7fce858a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'greating-request)))
  "Returns md5sum for a message object of type 'greating-request"
  "6743e6c347f9c39f0a25ef9d7fce858a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<greating-request>)))
  "Returns full string definition for message of type '<greating-request>"
  (cl:format cl:nil "string say_hello~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'greating-request)))
  "Returns full string definition for message of type 'greating-request"
  (cl:format cl:nil "string say_hello~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <greating-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'say_hello))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <greating-request>))
  "Converts a ROS message object to a list"
  (cl:list 'greating-request
    (cl:cons ':say_hello (say_hello msg))
))
;//! \htmlinclude greating-response.msg.html

(cl:defclass <greating-response> (roslisp-msg-protocol:ros-message)
  ((feedback
    :reader feedback
    :initarg :feedback
    :type cl:string
    :initform ""))
)

(cl:defclass greating-response (<greating-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <greating-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'greating-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<greating-response> is deprecated: use beginner_tutorials-srv:greating-response instead.")))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <greating-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:feedback-val is deprecated.  Use beginner_tutorials-srv:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <greating-response>) ostream)
  "Serializes a message object of type '<greating-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'feedback))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'feedback))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <greating-response>) istream)
  "Deserializes a message object of type '<greating-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'feedback) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'feedback) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<greating-response>)))
  "Returns string type for a service object of type '<greating-response>"
  "beginner_tutorials/greatingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'greating-response)))
  "Returns string type for a service object of type 'greating-response"
  "beginner_tutorials/greatingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<greating-response>)))
  "Returns md5sum for a message object of type '<greating-response>"
  "6743e6c347f9c39f0a25ef9d7fce858a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'greating-response)))
  "Returns md5sum for a message object of type 'greating-response"
  "6743e6c347f9c39f0a25ef9d7fce858a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<greating-response>)))
  "Returns full string definition for message of type '<greating-response>"
  (cl:format cl:nil "string feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'greating-response)))
  "Returns full string definition for message of type 'greating-response"
  (cl:format cl:nil "string feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <greating-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <greating-response>))
  "Converts a ROS message object to a list"
  (cl:list 'greating-response
    (cl:cons ':feedback (feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'greating)))
  'greating-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'greating)))
  'greating-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'greating)))
  "Returns string type for a service object of type '<greating>"
  "beginner_tutorials/greating")