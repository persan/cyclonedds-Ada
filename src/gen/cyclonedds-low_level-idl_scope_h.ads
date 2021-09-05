pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.idl_tree_h;
with System;
limited with CycloneDDS.Low_Level.idl_processor_h;

package CycloneDDS.Low_Level.idl_scope_h is

   IDL_FIND_IGNORE_CASE : constant :=
     (2**0);  --  /usr/gnat/include/idl/scope.h:74
   IDL_FIND_IGNORE_IMPORTS : constant :=
     (2**1);  --  /usr/gnat/include/idl/scope.h:75
   IDL_FIND_ANNOTATION : constant :=
     (2**2);  --  /usr/gnat/include/idl/scope.h:76

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

   --  <>
   --  <>

   --  <>type idl_declaration;
   --  <>subtype idl_declaration_t is idl_declaration;

   type idl_scope_t;
   type idl_declaration_kind is
     (IDL_MODULE_DECLARATION, IDL_ANNOTATION_DECLARATION,
      IDL_SPECIFIER_DECLARATION, IDL_INSTANCE_DECLARATION, IDL_USE_DECLARATION,
      IDL_SCOPE_DECLARATION) with
      Convention => C;

      --* module
      --* annotation
      --* const, enumerator, type, ...
      --* declarator, e.g. declarator of struct member or union element
      --* introduced through use of non-absolute qualified name
      --* enclosing scope, for convenience
   type idl_declaration_t is record
      kind        : aliased idl_declaration_kind;
      next        : access idl_declaration_t;
      local_scope : access constant idl_scope_t;
      name        : access CycloneDDS.Low_Level.idl_tree_h.idl_name_t;
      scoped_name : access CycloneDDS.Low_Level.idl_tree_h.idl_scoped_name_t;
      node        : access constant CycloneDDS.Low_Level.idl_tree_h.idl_node_t;
      scope       : access idl_scope_t;
   end record with
      Convention => C_Pass_By_Copy;

      --*< scope local to declaration
      --*< scope introduced by declaration (optional)
      --  <>type idl_import;
      --  <>subtype idl_import_t is idl_import;

   type idl_import_t is record
      next  : access idl_import_t;
      scope : access constant idl_scope_t;
   end record with
      Convention => C_Pass_By_Copy;

   type idl_scope_kind is
     (IDL_GLOBAL_SCOPE, IDL_MODULE_SCOPE, IDL_ANNOTATION_SCOPE,
      IDL_STRUCT_SCOPE, IDL_UNION_SCOPE) with
      Convention => C;

   type anon2044_struct2519 is record
      first : access idl_declaration_t;
      last  : access idl_declaration_t;
   end record with
      Convention => C_Pass_By_Copy;
   type anon2044_struct2520 is record
      first : access idl_import_t;
      last  : access idl_import_t;
   end record with
      Convention => C_Pass_By_Copy;
   type idl_scope_t is record
      kind         : aliased idl_scope_kind;
      parent       : access constant idl_scope_t;
      name : access constant CycloneDDS.Low_Level.idl_tree_h.idl_name_t;
      declarations : aliased anon2044_struct2519;
      imports      : aliased anon2044_struct2520;
   end record with
      Convention => C_Pass_By_Copy;

   function idl_scope (node : System.Address) return access idl_scope_t with
      Import        => True,
      Convention    => C,
      External_Name => "idl_scope";

   function idl_declaration
     (node : System.Address) return access idl_declaration_t with
      Import        => True,
      Convention    => C,
      External_Name => "idl_declaration";

   function idl_find
     (pstate : access constant CycloneDDS.Low_Level.idl_processor_h
        .idl_pstate_t;
      scope : access constant idl_scope_t;
      name  : access constant CycloneDDS.Low_Level.idl_tree_h.idl_name_t;
      flags : unsigned) return access constant idl_declaration_t with
      Import        => True,
      Convention    => C,
      External_Name => "idl_find";

   function idl_find_scoped_name
     (pstate : access constant CycloneDDS.Low_Level.idl_processor_h
        .idl_pstate_t;
      scope       : access constant idl_scope_t;
      scoped_name : access constant CycloneDDS.Low_Level.idl_tree_h
        .idl_scoped_name_t;
      flags : unsigned) return access constant idl_declaration_t with
      Import        => True,
      Convention    => C,
      External_Name => "idl_find_scoped_name";

   function idl_find_field_name
     (pstate : access constant CycloneDDS.Low_Level.idl_processor_h
        .idl_pstate_t;
      scope      : access constant idl_scope_t;
      field_name : access constant CycloneDDS.Low_Level.idl_tree_h
        .idl_field_name_t;
      flags : unsigned) return access constant idl_declaration_t with
      Import        => True,
      Convention    => C,
      External_Name => "idl_find_field_name";

end CycloneDDS.Low_Level.idl_scope_h;
