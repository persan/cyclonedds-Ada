pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

with CycloneDDS.Low_Level.idl_symbol_h;
with System;
with Interfaces.C.Extensions;

limited with CycloneDDS.Low_Level.idl_scope_h;
with CycloneDDS.Low_Level.idl_tree_h;
with CycloneDDS.Low_Level.idl_retcode_h;

package CycloneDDS.Low_Level.idl_processor_h is

   IDL_FLAG_KEYLIST : constant :=
     (2**0);  --  /usr/gnat/include/idl/processor.h:30

   IDL_FLAG_CASE_SENSITIVE : constant :=
     (2**1);  --  /usr/gnat/include/idl/processor.h:34

   IDL_FLAG_EXTENDED_DATA_TYPES : constant :=
     (2**2);  --  /usr/gnat/include/idl/processor.h:36

   IDL_FLAG_ANONYMOUS_TYPES : constant :=
     (2**3);  --  /usr/gnat/include/idl/processor.h:38

   IDL_FLAG_ANNOTATIONS : constant :=
     (2**4);  --  /usr/gnat/include/idl/processor.h:40

   IDL_WRITE : constant := (2**31);  --  /usr/gnat/include/idl/processor.h:42

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

   --*
   -- * @file
   -- * Types and functions for the IDL compiler.
   --

   -- enable "#pragma keylist" for backwards compatibility
   -- case-sensitive extension can be used to allow e.g. field names in structs
   --   and unions that differ solely in case from the name of the respective
   --   struct or union. i.e. "struct FOO_ { octet foo_[42]; };"

   -- enable building block extended data types
   -- enable building block anonymous types
   -- enable building block annotations
   -- flag used by idlc to indicate end-of-buffer (private)
   --  <>type idl_buffer;
   --  <>subtype idl_buffer_t is idl_buffer;

   type idl_buffer_t is record
      data : Interfaces.C.Strings.chars_ptr;
      size : aliased unsigned_long;
      used : aliased unsigned_long;
   end record with
      Convention => C_Pass_By_Copy;

      --*< total number of bytes available
      --*< number of bytes used
      --  <>type idl_pstate;
      --  <>subtype idl_pstate_t is idl_pstate;

      --*< processor options
      --*< normalized paths used in include statements
      --*< filenames used in #line directives
      --*< dynamically sized input buffer
      --* scanning preprocessor directive
      --* scanning #line directive
      --* scanning #pragma directive
      --* scanning #pragma keylist directive
      --* scanning IDL
      -- scanning "@annotation" or scoped name after "@" in IDL
      --* expect identifier, i.e. annotation in "@annotation"
      --* expect identifier, i.e. foo in "@annotation foo"
      --* expect scope or identifier, i.e. :: in "@::" and foo in "@foo"
      --* expect scope, i.e. :: in "@foo::bar::"
      --* expect identifier in scoped name, i.e. foo in "@foo::bar"
      --* final identifier in scoped name, i.e. bar in "@foo::bar" or "@bar"
      --* end of input
      --*< default state
   subtype anon2150_enum2662 is unsigned;
   IDL_SCAN                             : constant anon2150_enum2662 := 0;
   IDL_SCAN_DIRECTIVE                   : constant anon2150_enum2662 := 128;
   IDL_SCAN_DIRECTIVE_NAME              : constant anon2150_enum2662 := 129;
   IDL_SCAN_LINE                        : constant anon2150_enum2662 := 192;
   IDL_SCAN_PATH                        : constant anon2150_enum2662 := 193;
   IDL_SCAN_FLAGS                       : constant anon2150_enum2662 := 194;
   IDL_SCAN_FILE                        : constant anon2150_enum2662 := 195;
   IDL_SCAN_EXTRA_TOKENS                : constant anon2150_enum2662 := 196;
   IDL_SCAN_PRAGMA                      : constant anon2150_enum2662 := 160;
   IDL_SCAN_UNKNOWN_PRAGMA              : constant anon2150_enum2662 := 161;
   IDL_SCAN_KEYLIST                     : constant anon2150_enum2662 := 176;
   IDL_SCAN_DATA_TYPE                   : constant anon2150_enum2662 := 177;
   IDL_SCAN_NAME                        : constant anon2150_enum2662 := 178;
   IDL_SCAN_SCOPE                       : constant anon2150_enum2662 := 179;
   IDL_SCAN_KEY                         : constant anon2150_enum2662 := 180;
   IDL_SCAN_FIELD                       : constant anon2150_enum2662 := 181;
   IDL_SCAN_ACCESS                      : constant anon2150_enum2662 := 182;
   IDL_SCAN_GRAMMAR                     : constant anon2150_enum2662 := 256;
   IDL_SCAN_ANNOTATION                  : constant anon2150_enum2662 := 257;
   IDL_SCAN_ANNOTATION_NAME             : constant anon2150_enum2662 := 258;
   IDL_SCAN_ANNOTATION_APPL             : constant anon2150_enum2662 := 259;
   IDL_SCAN_ANNOTATION_APPL_SCOPE       : constant anon2150_enum2662 := 260;
   IDL_SCAN_ANNOTATION_APPL_SCOPED_NAME : constant anon2150_enum2662 := 261;
   IDL_SCAN_ANNOTATION_APPL_NAME        : constant anon2150_enum2662 := 262;
   IDL_EOF                              : constant anon2150_enum2662 := 512;
   type anon2150_struct2661 is record
      state    : anon2150_enum2662;
      cursor   : Interfaces.C.Strings.chars_ptr;
      limit    : Interfaces.C.Strings.chars_ptr;
      position : aliased CycloneDDS.Low_Level.idl_symbol_h.idl_position_t;
   end record with
      Convention => C_Pass_By_Copy;
   type anon2150_enum2664 is
     (IDL_PARSE, IDL_PARSE_ANNOTATION, IDL_PARSE_ANNOTATION_BODY,
      IDL_PARSE_EXISTING_ANNOTATION_BODY, IDL_PARSE_ANNOTATION_APPL,
      IDL_PARSE_ANNOTATION_APPL_PARAMS,
      IDL_PARSE_UNKNOWN_ANNOTATION_APPL_PARAMS) with
      Convention => C;
   type anon2150_struct2663 is record
      state    : anon2150_enum2664;
      yypstate : System.Address;
   end record with
      Convention => C_Pass_By_Copy;
   type idl_pstate_t is record
      keylists         : aliased Extensions.bool;
      annotations      : aliased Extensions.bool;
      flags            : aliased unsigned;
      paths            : access CycloneDDS.Low_Level.idl_symbol_h.idl_file_t;
      files            : access CycloneDDS.Low_Level.idl_symbol_h.idl_file_t;
      sources          : access CycloneDDS.Low_Level.idl_symbol_h.idl_source_t;
      global_scope     : access CycloneDDS.Low_Level.idl_scope_h.idl_scope_t;
      annotation_scope : access CycloneDDS.Low_Level.idl_scope_h.idl_scope_t;
      scope            : access CycloneDDS.Low_Level.idl_scope_h.idl_scope_t;
      directive        : System.Address;
      builtin_root     : access CycloneDDS.Low_Level.idl_tree_h.idl_node_t;
      root             : access CycloneDDS.Low_Level.idl_tree_h.idl_node_t;
      buffer           : aliased idl_buffer_t;
      scanner          : aliased anon2150_struct2661;
      parser           : aliased anon2150_struct2663;
   end record with
      Convention => C_Pass_By_Copy;

      --*< state of Bison generated parser
      --  <>type idl_builtin_annotation;
      --  <>subtype idl_builtin_annotation_t is idl_builtin_annotation;

      --*< precise syntax
   type idl_builtin_annotation_t is record
      syntax   : Interfaces.C.Strings.chars_ptr;
      summary  : Interfaces.C.Strings.chars_ptr;
      callback : CycloneDDS.Low_Level.idl_tree_h.idl_annotation_callback_t;
   end record with
      Convention => C_Pass_By_Copy;

      --*< brief yet significant description
   function idl_create_pstate
     (flags : unsigned; annotations : access constant idl_builtin_annotation_t;
      pstatep : System.Address)
      return CycloneDDS.Low_Level.idl_retcode_h.idl_retcode_t with
      Import        => True,
      Convention    => C,
      External_Name => "idl_create_pstate";

   procedure idl_delete_pstate (pstate : access idl_pstate_t) with
      Import        => True,
      Convention    => C,
      External_Name => "idl_delete_pstate";

   function idl_parse
     (pstate : access idl_pstate_t)
      return CycloneDDS.Low_Level.idl_retcode_h.idl_retcode_t with
      Import        => True,
      Convention    => C,
      External_Name => "idl_parse";

   function idl_parse_string
     (pstate : access idl_pstate_t; str : Interfaces.C.Strings.chars_ptr)
      return CycloneDDS.Low_Level.idl_retcode_h.idl_retcode_t with
      Import        => True,
      Convention    => C,
      External_Name => "idl_parse_string";

   procedure idl_verror
     (pstate : access idl_pstate_t;
      loc : access constant CycloneDDS.Low_Level.idl_symbol_h.idl_location_t;
      fmt    : Interfaces.C.Strings.chars_ptr; ap : access System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "idl_verror";

   procedure idl_error
     (pstate : access idl_pstate_t;
      loc : access constant CycloneDDS.Low_Level.idl_symbol_h.idl_location_t;
      fmt    : Interfaces.C.Strings
        .chars_ptr  -- , ...
   ) with
      Import        => True,
      Convention    => C,
      External_Name => "idl_error";

   procedure idl_warning
     (pstate : access idl_pstate_t;
      loc : access constant CycloneDDS.Low_Level.idl_symbol_h.idl_location_t;
      fmt    : Interfaces.C.Strings
        .chars_ptr  -- , ...
   ) with
      Import        => True,
      Convention    => C,
      External_Name => "idl_warning";

end CycloneDDS.Low_Level.idl_processor_h;
