pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.idl_processor_h;
with Interfaces.C.Extensions;
with CycloneDDS.Low_Level.idl_tree_h;
with System;
with CycloneDDS.Low_Level.idl_retcode_h;

package CycloneDDS.Low_Level.idl_visit_h is

   IDL_VISIT_TYPE_SPEC : constant := (2**6);  --  /home/stprsa/cyclonedds/Ada/../target/include/idl/visit.h:95

   IDL_VISIT_UNALIAS_TYPE_SPEC : constant := (2**7);  --  /home/stprsa/cyclonedds/Ada/../target/include/idl/visit.h:97


   type idl_accept_t is 
     (IDL_ACCEPT_INHERIT_SPEC,
      IDL_ACCEPT_SWITCH_TYPE_SPEC,
      IDL_ACCEPT_MODULE,
      IDL_ACCEPT_CONST,
      IDL_ACCEPT_MEMBER,
      IDL_ACCEPT_FORWARD,
      IDL_ACCEPT_CASE,
      IDL_ACCEPT_CASE_LABEL,
      IDL_ACCEPT_ENUMERATOR,
      IDL_ACCEPT_DECLARATOR,
      IDL_ACCEPT_ANNOTATION,
      IDL_ACCEPT_ANNOTATION_APPL,
      IDL_ACCEPT_TYPEDEF,
      IDL_ACCEPT_STRUCT,
      IDL_ACCEPT_UNION,
      IDL_ACCEPT_ENUM,
      IDL_ACCEPT_SEQUENCE,
      IDL_ACCEPT_STRING,
      IDL_ACCEPT)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/visit.h:21

   type idl_visitor_callback_t is access function
        (arg1 : access constant CycloneDDS.Low_Level.idl_processor_h.idl_pstate;
         arg2 : Extensions.bool;
         arg3 : access constant CycloneDDS.Low_Level.idl_tree_h.idl_path;
         arg4 : System.Address;
         arg5 : System.Address) return CycloneDDS.Low_Level.idl_retcode_h.idl_retcode_t
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/visit.h:47


   type idl_visit_recurse_t is 
     (IDL_VISIT_RECURSE_BY_DEFAULT,
      IDL_VISIT_RECURSE,
      IDL_VISIT_DONT_RECURSE)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/visit.h:67


   subtype idl_visit_revisit_t is unsigned;
   idl_visit_revisit_IDL_VISIT_DONT_REVISIT_BY_DEFAULT : constant idl_visit_revisit_t := 0;
   idl_visit_revisit_IDL_VISIT_REVISIT : constant idl_visit_revisit_t := 16;
   idl_visit_revisit_IDL_VISIT_DONT_REVISIT : constant idl_visit_revisit_t := 32;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/visit.h:88

   type idl_visitor;
   subtype idl_visitor_t is idl_visitor;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/visit.h:104

   type anon_array15024 is array (0 .. 18) of idl_visitor_callback_t;
   type idl_visitor is record
      visit : aliased CycloneDDS.Low_Level.idl_tree_h.idl_mask_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/visit.h:106
      recurse : aliased idl_visit_recurse_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/visit.h:107
      revisit : aliased idl_visit_revisit_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/visit.h:111
      c_accept : anon_array15024;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/visit.h:112
      sources : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/visit.h:113
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/visit.h:105

   function idl_visit
     (pstate : access constant CycloneDDS.Low_Level.idl_processor_h.idl_pstate;
      node : System.Address;
      visitor : access constant idl_visitor_t;
      user_data : System.Address) return CycloneDDS.Low_Level.idl_retcode_h.idl_retcode_t  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/visit.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "idl_visit";

end CycloneDDS.Low_Level.idl_visit_h;
