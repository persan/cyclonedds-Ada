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
   IDL_SWITCH_TYPE_SPEC : constant := (2**34);  --  /usr/gnat/include/idl/tree.h:50
   IDL_LITERAL : constant := (2**33);  --  /usr/gnat/include/idl/tree.h:51

   IDL_MODULE : constant := (2**32);  --  /usr/gnat/include/idl/tree.h:53
   IDL_CONST : constant := (2**31);  --  /usr/gnat/include/idl/tree.h:54
   IDL_MEMBER : constant := (2**30);  --  /usr/gnat/include/idl/tree.h:55
   IDL_FORWARD : constant := (2**29);  --  /usr/gnat/include/idl/tree.h:56
   IDL_CASE : constant := (2**28);  --  /usr/gnat/include/idl/tree.h:57
   IDL_CASE_LABEL : constant := (2**27);  --  /usr/gnat/include/idl/tree.h:58
   --  unsupported macro: IDL_DEFAULT_CASE_LABEL (IDL_CASE_LABEL | 1u)
   --  unsupported macro: IDL_IMPLICIT_DEFAULT_CASE_LABEL (IDL_DEFAULT_CASE_LABEL | 2u)

   IDL_ENUMERATOR : constant := (2**26);  --  /usr/gnat/include/idl/tree.h:63
   IDL_DECLARATOR : constant := (2**25);  --  /usr/gnat/include/idl/tree.h:64

   IDL_ANNOTATION : constant := (2**24);  --  /usr/gnat/include/idl/tree.h:66
   IDL_ANNOTATION_MEMBER : constant := (2**23);  --  /usr/gnat/include/idl/tree.h:67
   IDL_ANNOTATION_APPL : constant := (2**22);  --  /usr/gnat/include/idl/tree.h:68
   IDL_ANNOTATION_APPL_PARAM : constant := (2**21);  --  /usr/gnat/include/idl/tree.h:69

   IDL_BASE_TYPE : constant := (2**10);  --  /usr/gnat/include/idl/tree.h:88
   IDL_UNSIGNED : constant := (2**0);  --  /usr/gnat/include/idl/tree.h:89

   IDL_INTEGER_TYPE : constant := (2**9);  --  /usr/gnat/include/idl/tree.h:96

   IDL_FLOATING_PT_TYPE : constant := (2**8);  --  /usr/gnat/include/idl/tree.h:115
   --  arg-macro: procedure IDL_FOREACH (node, list)
   --    for ((node) := (list); (node); (node) := idl_next(node))

   IDL_UNALIAS_IGNORE_ARRAY : constant := (2**0);  --  /usr/gnat/include/idl/tree.h:507

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
   subtype idl_type_t is idl_type;  -- /usr/gnat/include/idl/tree.h:73

   subtype idl_type is unsigned;
   IDL_NULL : constant idl_type := 0;
   IDL_TYPEDEF : constant idl_type := 262144;
   IDL_STRUCT : constant idl_type := 131072;
   IDL_UNION : constant idl_type := 65536;
   IDL_ENUM : constant idl_type := 32768;
   IDL_SEQUENCE : constant idl_type := 16384;
   IDL_STRING : constant idl_type := 8192;
   IDL_WSTRING : constant idl_type := 4096;
   IDL_FIXED_PT : constant idl_type := 2048;
   IDL_CHAR : constant idl_type := 1026;
   IDL_WCHAR : constant idl_type := 1028;
   IDL_BOOL : constant idl_type := 1030;
   IDL_OCTET : constant idl_type := 1033;
   IDL_ANY : constant idl_type := 1034;
   IDL_SHORT : constant idl_type := 1538;
   IDL_USHORT : constant idl_type := 1539;
   IDL_LONG : constant idl_type := 1540;
   IDL_ULONG : constant idl_type := 1541;
   IDL_LLONG : constant idl_type := 1542;
   IDL_ULLONG : constant idl_type := 1543;
   IDL_INT8 : constant idl_type := 1544;
   IDL_UINT8 : constant idl_type := 1545;
   IDL_INT16 : constant idl_type := 1546;
   IDL_UINT16 : constant idl_type := 1547;
   IDL_INT32 : constant idl_type := 1548;
   IDL_UINT32 : constant idl_type := 1549;
   IDL_INT64 : constant idl_type := 1550;
   IDL_UINT64 : constant idl_type := 1551;
   IDL_FLOAT : constant idl_type := 1281;
   IDL_DOUBLE : constant idl_type := 1282;
   IDL_LDOUBLE : constant idl_type := 1283;  -- /usr/gnat/include/idl/tree.h:74

  -- constructed types  
  -- template types  
  -- simple types  
  -- miscellaneous base types  
  -- integer types  
  -- fixed size integer types overlap with legacy integer types in size, but
  --     unique identifiers are required for proper syntax errors. language
  --     bindings may choose to map onto different types as well  

  -- floating point types  
   type idl_name;
   subtype idl_name_t is idl_name;  -- /usr/gnat/include/idl/tree.h:121

   type idl_name is record
      symbol : aliased CycloneDDS.Low_Level.idl_symbol_h.idl_symbol_t;  -- /usr/gnat/include/idl/tree.h:123
      identifier : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/idl/tree.h:124
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:122

   type idl_scoped_name;
   subtype idl_scoped_name_t is idl_scoped_name;  -- /usr/gnat/include/idl/tree.h:127

   type idl_scoped_name is record
      symbol : aliased CycloneDDS.Low_Level.idl_symbol_h.idl_symbol_t;  -- /usr/gnat/include/idl/tree.h:129
      absolute : aliased Extensions.bool;  -- /usr/gnat/include/idl/tree.h:130
      length : aliased unsigned_long;  -- /usr/gnat/include/idl/tree.h:131
      names : System.Address;  -- /usr/gnat/include/idl/tree.h:132
      identifier : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/idl/tree.h:133
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:128

  --*< qualified identifier  
   type idl_field_name;
   subtype idl_field_name_t is idl_field_name;  -- /usr/gnat/include/idl/tree.h:136

   type idl_field_name is record
      symbol : aliased CycloneDDS.Low_Level.idl_symbol_h.idl_symbol_t;  -- /usr/gnat/include/idl/tree.h:138
      length : aliased unsigned_long;  -- /usr/gnat/include/idl/tree.h:139
      names : System.Address;  -- /usr/gnat/include/idl/tree.h:140
      identifier : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/idl/tree.h:141
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:137

  --*< field identifier  
   subtype idl_const_expr_t is System.Address;  -- /usr/gnat/include/idl/tree.h:148

   subtype idl_definition_t is System.Address;  -- /usr/gnat/include/idl/tree.h:149

   subtype idl_type_spec_t is System.Address;  -- /usr/gnat/include/idl/tree.h:150

   subtype idl_mask_t is unsigned_long;  -- /usr/gnat/include/idl/tree.h:152

   type idl_delete_t is access procedure (arg1 : System.Address)
   with Convention => C;  -- /usr/gnat/include/idl/tree.h:153

   type idl_iterate_t is access function (arg1 : System.Address; arg2 : System.Address) return System.Address
   with Convention => C;  -- /usr/gnat/include/idl/tree.h:154

   type idl_describe_t is access function (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr
   with Convention => C;  -- /usr/gnat/include/idl/tree.h:155

   type idl_node;
   subtype idl_node_t is idl_node;  -- /usr/gnat/include/idl/tree.h:157

   type idl_annotation_appl;
   type idl_node is record
      symbol : aliased CycloneDDS.Low_Level.idl_symbol_h.idl_symbol_t;  -- /usr/gnat/include/idl/tree.h:159
      mask : aliased idl_mask_t;  -- /usr/gnat/include/idl/tree.h:160
      destructor : idl_delete_t;  -- /usr/gnat/include/idl/tree.h:161
      iterate : idl_iterate_t;  -- /usr/gnat/include/idl/tree.h:162
      describe : idl_describe_t;  -- /usr/gnat/include/idl/tree.h:163
      references : aliased int;  -- /usr/gnat/include/idl/tree.h:164
      annotations : access idl_annotation_appl;  -- /usr/gnat/include/idl/tree.h:165
      declaration : access constant CycloneDDS.Low_Level.idl_scope_h.idl_declaration;  -- /usr/gnat/include/idl/tree.h:166
      parent : access idl_node_t;  -- /usr/gnat/include/idl/tree.h:167
      previous : access idl_node_t;  -- /usr/gnat/include/idl/tree.h:168
      next : access idl_node_t;  -- /usr/gnat/include/idl/tree.h:168
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:158

   type idl_path;
   subtype idl_path_t is idl_path;  -- /usr/gnat/include/idl/tree.h:171

   type idl_path is record
      length : aliased unsigned_long;  -- /usr/gnat/include/idl/tree.h:173
      nodes : System.Address;  -- /usr/gnat/include/idl/tree.h:174
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:172

   type idl_id;
   subtype idl_id_t is idl_id;  -- /usr/gnat/include/idl/tree.h:177

  --*< value assigned automatically  
  --*< value assigned by @id  
  --*< value assigned by @hashid  
   type anon2072_enum2074 is 
     (IDL_AUTOID,
      IDL_ID,
      IDL_HASHID)
   with Convention => C;
   type idl_id is record
      annotation : anon2072_enum2074;  -- /usr/gnat/include/idl/tree.h:183
      value : aliased unsigned;  -- /usr/gnat/include/idl/tree.h:184
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:178

   subtype idl_autoid_t is idl_autoid;  -- /usr/gnat/include/idl/tree.h:187

   type idl_autoid is 
     (IDL_AUTOID_SEQUENTIAL,
      IDL_AUTOID_HASH)
   with Convention => C;  -- /usr/gnat/include/idl/tree.h:188

   subtype idl_extensibility_t is idl_extensibility;  -- /usr/gnat/include/idl/tree.h:193

   type idl_extensibility is 
     (IDL_EXTENSIBILITY_FINAL,
      IDL_EXTENSIBILITY_APPENDABLE,
      IDL_EXTENSIBILITY_MUTABLE)
   with Convention => C;  -- /usr/gnat/include/idl/tree.h:194

  -- constructed types are not considered @nested types by default, implicitly
  --   stating the intent to use it as a topic. extensible and dynamic topic types
  --   added @default_nested and @topic to explicitly state the intent to use a
  --   type as a topic. for ease of use, the sum-total is provided as a single
  --   boolean  

   type idl_nested;
   subtype idl_nested_t is idl_nested;  -- /usr/gnat/include/idl/tree.h:205

  --*< implicit through @default_nested (or not)  
  --*< annotated with @nested  
  --*< annotated with @topic (overrides @nested)  
   type anon2079_enum2081 is 
     (IDL_DEFAULT_NESTED,
      IDL_NESTED,
      IDL_TOPIC)
   with Convention => C;
   type idl_nested is record
      annotation : anon2079_enum2081;  -- /usr/gnat/include/idl/tree.h:211
      value : aliased Extensions.bool;  -- /usr/gnat/include/idl/tree.h:212
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:206

  -- nullable boolean, like Boolean object in e.g. JavaScript or Java  
   subtype idl_boolean_t is idl_boolean;  -- /usr/gnat/include/idl/tree.h:216

   type idl_boolean is 
     (IDL_DEFAULT,
      IDL_FALSE,
      IDL_TRUE)
   with Convention => C;  -- /usr/gnat/include/idl/tree.h:217

  -- annotations  
   type idl_const;
   subtype idl_const_t is idl_const;  -- /usr/gnat/include/idl/tree.h:225

   type idl_const is record
      node : aliased idl_node_t;  -- /usr/gnat/include/idl/tree.h:227
      name : access idl_name_t;  -- /usr/gnat/include/idl/tree.h:228
      type_spec : System.Address;  -- /usr/gnat/include/idl/tree.h:229
      const_expr : System.Address;  -- /usr/gnat/include/idl/tree.h:230
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:226

  -- constants contain the value of resolved constant expressions and are used
  --   if the resulting constant value can be of more than one type, e.g. in
  --   constant declarations, case labels, etc. language native types are used if
  --   the resulting constant value is required to be of a specific base type,
  --   e.g. bounds in sequences  

   type idl_literal;
   subtype idl_literal_t is idl_literal;  -- /usr/gnat/include/idl/tree.h:238

   type anon2088_union2090 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            bln : aliased Extensions.bool;  -- /usr/gnat/include/idl/tree.h:242
         when 1 =>
            chr : aliased char;  -- /usr/gnat/include/idl/tree.h:243
         when 2 =>
            int8 : aliased char;  -- /usr/gnat/include/idl/tree.h:244
         when 3 =>
            uint8 : aliased unsigned_char;  -- /usr/gnat/include/idl/tree.h:245
         when 4 =>
            int16 : aliased short;  -- /usr/gnat/include/idl/tree.h:246
         when 5 =>
            uint16 : aliased unsigned_short;  -- /usr/gnat/include/idl/tree.h:247
         when 6 =>
            int32 : aliased int;  -- /usr/gnat/include/idl/tree.h:248
         when 7 =>
            uint32 : aliased unsigned;  -- /usr/gnat/include/idl/tree.h:249
         when 8 =>
            int64 : aliased long;  -- /usr/gnat/include/idl/tree.h:250
         when 9 =>
            uint64 : aliased unsigned_long;  -- /usr/gnat/include/idl/tree.h:251
         when 10 =>
            flt : aliased float;  -- /usr/gnat/include/idl/tree.h:252
         when 11 =>
            dbl : aliased double;  -- /usr/gnat/include/idl/tree.h:253
         when 12 =>
            ldbl : aliased long_double;  -- /usr/gnat/include/idl/tree.h:254
         when others =>
            str : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/idl/tree.h:255
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type idl_literal is record
      node : aliased idl_node_t;  -- /usr/gnat/include/idl/tree.h:240
      value : aliased anon2088_union2090;  -- /usr/gnat/include/idl/tree.h:256
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:239

   type idl_base_type;
   subtype idl_base_type_t is idl_base_type;  -- /usr/gnat/include/idl/tree.h:259

   type idl_base_type is record
      node : aliased idl_node_t;  -- /usr/gnat/include/idl/tree.h:261
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:260

  -- empty  
   type idl_sequence;
   subtype idl_sequence_t is idl_sequence;  -- /usr/gnat/include/idl/tree.h:265

   type idl_sequence is record
      node : aliased idl_node_t;  -- /usr/gnat/include/idl/tree.h:267
      type_spec : System.Address;  -- /usr/gnat/include/idl/tree.h:268
      maximum : aliased unsigned;  -- /usr/gnat/include/idl/tree.h:269
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:266

   type idl_string;
   subtype idl_string_t is idl_string;  -- /usr/gnat/include/idl/tree.h:272

   type idl_string is record
      node : aliased idl_node_t;  -- /usr/gnat/include/idl/tree.h:274
      maximum : aliased unsigned;  -- /usr/gnat/include/idl/tree.h:275
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:273

   type idl_module;
   subtype idl_module_t is idl_module;  -- /usr/gnat/include/idl/tree.h:278

   type idl_module is record
      node : aliased idl_node_t;  -- /usr/gnat/include/idl/tree.h:280
      name : access idl_name_t;  -- /usr/gnat/include/idl/tree.h:281
      definitions : System.Address;  -- /usr/gnat/include/idl/tree.h:282
      previous : access constant idl_module_t;  -- /usr/gnat/include/idl/tree.h:283
      default_nested : aliased idl_boolean_t;  -- /usr/gnat/include/idl/tree.h:285
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:279

  --*< previous module if module was reopened  
  -- metadata  
   type idl_declarator;
   subtype idl_declarator_t is idl_declarator;  -- /usr/gnat/include/idl/tree.h:288

   type idl_declarator is record
      node : aliased idl_node_t;  -- /usr/gnat/include/idl/tree.h:290
      name : access idl_name_t;  -- /usr/gnat/include/idl/tree.h:291
      const_expr : System.Address;  -- /usr/gnat/include/idl/tree.h:292
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:289

   type idl_member;
   subtype idl_member_t is idl_member;  -- /usr/gnat/include/idl/tree.h:295

   type idl_member is record
      node : aliased idl_node_t;  -- /usr/gnat/include/idl/tree.h:297
      type_spec : System.Address;  -- /usr/gnat/include/idl/tree.h:298
      declarators : access idl_declarator_t;  -- /usr/gnat/include/idl/tree.h:299
      key : aliased idl_boolean_t;  -- /usr/gnat/include/idl/tree.h:301
      id : aliased idl_id_t;  -- /usr/gnat/include/idl/tree.h:302
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:296

  -- metadata  
  -- types can inherit from and extend other types (interfaces, values and
  --   structs). declarations in the base type that become available in the
  --   derived type as a consequence are imported into the scope  

   type idl_inherit_spec;
   subtype idl_inherit_spec_t is idl_inherit_spec;  -- /usr/gnat/include/idl/tree.h:308

   type idl_inherit_spec is record
      node : aliased idl_node_t;  -- /usr/gnat/include/idl/tree.h:310
      base : System.Address;  -- /usr/gnat/include/idl/tree.h:311
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:309

  -- keylist directives can use dotted names, e.g. "#pragma keylist foo bar.baz"
  --   in "struct foo { struct bar { long baz; }; };" to declare a member as key.
  --   this notation makes it possible for "baz" to only be a key member if "bar"
  --   is embedded in "foo" and for key order to differ from field order  

   type idl_key;
   subtype idl_key_t is idl_key;  -- /usr/gnat/include/idl/tree.h:318

   type idl_key is record
      node : aliased idl_node_t;  -- /usr/gnat/include/idl/tree.h:320
      field_name : access idl_field_name_t;  -- /usr/gnat/include/idl/tree.h:322
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:319

  -- store entire field name as context matters for embedded struct fields  
   type idl_keylist;
   subtype idl_keylist_t is idl_keylist;  -- /usr/gnat/include/idl/tree.h:325

   type idl_keylist is record
      node : aliased idl_node_t;  -- /usr/gnat/include/idl/tree.h:327
      keys : access idl_key_t;  -- /usr/gnat/include/idl/tree.h:328
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:326

   type idl_struct;
   subtype idl_struct_t is idl_struct;  -- /usr/gnat/include/idl/tree.h:331

   type idl_struct is record
      node : aliased idl_node_t;  -- /usr/gnat/include/idl/tree.h:333
      inherit_spec : access idl_inherit_spec_t;  -- /usr/gnat/include/idl/tree.h:334
      name : access idl_name;  -- /usr/gnat/include/idl/tree.h:335
      members : access idl_member_t;  -- /usr/gnat/include/idl/tree.h:336
      nested : aliased idl_nested_t;  -- /usr/gnat/include/idl/tree.h:338
      keylist : access idl_keylist_t;  -- /usr/gnat/include/idl/tree.h:339
      autoid : aliased idl_autoid_t;  -- /usr/gnat/include/idl/tree.h:340
      extensibility : aliased idl_extensibility_t;  -- /usr/gnat/include/idl/tree.h:341
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:332

  -- metadata  
  --*< if type is a topic (sum total of annotations)  
  --*< if type is a topic (#pragma keylist)  
   type idl_case_label;
   subtype idl_case_label_t is idl_case_label;  -- /usr/gnat/include/idl/tree.h:344

   type idl_case_label is record
      node : aliased idl_node_t;  -- /usr/gnat/include/idl/tree.h:346
      const_expr : System.Address;  -- /usr/gnat/include/idl/tree.h:347
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:345

   type idl_case;
   subtype idl_case_t is idl_case;  -- /usr/gnat/include/idl/tree.h:350

   type idl_case is record
      node : aliased idl_node_t;  -- /usr/gnat/include/idl/tree.h:352
      labels : access idl_case_label_t;  -- /usr/gnat/include/idl/tree.h:353
      type_spec : System.Address;  -- /usr/gnat/include/idl/tree.h:354
      declarator : access idl_declarator_t;  -- /usr/gnat/include/idl/tree.h:355
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:351

   type idl_switch_type_spec;
   subtype idl_switch_type_spec_t is idl_switch_type_spec;  -- /usr/gnat/include/idl/tree.h:358

   type idl_switch_type_spec is record
      node : aliased idl_node_t;  -- /usr/gnat/include/idl/tree.h:360
      type_spec : System.Address;  -- /usr/gnat/include/idl/tree.h:361
      key : aliased idl_boolean_t;  -- /usr/gnat/include/idl/tree.h:363
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:359

  -- metadata  
   type idl_union;
   subtype idl_union_t is idl_union;  -- /usr/gnat/include/idl/tree.h:366

   type idl_union is record
      node : aliased idl_node_t;  -- /usr/gnat/include/idl/tree.h:368
      name : access idl_name;  -- /usr/gnat/include/idl/tree.h:369
      switch_type_spec : access idl_switch_type_spec_t;  -- /usr/gnat/include/idl/tree.h:370
      cases : access idl_case_t;  -- /usr/gnat/include/idl/tree.h:371
      default_case : access idl_case_label_t;  -- /usr/gnat/include/idl/tree.h:378
      unused_labels : aliased unsigned_long;  -- /usr/gnat/include/idl/tree.h:379
      nested : aliased idl_nested_t;  -- /usr/gnat/include/idl/tree.h:380
      extensibility : aliased idl_extensibility_t;  -- /usr/gnat/include/idl/tree.h:381
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:367

  -- metadata  
  -- label associated with the default value for the discriminator. i.e.
  --   * the first discriminant value if the entire range of the discriminator is
  --   * covered, the default case if specified, or a spontaneously materialised
  --   * implicit default case that does not reference any branch
  --    

  --*< number of unused labels  
  --*< if type is topic (sum total of annotations)  
   type idl_enumerator;
   subtype idl_enumerator_t is idl_enumerator;  -- /usr/gnat/include/idl/tree.h:384

   type idl_enumerator is record
      node : aliased idl_node_t;  -- /usr/gnat/include/idl/tree.h:386
      name : access idl_name;  -- /usr/gnat/include/idl/tree.h:387
      value : aliased unsigned;  -- /usr/gnat/include/idl/tree.h:392
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:385

  -- metadata  
  -- an enumeration must contain no more than 2^32 enumerators and must be
  --     mapped to a native data type capable of representing a maximally-sized
  --     enumeration  

   type idl_enum;
   subtype idl_enum_t is idl_enum;  -- /usr/gnat/include/idl/tree.h:395

   type idl_enum is record
      node : aliased idl_node_t;  -- /usr/gnat/include/idl/tree.h:397
      name : access idl_name;  -- /usr/gnat/include/idl/tree.h:398
      enumerators : access idl_enumerator_t;  -- /usr/gnat/include/idl/tree.h:399
      extensibility : aliased idl_extensibility_t;  -- /usr/gnat/include/idl/tree.h:400
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:396

   type idl_typedef;
   subtype idl_typedef_t is idl_typedef;  -- /usr/gnat/include/idl/tree.h:403

   type idl_typedef is record
      node : aliased idl_node_t;  -- /usr/gnat/include/idl/tree.h:405
      type_spec : System.Address;  -- /usr/gnat/include/idl/tree.h:406
      declarators : access idl_declarator_t;  -- /usr/gnat/include/idl/tree.h:407
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:404

   type idl_annotation_callback_t is access function
        (arg1 : access CycloneDDS.Low_Level.idl_processor_h.idl_pstate;
         arg2 : access idl_annotation_appl;
         arg3 : access idl_node_t) return CycloneDDS.Low_Level.idl_retcode_h.idl_retcode_t
   with Convention => C;  -- /usr/gnat/include/idl/tree.h:411

   type idl_annotation_member;
   subtype idl_annotation_member_t is idl_annotation_member;  -- /usr/gnat/include/idl/tree.h:416

   type idl_annotation_member is record
      node : aliased idl_node_t;  -- /usr/gnat/include/idl/tree.h:418
      type_spec : System.Address;  -- /usr/gnat/include/idl/tree.h:419
      declarator : access idl_declarator_t;  -- /usr/gnat/include/idl/tree.h:420
      const_expr : System.Address;  -- /usr/gnat/include/idl/tree.h:421
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:417

  --*< default value (if any)  
   subtype idl_annotation_definition_t is System.Address;  -- /usr/gnat/include/idl/tree.h:424

   type idl_annotation;
   subtype idl_annotation_t is idl_annotation;  -- /usr/gnat/include/idl/tree.h:426

   type idl_annotation is record
      node : aliased idl_node_t;  -- /usr/gnat/include/idl/tree.h:428
      name : access idl_name_t;  -- /usr/gnat/include/idl/tree.h:429
      definitions : System.Address;  -- /usr/gnat/include/idl/tree.h:431
      callback : idl_annotation_callback_t;  -- /usr/gnat/include/idl/tree.h:432
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:427

  --* definitions that together form the body, e.g. member, enum, etc  
   type idl_annotation_appl_param;
   subtype idl_annotation_appl_param_t is idl_annotation_appl_param;  -- /usr/gnat/include/idl/tree.h:435

   type idl_annotation_appl_param is record
      node : aliased idl_node_t;  -- /usr/gnat/include/idl/tree.h:437
      member : access idl_annotation_member_t;  -- /usr/gnat/include/idl/tree.h:438
      const_expr : System.Address;  -- /usr/gnat/include/idl/tree.h:439
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:436

  --*< constant or enumerator  
   subtype idl_annotation_appl_t is idl_annotation_appl;  -- /usr/gnat/include/idl/tree.h:442

   type idl_annotation_appl is record
      node : aliased idl_node_t;  -- /usr/gnat/include/idl/tree.h:444
      annotation : access constant idl_annotation_t;  -- /usr/gnat/include/idl/tree.h:445
      parameters : access idl_annotation_appl_param_t;  -- /usr/gnat/include/idl/tree.h:446
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/idl/tree.h:443

   function idl_is_declaration (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:449
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_declaration";

   function idl_is_module (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:450
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_module";

   function idl_is_const (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:451
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_const";

   function idl_is_literal (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:452
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_literal";

   function idl_is_type_spec (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:453
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_type_spec";

   function idl_is_base_type (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:454
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_base_type";

   function idl_is_floating_pt_type (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:455
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_floating_pt_type";

   function idl_is_integer_type (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:456
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_integer_type";

   function idl_is_templ_type (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:457
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_templ_type";

   function idl_is_bounded (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:458
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_bounded";

   function idl_is_sequence (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:459
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_sequence";

   function idl_is_string (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:460
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_string";

   function idl_is_constr_type (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:461
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_constr_type";

   function idl_is_struct (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:462
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_struct";

   function idl_is_inherit_spec (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:463
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_inherit_spec";

   function idl_is_member (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:464
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_member";

   function idl_is_union (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:465
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_union";

   function idl_is_switch_type_spec (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:466
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_switch_type_spec";

   function idl_is_case (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:467
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_case";

   function idl_is_default_case (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:468
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_default_case";

   function idl_is_implicit_default_case (ptr : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:469
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_implicit_default_case";

   function idl_is_case_label (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:470
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_case_label";

   function idl_is_enum (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:471
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_enum";

   function idl_is_enumerator (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:472
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_enumerator";

   function idl_is_alias (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:473
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_alias";

   function idl_is_typedef (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:474
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_typedef";

   function idl_is_declarator (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:475
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_declarator";

   function idl_is_array (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:476
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_array";

   function idl_is_annotation_member (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:477
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_annotation_member";

   function idl_is_annotation_appl (node : System.Address) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:478
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_annotation_appl";

   function idl_is_topic (node : System.Address; keylist : Extensions.bool) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:479
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_topic";

   function idl_is_keyless (node : System.Address; keylist : Extensions.bool) return Extensions.bool  -- /usr/gnat/include/idl/tree.h:480
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_keyless";

  -- 1-based, returns 0 if path does not refer to key, non-0 otherwise  
   function idl_is_topic_key
     (node : System.Address;
      keylist : Extensions.bool;
      path : access constant idl_path_t) return unsigned  -- /usr/gnat/include/idl/tree.h:482
   with Import => True, 
        Convention => C, 
        External_Name => "idl_is_topic_key";

  -- accessors  
   function idl_mask (node : System.Address) return idl_mask_t  -- /usr/gnat/include/idl/tree.h:485
   with Import => True, 
        Convention => C, 
        External_Name => "idl_mask";

   function idl_type (node : System.Address) return idl_type_t  -- /usr/gnat/include/idl/tree.h:486
   with Import => True, 
        Convention => C, 
        External_Name => "idl_type";

   function idl_type_spec (node : System.Address) return System.Address  -- /usr/gnat/include/idl/tree.h:487
   with Import => True, 
        Convention => C, 
        External_Name => "idl_type_spec";

  -- return a string describing the language construct. e.g. "module" or
  --   "forward struct" for modules and forward struct declarations respectively  

   function idl_construct (node : System.Address) return Interfaces.C.Strings.chars_ptr  -- /usr/gnat/include/idl/tree.h:490
   with Import => True, 
        Convention => C, 
        External_Name => "idl_construct";

   function idl_identifier (node : System.Address) return Interfaces.C.Strings.chars_ptr  -- /usr/gnat/include/idl/tree.h:491
   with Import => True, 
        Convention => C, 
        External_Name => "idl_identifier";

   function idl_name (node : System.Address) return access constant idl_name_t  -- /usr/gnat/include/idl/tree.h:492
   with Import => True, 
        Convention => C, 
        External_Name => "idl_name";

   function idl_array_size (node : System.Address) return unsigned  -- /usr/gnat/include/idl/tree.h:493
   with Import => True, 
        Convention => C, 
        External_Name => "idl_array_size";

   function idl_bound (node : System.Address) return unsigned  -- /usr/gnat/include/idl/tree.h:494
   with Import => True, 
        Convention => C, 
        External_Name => "idl_bound";

  -- navigation  
   function idl_ancestor (node : System.Address; levels : unsigned_long) return System.Address  -- /usr/gnat/include/idl/tree.h:497
   with Import => True, 
        Convention => C, 
        External_Name => "idl_ancestor";

   function idl_parent (node : System.Address) return System.Address  -- /usr/gnat/include/idl/tree.h:498
   with Import => True, 
        Convention => C, 
        External_Name => "idl_parent";

   function idl_degree (node : System.Address) return unsigned_long  -- /usr/gnat/include/idl/tree.h:499
   with Import => True, 
        Convention => C, 
        External_Name => "idl_degree";

   function idl_next (node : System.Address) return System.Address  -- /usr/gnat/include/idl/tree.h:500
   with Import => True, 
        Convention => C, 
        External_Name => "idl_next";

   function idl_previous (node : System.Address) return System.Address  -- /usr/gnat/include/idl/tree.h:501
   with Import => True, 
        Convention => C, 
        External_Name => "idl_previous";

   function idl_iterate (root : System.Address; node : System.Address) return System.Address  -- /usr/gnat/include/idl/tree.h:502
   with Import => True, 
        Convention => C, 
        External_Name => "idl_iterate";

   function idl_unalias (node : System.Address; flags : unsigned) return System.Address  -- /usr/gnat/include/idl/tree.h:508
   with Import => True, 
        Convention => C, 
        External_Name => "idl_unalias";

end CycloneDDS.Low_Level.idl_tree_h;
