pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.idl_tree_h;
with System;
limited with CycloneDDS.Low_Level.idl_processor_h;


package CycloneDDS.Low_Level.idl_scope_h is

   IDL_FIND_IGNORE_CASE : constant := (2**0);  --  /usr/gnat/include/idl/scope.h:74
   IDL_FIND_IGNORE_IMPORTS : constant := (2**1);  --  /usr/gnat/include/idl/scope.h:75
   IDL_FIND_ANNOTATION : constant := (2**2);  --  /usr/gnat/include/idl/scope.h:76

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

   type idl_scope;
   subtype idl_scope_t is idl_scope;  -- /usr/gnat/include/idl/scope.h:19

   type idl_declaration;
   subtype idl_declaration_t is idl_declaration;  -- /usr/gnat/include/idl/scope.h:21

   type idl_declaration_kind is 
     (IDL_MODULE_DECLARATION,
      IDL_ANNOTATION_DECLARATION,
      IDL_SPECIFIER_DECLARATION,
      IDL_INSTANCE_DECLARATION,
      IDL_USE_DECLARATION,
      IDL_SCOPE_DECLARATION)
   with Convention => C;  -- /usr/gnat/include/idl/scope.h:23

  --* module  
  --* annotation  
  --* const, enumerator, type, ...  
  --* declarator, e.g. declarator of struct member or union element  
  --* introduced through use of non-absolute qualified name  
  --* enclosing scope, for convenience  
   type idl_declaration is record
      kind : aliased idl_declaration_kind;  -- /usr/gnat/include/idl/scope.h:36
      next : access idl_declaration_t;  -- /usr/gnat/include/idl/scope.h:37
      local_scope : access constant idl_scope_t;  -- /usr/gnat/include/idl/scope.h:38
      name : access CycloneDDS.Low_Level.idl_tree_h.idl_name_t;  -- /usr/gnat/include/idl/scope.h:39
      scoped_name : access CycloneDDS.Low_Level.idl_tree_h.idl_scoped_name_t;  -- /usr/gnat/include/idl/scope.h:40
      node : access constant CycloneDDS.Low_Level.idl_tree_h.idl_node_t;  -- /usr/gnat/include/idl/scope.h:41
      scope : access idl_scope_t;  -- /usr/gnat/include/idl/scope.h:42
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/scope.h:22

  --*< scope local to declaration  
  --*< scope introduced by declaration (optional)  
   type idl_import;
   subtype idl_import_t is idl_import;  -- /usr/gnat/include/idl/scope.h:45

   type idl_import is record
      next : access idl_import_t;  -- /usr/gnat/include/idl/scope.h:47
      scope : access constant idl_scope_t;  -- /usr/gnat/include/idl/scope.h:48
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/scope.h:46

   type idl_scope_kind is 
     (IDL_GLOBAL_SCOPE,
      IDL_MODULE_SCOPE,
      IDL_ANNOTATION_SCOPE,
      IDL_STRUCT_SCOPE,
      IDL_UNION_SCOPE)
   with Convention => C;  -- /usr/gnat/include/idl/scope.h:52

   type anon2044_struct2519 is record
      first : access idl_declaration_t;  -- /usr/gnat/include/idl/scope.h:62
      last : access idl_declaration_t;  -- /usr/gnat/include/idl/scope.h:62
   end record
   with Convention => C_Pass_By_Copy;
   type anon2044_struct2520 is record
      first : access idl_import_t;  -- /usr/gnat/include/idl/scope.h:65
      last : access idl_import_t;  -- /usr/gnat/include/idl/scope.h:65
   end record
   with Convention => C_Pass_By_Copy;
   type idl_scope is record
      kind : aliased idl_scope_kind;  -- /usr/gnat/include/idl/scope.h:58
      parent : access constant idl_scope_t;  -- /usr/gnat/include/idl/scope.h:59
      name : access constant CycloneDDS.Low_Level.idl_tree_h.idl_name_t;  -- /usr/gnat/include/idl/scope.h:60
      declarations : aliased anon2044_struct2519;  -- /usr/gnat/include/idl/scope.h:63
      imports : aliased anon2044_struct2520;  -- /usr/gnat/include/idl/scope.h:66
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/scope.h:51

   function idl_scope (node : System.Address) return access idl_scope_t  -- /usr/gnat/include/idl/scope.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "idl_scope";

   function idl_declaration (node : System.Address) return access idl_declaration_t  -- /usr/gnat/include/idl/scope.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "idl_declaration";

   function idl_find
     (pstate : access constant CycloneDDS.Low_Level.idl_processor_h.idl_pstate;
      scope : access constant idl_scope_t;
      name : access constant CycloneDDS.Low_Level.idl_tree_h.idl_name_t;
      flags : unsigned) return access constant idl_declaration_t  -- /usr/gnat/include/idl/scope.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "idl_find";

   function idl_find_scoped_name
     (pstate : access constant CycloneDDS.Low_Level.idl_processor_h.idl_pstate;
      scope : access constant idl_scope_t;
      scoped_name : access constant CycloneDDS.Low_Level.idl_tree_h.idl_scoped_name_t;
      flags : unsigned) return access constant idl_declaration_t  -- /usr/gnat/include/idl/scope.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "idl_find_scoped_name";

   function idl_find_field_name
     (pstate : access constant CycloneDDS.Low_Level.idl_processor_h.idl_pstate;
      scope : access constant idl_scope_t;
      field_name : access constant CycloneDDS.Low_Level.idl_tree_h.idl_field_name_t;
      flags : unsigned) return access constant idl_declaration_t  -- /usr/gnat/include/idl/scope.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "idl_find_field_name";

end CycloneDDS.Low_Level.idl_scope_h;
