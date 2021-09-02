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

   IDL_VISIT_TYPE_SPEC : constant := (2**6);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idl/visit.h:95

   IDL_VISIT_UNALIAS_TYPE_SPEC : constant := (2**7);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idl/visit.h:97

  -- * Copyright(c) 2021 ADLINK Technology Limited and others
  -- *
  -- * This program and the accompanying materials are made available under the
  -- * terms of the Eclipse Public License v. 2.0 which is available at
  -- * http://www.eclipse.org/legal/epl-2.0, or the Eclipse Distribution License
  -- * v. 1.0 which is available at
  -- * http://www.eclipse.org/org/documents/edl-v10.php.
  -- *
  -- * SPDX-License-Identifier: EPL-2.0 OR BSD-3-Clause
  --  

   subtype idl_accept_t is idl_accept;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idl/visit.h:20

   type idl_accept is 
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
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idl/visit.h:21

  --*< generic callback, used if no specific callback exists  
  -- generating native language representations for types is relatively
  --   straightforward, but generating serialization code requires more context.
  --   path objects form a simple stack that generators can iterate  

   type idl_visitor_callback_t is access function
        (arg1 : access constant CycloneDDS.Low_Level.idl_processor_h.idl_pstate;
         arg2 : Extensions.bool;
         arg3 : access constant CycloneDDS.Low_Level.idl_tree_h.idl_path_t;
         arg4 : System.Address;
         arg5 : System.Address) return CycloneDDS.Low_Level.idl_retcode_h.idl_retcode_t
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idl/visit.h:47

  -- the visitor mechanism is a pragmatic combination based on the listener and
  --   visitor mechanisms in ANTLRv4. default behavior is to iterate depth-first
  --   over the (sub)tree, visiting each node once, but the visitor can be
  --   instructed to visit the node again by signalling IDL_VISIT_REVISIT or skip
  --   an entire subtree by signalling IDL_VISIT_DONT_RECURSE. the visitor can be
  --   instructed to visit the type specifier for a declarator by signalling
  --   IDL_VISIT_TYPE_SPEC, which is useful when generating serialization code.
  --   default behavior can be inverted by specifying IDL_VISIT_DONT_RECURSE,
  --   IDL_VISIT_DONT_ITERATE or IDL_VISIT_REVISIT in the visitor, callbacks can
  --   instruct the visitor to recurse, iterate and/or revisit by signalling the
  --   inverse  

   subtype idl_visit_recurse_t is idl_visit_recurse;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idl/visit.h:66

   type idl_visit_recurse is 
     (IDL_VISIT_RECURSE_BY_DEFAULT,
      IDL_VISIT_RECURSE,
      IDL_VISIT_DONT_RECURSE)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idl/visit.h:67

  --*< Recurse into subtree(s)  
  --*< Do not recurse into subtree(s)  
  -- FIXME: does not quite make sense in the current implementation. applies to
  --        it now applies to the next level. instead, it should apply to the
  --        current level. in which case IDL_VISIT_ITERATE instructs the
  --        visitor to continue, IDL_VISIT_DONT_ITERATE does the inverse!
  -- 

  --*< Iterate over subtree(s)  
  --*< Do not iterate over subtree(s)  
   subtype idl_visit_revisit_t is idl_visit_revisit;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idl/visit.h:87

   subtype idl_visit_revisit is unsigned;
   IDL_VISIT_DONT_REVISIT_BY_DEFAULT : constant idl_visit_revisit := 0;
   IDL_VISIT_REVISIT : constant idl_visit_revisit := 16;
   IDL_VISIT_DONT_REVISIT : constant idl_visit_revisit := 32;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idl/visit.h:88

  --*< Revisit node(s) on exit  
  --*< Do not revisit node(s) on exit  
  --* Visit associated type specifier (callback signal)  
  --* Unalias associated type specifier (callback signal)  
  -- FIXME: add IDL_VISIT_ARRAY that complements IDL_VISIT_TYPE_SPEC and takes
  --          into account array declarators, which is incredibly useful for
  --          backends, like the native generator for Cyclone DDS, that need to
  --          unroll for generating serialization code  

   type idl_visitor;
   subtype idl_visitor_t is idl_visitor;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idl/visit.h:104

   type anon2209_array2212 is array (0 .. 18) of idl_visitor_callback_t;
   type idl_visitor is record
      visit : aliased CycloneDDS.Low_Level.idl_tree_h.idl_mask_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idl/visit.h:106
      recurse : aliased idl_visit_recurse_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idl/visit.h:107
      revisit : aliased idl_visit_revisit_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idl/visit.h:111
      c_accept : anon2209_array2212;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idl/visit.h:112
      sources : System.Address;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idl/visit.h:113
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idl/visit.h:105

   function idl_visit
     (pstate : access constant CycloneDDS.Low_Level.idl_processor_h.idl_pstate;
      node : System.Address;
      visitor : access constant idl_visitor_t;
      user_data : System.Address) return CycloneDDS.Low_Level.idl_retcode_h.idl_retcode_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/idl/visit.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "idl_visit";

end CycloneDDS.Low_Level.idl_visit_h;
