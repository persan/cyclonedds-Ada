s!subtype idl_type_t is idl_type;.*!!
s!subtype idl_type is unsigned;!type idl_type_t is new unsigned;!
s!constant idl_type !constant idl_type_t!

s!access idl_annotation_appl;!access idl_annotation_appl_t;!


s!access idl_name;!access idl_name_t;!

s!type idl_node_t is record!   type idl_annotation_appl_t;\
type idl_node_t is record!

s!subtype idl_autoid_t is idl_autoid!--  <> subtype idl_autoid_t is idl_autoid!
s!type idl_autoid is!type idl_autoid_t is!

s!subtype idl_extensibility_t is idl_extensibility!--  <>subtype idl_extensibility_t is idl_extensibility!
s!type idl_extensibility !type idl_extensibility_t !

s!subtype idl_boolean_t is idl_boolean!--  <> subtype idl_boolean_t is idl_boolean!
s!type idl_boolean is!type idl_boolean_t is!
