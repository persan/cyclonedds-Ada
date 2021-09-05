pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.idl_symbol_h;
with Interfaces.C.Strings;
with Interfaces.C.Extensions;

with System;

limited with CycloneDDS.Low_Level.idl_scope_h;
limited with CycloneDDS.Low_Level.idl_processor_h;
with CycloneDDS.Low_Level.idl_retcode_h;

package CycloneDDS.Low_Level.idl_tree_h is

   --  unsupported macro: IDL_DECLARATION (IDL_MODULE | IDL_CONST | IDL_CONSTR_TYPE | IDL_TYPEDEF | IDL_MEMBER | IDL_CASE | IDL_CASE_LABEL | IDL_ENUMERATOR | IDL_DECLARATOR)
   --  unsupported macro: IDL_TYPE (IDL_BASE_TYPE | IDL_TEMPL_TYPE | IDL_CONSTR_TYPE | IDL_TYPEDEF)
   --  unsupported macro: IDL_CONSTR_TYPE (IDL_STRUCT | IDL_UNION | IDL_ENUM)
   --  unsupported macro: IDL_TEMPL_TYPE (IDL_SEQUENCE | IDL_STRING | IDL_WSTRING | IDL_FIXED_PT)
   IDL_KEYLIST : constant := (2**37);  --  /usr/gnat/include/idl/tree.h:47
   IDL_KEY : constant := (2**36);  --  /usr/gnat/include/idl/tree.h:48
   IDL_INHERIT_SPEC : constant := (2**35);  --  /usr/gnat/include/idl/tree.h:49
   IDL_SWITCH_TYPE_SPEC : constant :=
     (2**34);  --  /usr/gnat/include/idl/tree.h:50
   IDL_LITERAL : constant := (2**33);  --  /usr/gnat/include/idl/tree.h:51

   IDL_MODULE     : constant := (2**32);  --  /usr/gnat/include/idl/tree.h:53
   IDL_CONST      : constant := (2**31);  --  /usr/gnat/include/idl/tree.h:54
   IDL_MEMBER     : constant := (2**30);  --  /usr/gnat/include/idl/tree.h:55
   IDL_FORWARD    : constant := (2**29);  --  /usr/gnat/include/idl/tree.h:56
   IDL_CASE       : constant := (2**28);  --  /usr/gnat/include/idl/tree.h:57
   IDL_CASE_LABEL : constant := (2**27);  --  /usr/gnat/include/idl/tree.h:58
   --  unsupported macro: IDL_DEFAULT_CASE_LABEL (IDL_CASE_LABEL | 1u)
   --  unsupported macro: IDL_IMPLICIT_DEFAULT_CASE_LABEL (IDL_DEFAULT_CASE_LABEL | 2u)

   IDL_ENUMERATOR : constant := (2**26);  --  /usr/gnat/include/idl/tree.h:63
   IDL_DECLARATOR : constant := (2**25);  --  /usr/gnat/include/idl/tree.h:64

   IDL_ANNOTATION : constant := (2**24);  --  /usr/gnat/include/idl/tree.h:66
   IDL_ANNOTATION_MEMBER : constant :=
     (2**23);  --  /usr/gnat/include/idl/tree.h:67
   IDL_ANNOTATION_APPL : constant :=
     (2**22);  --  /usr/gnat/include/idl/tree.h:68
   IDL_ANNOTATION_APPL_PARAM : constant :=
     (2**21);  --  /usr/gnat/include/idl/tree.h:69

   IDL_BASE_TYPE : constant := (2**10);  --  /usr/gnat/include/idl/tree.h:88
   IDL_UNSIGNED  : constant := (2**0);  --  /usr/gnat/include/idl/tree.h:89

   IDL_INTEGER_TYPE : constant := (2**9);  --  /usr/gnat/include/idl/tree.h:96

   IDL_FLOATING_PT_TYPE : constant :=
     (2**8);  --  /usr/gnat/include/idl/tree.h:115
   --  arg-macro: procedure IDL_FOREACH (node, list)
   --    for ((node) := (list); (node); (node) := idl_next(node))

   IDL_UNALIAS_IGNORE_ARRAY : constant :=
     (2**0);  --  /usr/gnat/include/idl/tree.h:507

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

   -- the parser constructs a tree representing the idl document from
   --   specialized nodes. each node is derived from the same base node, which
   --   contains properties common accross nodes, and is either a declaration,
--   specifier, expression, constant, pragma, or combination thereof. constants
--   contain the result from an expression, pragmas contain compiler-specific
--   instructions that apply to a specific declaration, much like annotations.
--   the exact type of a node is stored in the mask property of the base node
--   and is an constructed by combining preprocessor defines. unique bits are
   --   reserved for categories and properties that generators are likely to filter
   --   on when applying a visitor pattern.

   -- miscellaneous
   -- declarations
   -- if explicit default is specified
   -- if no explicit default is specified and range is not covered
   -- annotations
   -- bits 19 - 20 are reserved for operators (not exposed in tree)

   type idl_type_t is new unsigned;
   IDL_NULL     : constant idl_type_t := 0;
   IDL_TYPEDEF  : constant idl_type_t := 262_144;
   IDL_STRUCT   : constant idl_type_t := 131_072;
   IDL_UNION    : constant idl_type_t := 65_536;
   IDL_ENUM     : constant idl_type_t := 32_768;
   IDL_SEQUENCE : constant idl_type_t := 16_384;
   IDL_STRING   : constant idl_type_t := 8_192;
   IDL_WSTRING  : constant idl_type_t := 4_096;
   IDL_FIXED_PT : constant idl_type_t := 2_048;
   IDL_CHAR     : constant idl_type_t := 1_026;
   IDL_WCHAR    : constant idl_type_t := 1_028;
   IDL_BOOL     : constant idl_type_t := 1_030;
   IDL_OCTET    : constant idl_type_t := 1_033;
   IDL_ANY      : constant idl_type_t := 1_034;
   IDL_SHORT    : constant idl_type_t := 1_538;
   IDL_USHORT   : constant idl_type_t := 1_539;
   IDL_LONG     : constant idl_type_t := 1_540;
   IDL_ULONG    : constant idl_type_t := 1_541;
   IDL_LLONG    : constant idl_type_t := 1_542;
   IDL_ULLONG   : constant idl_type_t := 1_543;
   IDL_INT8     : constant idl_type_t := 1_544;
   IDL_UINT8    : constant idl_type_t := 1_545;
   IDL_INT16    : constant idl_type_t := 1_546;
   IDL_UINT16   : constant idl_type_t := 1_547;
   IDL_INT32    : constant idl_type_t := 1_548;
   IDL_UINT32   : constant idl_type_t := 1_549;
   IDL_INT64    : constant idl_type_t := 1_550;
   IDL_UINT64   : constant idl_type_t := 1_551;
   IDL_FLOAT    : constant idl_type_t := 1_281;
   IDL_DOUBLE   : constant idl_type_t := 1_282;
   IDL_LDOUBLE  : constant idl_type_t := 1_283;

   -- constructed types
   -- template types
   -- simple types
   -- miscellaneous base types
   -- integer types
   -- fixed size integer types overlap with legacy integer types in size, but
   --     unique identifiers are required for proper syntax errors. language
   --     bindings may choose to map onto different types as well

   -- floating point types
   --  <>type idl_name;
   --  <>subtype idl_name_t is idl_name;

   type idl_name_t is record
      symbol     : aliased CycloneDDS.Low_Level.idl_symbol_h.idl_symbol_t;
      identifier : Interfaces.C.Strings.chars_ptr;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>type idl_scoped_name;
      --  <>subtype idl_scoped_name_t is idl_scoped_name;

   type idl_scoped_name_t is record
      symbol     : aliased CycloneDDS.Low_Level.idl_symbol_h.idl_symbol_t;
      absolute   : aliased Extensions.bool;
      length     : aliased unsigned_long;
      names      : System.Address;
      identifier : Interfaces.C.Strings.chars_ptr;
   end record with
      Convention => C_Pass_By_Copy;

      --*< qualified identifier
      --  <>type idl_field_name;
      --  <>subtype idl_field_name_t is idl_field_name;

   type idl_field_name_t is record
      symbol     : aliased CycloneDDS.Low_Level.idl_symbol_h.idl_symbol_t;
      length     : aliased unsigned_long;
      names      : System.Address;
      identifier : Interfaces.C.Strings.chars_ptr;
   end record with
      Convention => C_Pass_By_Copy;

      --*< field identifier
   subtype idl_const_expr_t is System.Address;

   subtype idl_definition_t is System.Address;

   subtype idl_type_spec_t is System.Address;

   subtype idl_mask_t is unsigned_long;

   type idl_delete_t is access procedure (arg1 : System.Address) with
      Convention => C;

   type idl_iterate_t is access function
     (arg1 : System.Address; arg2 : System.Address) return System.Address with
      Convention => C;

   type idl_describe_t is access function
     (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr with
      Convention => C;

      --  <>type idl_node;
      --  <>subtype idl_node_t is idl_node;

      --  <>type idl_annotation_appl;
   type idl_annotation_appl_t;
   type idl_node_t is record
      symbol      : aliased CycloneDDS.Low_Level.idl_symbol_h.idl_symbol_t;
      mask        : aliased idl_mask_t;
      destructor  : idl_delete_t;
      iterate     : idl_iterate_t;
      describe    : idl_describe_t;
      references  : aliased int;
      annotations : access idl_annotation_appl_t;
      declaration : access constant CycloneDDS.Low_Level.idl_scope_h
        .idl_declaration_t;
      parent   : access idl_node_t;
      previous : access idl_node_t;
      next     : access idl_node_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>type idl_path;
      --  <>subtype idl_path_t is idl_path;

   type idl_path_t is record
      length : aliased unsigned_long;
      nodes  : System.Address;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>type idl_id;
      --  <>subtype idl_id_t is idl_id;

      --*< value assigned automatically
      --*< value assigned by @id
      --*< value assigned by @hashid
   type anon2072_enum2074 is (IDL_AUTOID, IDL_ID, IDL_HASHID) with
      Convention => C;
   type idl_id_t is record
      annotation : anon2072_enum2074;
      value      : aliased unsigned;
   end record with
      Convention => C_Pass_By_Copy;

      --  <> subtype idl_autoid_t is idl_autoid;

   type idl_autoid_t is (IDL_AUTOID_SEQUENTIAL, IDL_AUTOID_HASH) with
      Convention => C;

      --  <>subtype idl_extensibility_t is idl_extensibility;

   type idl_extensibility_t is
     (IDL_EXTENSIBILITY_FINAL, IDL_EXTENSIBILITY_APPENDABLE,
      IDL_EXTENSIBILITY_MUTABLE) with
      Convention => C;

   -- constructed types are not considered @nested types by default, implicitly
      --   stating the intent to use it as a topic. extensible and dynamic topic types
--   added @default_nested and @topic to explicitly state the intent to use a
   --   type as a topic. for ease of use, the sum-total is provided as a single
      --   boolean

      --  <>type idl_nested;
      --  <>subtype idl_nested_t is idl_nested;

      --*< implicit through @default_nested (or not)
      --*< annotated with @nested
      --*< annotated with @topic (overrides @nested)
   type anon2079_enum2081 is (IDL_DEFAULT_NESTED, IDL_NESTED, IDL_TOPIC) with
      Convention => C;
   type idl_nested_t is record
      annotation : anon2079_enum2081;
      value      : aliased Extensions.bool;
   end record with
      Convention => C_Pass_By_Copy;

      -- nullable boolean, like Boolean object in e.g. JavaScript or Java
      --  <> subtype idl_boolean_t is idl_boolean;

   type idl_boolean_t is (IDL_DEFAULT, IDL_FALSE, IDL_TRUE) with
      Convention => C;

      -- annotations
      --  <>type idl_const;
      --  <>subtype idl_const_t is idl_const;

   type idl_const_t is record
      node       : aliased idl_node_t;
      name       : access idl_name_t;
      type_spec  : System.Address;
      const_expr : System.Address;
   end record with
      Convention => C_Pass_By_Copy;

   -- constants contain the value of resolved constant expressions and are used
   --   if the resulting constant value can be of more than one type, e.g. in
--   constant declarations, case labels, etc. language native types are used if
   --   the resulting constant value is required to be of a specific base type,
      --   e.g. bounds in sequences

      --  <>type idl_literal;
      --  <>subtype idl_literal_t is idl_literal;

   type anon2088_union2090 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            bln : aliased Extensions.bool;
         when 1 =>
            chr : aliased char;
         when 2 =>
            int8 : aliased char;
         when 3 =>
            uint8 : aliased unsigned_char;
         when 4 =>
            int16 : aliased short;
         when 5 =>
            uint16 : aliased unsigned_short;
         when 6 =>
            int32 : aliased int;
         when 7 =>
            uint32 : aliased unsigned;
         when 8 =>
            int64 : aliased long;
         when 9 =>
            uint64 : aliased unsigned_long;
         when 10 =>
            flt : aliased float;
         when 11 =>
            dbl : aliased double;
         when 12 =>
            ldbl : aliased long_double;
         when others =>
            str : Interfaces.C.Strings.chars_ptr;
      end case;
   end record with
      Convention      => C_Pass_By_Copy,
      Unchecked_Union => True;
   type idl_literal_t is record
      node  : aliased idl_node_t;
      value : aliased anon2088_union2090;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>type idl_base_type;
      --  <>subtype idl_base_type_t is idl_base_type;

   type idl_base_type_t is record
      node : aliased idl_node_t;
   end record with
      Convention => C_Pass_By_Copy;

      -- empty
      --  <>type idl_sequence;
      --  <>subtype idl_sequence_t is idl_sequence;

   type idl_sequence_t is record
      node      : aliased idl_node_t;
      type_spec : System.Address;
      maximum   : aliased unsigned;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>type idl_string;
      --  <>subtype idl_string_t is idl_string;

   type idl_string_t is record
      node    : aliased idl_node_t;
      maximum : aliased unsigned;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>type idl_module;
      --  <>subtype idl_module_t is idl_module;

   type idl_module_t is record
      node           : aliased idl_node_t;
      name           : access idl_name_t;
      definitions    : System.Address;
      previous       : access constant idl_module_t;
      default_nested : aliased idl_boolean_t;
   end record with
      Convention => C_Pass_By_Copy;

      --*< previous module if module was reopened
      -- metadata
      --  <>type idl_declarator;
      --  <>subtype idl_declarator_t is idl_declarator;

   type idl_declarator_t is record
      node       : aliased idl_node_t;
      name       : access idl_name_t;
      const_expr : System.Address;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>type idl_member;
      --  <>subtype idl_member_t is idl_member;

   type idl_member_t is record
      node        : aliased idl_node_t;
      type_spec   : System.Address;
      declarators : access idl_declarator_t;
      key         : aliased idl_boolean_t;
      id          : aliased idl_id_t;
   end record with
      Convention => C_Pass_By_Copy;

      -- metadata
      -- types can inherit from and extend other types (interfaces, values and
      --   structs). declarations in the base type that become available in the
      --   derived type as a consequence are imported into the scope

      --  <>type idl_inherit_spec;
      --  <>subtype idl_inherit_spec_t is idl_inherit_spec;

   type idl_inherit_spec_t is record
      node : aliased idl_node_t;
      base : System.Address;
   end record with
      Convention => C_Pass_By_Copy;

-- keylist directives can use dotted names, e.g. "#pragma keylist foo bar.baz"
--   in "struct foo { struct bar { long baz; }; };" to declare a member as key.
--   this notation makes it possible for "baz" to only be a key member if "bar"
      --   is embedded in "foo" and for key order to differ from field order

      --  <>type idl_key;
      --  <>subtype idl_key_t is idl_key;

   type idl_key_t is record
      node       : aliased idl_node_t;
      field_name : access idl_field_name_t;
   end record with
      Convention => C_Pass_By_Copy;

      -- store entire field name as context matters for embedded struct fields
      --  <>type idl_keylist;
      --  <>subtype idl_keylist_t is idl_keylist;

   type idl_keylist_t is record
      node : aliased idl_node_t;
      keys : access idl_key_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>type idl_struct;
      --  <>subtype idl_struct_t is idl_struct;

   type idl_struct_t is record
      node          : aliased idl_node_t;
      inherit_spec  : access idl_inherit_spec_t;
      name          : access idl_name_t;
      members       : access idl_member_t;
      nested        : aliased idl_nested_t;
      keylist       : access idl_keylist_t;
      autoid        : aliased idl_autoid_t;
      extensibility : aliased idl_extensibility_t;
   end record with
      Convention => C_Pass_By_Copy;

      -- metadata
      --*< if type is a topic (sum total of annotations)
      --*< if type is a topic (#pragma keylist)
      --  <>type idl_case_label;
      --  <>subtype idl_case_label_t is idl_case_label;

   type idl_case_label_t is record
      node       : aliased idl_node_t;
      const_expr : System.Address;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>type idl_case;
      --  <>subtype idl_case_t is idl_case;

   type idl_case_t is record
      node       : aliased idl_node_t;
      labels     : access idl_case_label_t;
      type_spec  : System.Address;
      declarator : access idl_declarator_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>type idl_switch_type_spec;
      --  <>subtype idl_switch_type_spec_t is idl_switch_type_spec;

   type idl_switch_type_spec_t is record
      node      : aliased idl_node_t;
      type_spec : System.Address;
      key       : aliased idl_boolean_t;
   end record with
      Convention => C_Pass_By_Copy;

      -- metadata
      --  <>type idl_union;
      --  <>subtype idl_union_t is idl_union;

   type idl_union_t is record
      node             : aliased idl_node_t;
      name             : access idl_name_t;
      switch_type_spec : access idl_switch_type_spec_t;
      cases            : access idl_case_t;
      default_case     : access idl_case_label_t;
      unused_labels    : aliased unsigned_long;
      nested           : aliased idl_nested_t;
      extensibility    : aliased idl_extensibility_t;
   end record with
      Convention => C_Pass_By_Copy;

      -- metadata
      -- label associated with the default value for the discriminator. i.e.
--   * the first discriminant value if the entire range of the discriminator is
--   * covered, the default case if specified, or a spontaneously materialised
      --   * implicit default case that does not reference any branch
      --

      --*< number of unused labels
      --*< if type is topic (sum total of annotations)
      --  <>type idl_enumerator;
      --  <>subtype idl_enumerator_t is idl_enumerator;

   type idl_enumerator_t is record
      node  : aliased idl_node_t;
      name  : access idl_name_t;
      value : aliased unsigned;
   end record with
      Convention => C_Pass_By_Copy;

      -- metadata
      -- an enumeration must contain no more than 2^32 enumerators and must be
--     mapped to a native data type capable of representing a maximally-sized
      --     enumeration

      --  <>type idl_enum;
      --  <>subtype idl_enum_t is idl_enum;

   type idl_enum_t is record
      node          : aliased idl_node_t;
      name          : access idl_name_t;
      enumerators   : access idl_enumerator_t;
      extensibility : aliased idl_extensibility_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>type idl_typedef;
      --  <>subtype idl_typedef_t is idl_typedef;

   type idl_typedef_t is record
      node        : aliased idl_node_t;
      type_spec   : System.Address;
      declarators : access idl_declarator_t;
   end record with
      Convention => C_Pass_By_Copy;

   type idl_annotation_callback_t is access function
     (arg1 : access CycloneDDS.Low_Level.idl_processor_h.idl_pstate_t;
      arg2 : access idl_annotation_appl_t; arg3 : access idl_node_t)
      return CycloneDDS.Low_Level.idl_retcode_h.idl_retcode_t with
      Convention => C;

      --  <>type idl_annotation_member;
      --  <>subtype idl_annotation_member_t is idl_annotation_member;

   type idl_annotation_member_t is record
      node       : aliased idl_node_t;
      type_spec  : System.Address;
      declarator : access idl_declarator_t;
      const_expr : System.Address;
   end record with
      Convention => C_Pass_By_Copy;

      --*< default value (if any)
   subtype idl_annotation_definition_t is System.Address;

   --  <>type idl_annotation;
   --  <>subtype idl_annotation_t is idl_annotation;

   type idl_annotation_t is record
      node        : aliased idl_node_t;
      name        : access idl_name_t;
      definitions : System.Address;
      callback    : idl_annotation_callback_t;
   end record with
      Convention => C_Pass_By_Copy;

      --* definitions that together form the body, e.g. member, enum, etc
      --  <>type idl_annotation_appl_param;
      --  <>subtype idl_annotation_appl_param_t is idl_annotation_appl_param;

   type idl_annotation_appl_param_t is record
      node       : aliased idl_node_t;
      member     : access idl_annotation_member_t;
      const_expr : System.Address;
   end record with
      Convention => C_Pass_By_Copy;

      --*< constant or enumerator
      --  <>subtype idl_annotation_appl_t is idl_annotation_appl;

   type idl_annotation_appl_t is record
      node       : aliased idl_node_t;
      annotation : access constant idl_annotation_t;
      parameters : access idl_annotation_appl_param_t;
   end record with
      Convention => C_Pass_By_Copy;

   function idl_is_declaration
     (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_declaration";

   function idl_is_module (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_module";

   function idl_is_const (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_const";

   function idl_is_literal (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_literal";

   function idl_is_type_spec
     (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_type_spec";

   function idl_is_base_type
     (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_base_type";

   function idl_is_floating_pt_type
     (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_floating_pt_type";

   function idl_is_integer_type
     (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_integer_type";

   function idl_is_templ_type
     (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_templ_type";

   function idl_is_bounded (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_bounded";

   function idl_is_sequence (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_sequence";

   function idl_is_string (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_string";

   function idl_is_constr_type
     (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_constr_type";

   function idl_is_struct (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_struct";

   function idl_is_inherit_spec
     (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_inherit_spec";

   function idl_is_member (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_member";

   function idl_is_union (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_union";

   function idl_is_switch_type_spec
     (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_switch_type_spec";

   function idl_is_case (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_case";

   function idl_is_default_case
     (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_default_case";

   function idl_is_implicit_default_case
     (ptr : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_implicit_default_case";

   function idl_is_case_label
     (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_case_label";

   function idl_is_enum (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_enum";

   function idl_is_enumerator
     (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_enumerator";

   function idl_is_alias (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_alias";

   function idl_is_typedef (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_typedef";

   function idl_is_declarator
     (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_declarator";

   function idl_is_array (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_array";

   function idl_is_annotation_member
     (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_annotation_member";

   function idl_is_annotation_appl
     (node : System.Address) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_annotation_appl";

   function idl_is_topic
     (node : System.Address; keylist : Extensions.bool)
      return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_topic";

   function idl_is_keyless
     (node : System.Address; keylist : Extensions.bool)
      return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_keyless";

      -- 1-based, returns 0 if path does not refer to key, non-0 otherwise
   function idl_is_topic_key
     (node : System.Address; keylist : Extensions.bool;
      path : access constant idl_path_t) return unsigned with
      Import        => True,
      Convention    => C,
      External_Name => "idl_is_topic_key";

      -- accessors
   function idl_mask (node : System.Address) return idl_mask_t with
      Import        => True,
      Convention    => C,
      External_Name => "idl_mask";

   function idl_type (node : System.Address) return idl_type_t with
      Import        => True,
      Convention    => C,
      External_Name => "idl_type";

   function idl_type_spec (node : System.Address) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "idl_type_spec";

      -- return a string describing the language construct. e.g. "module" or
--   "forward struct" for modules and forward struct declarations respectively

   function idl_construct
     (node : System.Address) return Interfaces.C.Strings.chars_ptr with
      Import        => True,
      Convention    => C,
      External_Name => "idl_construct";

   function idl_identifier
     (node : System.Address) return Interfaces.C.Strings.chars_ptr with
      Import        => True,
      Convention    => C,
      External_Name => "idl_identifier";

   function idl_name
     (node : System.Address) return access constant idl_name_t with
      Import        => True,
      Convention    => C,
      External_Name => "idl_name";

   function idl_array_size (node : System.Address) return unsigned with
      Import        => True,
      Convention    => C,
      External_Name => "idl_array_size";

   function idl_bound (node : System.Address) return unsigned with
      Import        => True,
      Convention    => C,
      External_Name => "idl_bound";

      -- navigation
   function idl_ancestor
     (node : System.Address; levels : unsigned_long) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "idl_ancestor";

   function idl_parent (node : System.Address) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "idl_parent";

   function idl_degree (node : System.Address) return unsigned_long with
      Import        => True,
      Convention    => C,
      External_Name => "idl_degree";

   function idl_next (node : System.Address) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "idl_next";

   function idl_previous (node : System.Address) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "idl_previous";

   function idl_iterate
     (root : System.Address; node : System.Address) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "idl_iterate";

   function idl_unalias
     (node : System.Address; flags : unsigned) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "idl_unalias";

end CycloneDDS.Low_Level.idl_tree_h;
