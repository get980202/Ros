; Auto-generated. Do not edit!


(cl:in-package actionlib_lutorials-msg)


;//! \htmlinclude ShapeResult.msg.html

(cl:defclass <ShapeResult> (roslisp-msg-protocol:ros-message)
  ((interior_angle
    :reader interior_angle
    :initarg :interior_angle
    :type cl:float
    :initform 0.0)
   (apothem
    :reader apothem
    :initarg :apothem
    :type cl:float
    :initform 0.0))
)

(cl:defclass ShapeResult (<ShapeResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShapeResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShapeResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actionlib_lutorials-msg:<ShapeResult> is deprecated: use actionlib_lutorials-msg:ShapeResult instead.")))

(cl:ensure-generic-function 'interior_angle-val :lambda-list '(m))
(cl:defmethod interior_angle-val ((m <ShapeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_lutorials-msg:interior_angle-val is deprecated.  Use actionlib_lutorials-msg:interior_angle instead.")
  (interior_angle m))

(cl:ensure-generic-function 'apothem-val :lambda-list '(m))
(cl:defmethod apothem-val ((m <ShapeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_lutorials-msg:apothem-val is deprecated.  Use actionlib_lutorials-msg:apothem instead.")
  (apothem m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShapeResult>) ostream)
  "Serializes a message object of type '<ShapeResult>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'interior_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'apothem))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShapeResult>) istream)
  "Deserializes a message object of type '<ShapeResult>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'interior_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'apothem) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShapeResult>)))
  "Returns string type for a message object of type '<ShapeResult>"
  "actionlib_lutorials/ShapeResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShapeResult)))
  "Returns string type for a message object of type 'ShapeResult"
  "actionlib_lutorials/ShapeResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShapeResult>)))
  "Returns md5sum for a message object of type '<ShapeResult>"
  "b06c6e2225f820dbc644270387cd1a7c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShapeResult)))
  "Returns md5sum for a message object of type 'ShapeResult"
  "b06c6e2225f820dbc644270387cd1a7c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShapeResult>)))
  "Returns full string definition for message of type '<ShapeResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%float32 interior_angle~%float32 apothem~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShapeResult)))
  "Returns full string definition for message of type 'ShapeResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%float32 interior_angle~%float32 apothem~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShapeResult>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShapeResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ShapeResult
    (cl:cons ':interior_angle (interior_angle msg))
    (cl:cons ':apothem (apothem msg))
))