pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

with CycloneDDS.Low_Level.Idl_Symbol_H;
with System;
with Interfaces.C.Extensions;

limited with CycloneDDS.Low_Level.Idl_Scope_H;
with CycloneDDS.Low_Level.Idl_Tree_H;
with CycloneDDS.Low_Level.Idl_Retcode_H;

package CycloneDDS.Idl.Processor is

   IDL_FLAG_KEYLIST : constant :=
                        (2 ** 0);  --  /usr/gnat/include/idl/processor.h:30

   IDL_FLAG_CASE_SENSITIVE : constant :=
                               (2 ** 1);  --  /usr/gnat/include/idl/processor.h:34

   IDL_FLAG_EXTENDED_DATA_TYPES : constant :=
                                    (2 ** 2);  --  /usr/gnat/include/idl/processor.h:36

   IDL_FLAG_ANONYMOUS_TYPES : constant :=
                                (2 ** 3);  --  /usr/gnat/include/idl/processor.h:38

   IDL_FLAG_ANNOTATIONS : constant :=
                            (2 ** 4);  --  /usr/gnat/include/idl/processor.h:40

   IDL_WRITE        : constant := (2 ** 31);  --  /usr/gnat/include/idl/processor.h:42

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

   type Idl_Buffer_T is record
      Data : Interfaces.C.Strings.Chars_Ptr;
      Size : aliased Unsigned_Long;
      Used : aliased Unsigned_Long;
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
   subtype Anon2150_Enum2662 is Unsigned;
   IDL_SCAN                             : constant Anon2150_Enum2662 := 0;
   IDL_SCAN_DIRECTIVE                   : constant Anon2150_Enum2662 := 128;
   IDL_SCAN_DIRECTIVE_NAME              : constant Anon2150_Enum2662 := 129;
   IDL_SCAN_LINE                        : constant Anon2150_Enum2662 := 192;
   IDL_SCAN_PATH                        : constant Anon2150_Enum2662 := 193;
   IDL_SCAN_FLAGS                       : constant Anon2150_Enum2662 := 194;
   IDL_SCAN_FILE                        : constant Anon2150_Enum2662 := 195;
   IDL_SCAN_EXTRA_TOKENS                : constant Anon2150_Enum2662 := 196;
   IDL_SCAN_PRAGMA                      : constant Anon2150_Enum2662 := 160;
   IDL_SCAN_UNKNOWN_PRAGMA              : constant Anon2150_Enum2662 := 161;
   IDL_SCAN_KEYLIST                     : constant Anon2150_Enum2662 := 176;
   IDL_SCAN_DATA_TYPE                   : constant Anon2150_Enum2662 := 177;
   IDL_SCAN_NAME                        : constant Anon2150_Enum2662 := 178;
   IDL_SCAN_SCOPE                       : constant Anon2150_Enum2662 := 179;
   IDL_SCAN_KEY                         : constant Anon2150_Enum2662 := 180;
   IDL_SCAN_FIELD                       : constant Anon2150_Enum2662 := 181;
   IDL_SCAN_ACCESS                      : constant Anon2150_Enum2662 := 182;
   IDL_SCAN_GRAMMAR                     : constant Anon2150_Enum2662 := 256;
   IDL_SCAN_ANNOTATION                  : constant Anon2150_Enum2662 := 257;
   IDL_SCAN_ANNOTATION_NAME             : constant Anon2150_Enum2662 := 258;
   IDL_SCAN_ANNOTATION_APPL             : constant Anon2150_Enum2662 := 259;
   IDL_SCAN_ANNOTATION_APPL_SCOPE       : constant Anon2150_Enum2662 := 260;
   IDL_SCAN_ANNOTATION_APPL_SCOPED_NAME : constant Anon2150_Enum2662 := 261;
   IDL_SCAN_ANNOTATION_APPL_NAME        : constant Anon2150_Enum2662 := 262;
   IDL_EOF                              : constant Anon2150_Enum2662 := 512;
   type Anon2150_Struct2661 is record
      State    : Anon2150_Enum2662;
      Cursor   : Interfaces.C.Strings.Chars_Ptr;
      Limit    : Interfaces.C.Strings.Chars_Ptr;
      Position : aliased CycloneDDS.Low_Level.Idl_Symbol_H.Idl_Position_T;
   end record with
     Convention => C_Pass_By_Copy;
   type Anon2150_Enum2664 is
     (IDL_PARSE, IDL_PARSE_ANNOTATION, IDL_PARSE_ANNOTATION_BODY,
      IDL_PARSE_EXISTING_ANNOTATION_BODY, IDL_PARSE_ANNOTATION_APPL,
      IDL_PARSE_ANNOTATION_APPL_PARAMS,
      IDL_PARSE_UNKNOWN_ANNOTATION_APPL_PARAMS) with
     Convention => C;
   type Anon2150_Struct2663 is record
      State    : Anon2150_Enum2664;
      Yypstate : System.Address;
   end record with
     Convention => C_Pass_By_Copy;
   type Idl_Pstate_T is record
      Keylists         : aliased Extensions.Bool;
      Annotations      : aliased Extensions.Bool;
      Flags            : aliased Unsigned;
      Paths            : access CycloneDDS.Low_Level.Idl_Symbol_H.Idl_File_T;
      Files            : access CycloneDDS.Low_Level.Idl_Symbol_H.Idl_File_T;
      Sources          : access CycloneDDS.Low_Level.Idl_Symbol_H.Idl_Source_T;
      Global_Scope     : access CycloneDDS.Low_Level.Idl_Scope_H.Idl_Scope_T;
      Annotation_Scope : access CycloneDDS.Low_Level.Idl_Scope_H.Idl_Scope_T;
      Scope            : access CycloneDDS.Low_Level.Idl_Scope_H.Idl_Scope_T;
      Directive        : System.Address;
      Builtin_Root     : access CycloneDDS.Low_Level.Idl_Tree_H.Idl_Node_T;
      Root             : access CycloneDDS.Low_Level.Idl_Tree_H.Idl_Node_T;
      Buffer           : aliased Idl_Buffer_T;
      Scanner          : aliased Anon2150_Struct2661;
      Parser           : aliased Anon2150_Struct2663;
   end record with
     Convention => C_Pass_By_Copy;

   --*< state of Bison generated parser
   --  <>type idl_builtin_annotation;
   --  <>subtype idl_builtin_annotation_t is idl_builtin_annotation;

   --*< precise syntax
   type Idl_Builtin_Annotation_T is record
      Syntax   : Interfaces.C.Strings.Chars_Ptr;
      Summary  : Interfaces.C.Strings.Chars_Ptr;
      Callback : CycloneDDS.Low_Level.Idl_Tree_H.Idl_Annotation_Callback_T;
   end record with
     Convention => C_Pass_By_Copy;

   --*< brief yet significant description
   function Create_Pstate
     (Flags       : Unsigned;
      Annotations : access constant Idl_Builtin_Annotation_T;
      Pstatep     : System.Address)
      return CycloneDDS.Low_Level.Idl_Retcode_H.Idl_Retcode_T with
     Import        => True,
     Convention    => C,
     External_Name => "idl_create_pstate";

   procedure Delete_Pstate (Pstate : access Idl_Pstate_T) with
     Import        => True,
     Convention    => C,
     External_Name => "idl_delete_pstate";

   function Parse
     (Pstate : access Idl_Pstate_T)
      return CycloneDDS.Low_Level.Idl_Retcode_H.Idl_Retcode_T with
     Import        => True,
     Convention    => C,
     External_Name => "idl_parse";

   function Parse_String
     (Pstate : access Idl_Pstate_T; Str : Interfaces.C.Strings.Chars_Ptr)
      return CycloneDDS.Low_Level.Idl_Retcode_H.Idl_Retcode_T with
     Import        => True,
     Convention    => C,
     External_Name => "idl_parse_string";

   procedure Verror
     (Pstate : access Idl_Pstate_T;
      Loc    : access constant CycloneDDS.Low_Level.Idl_Symbol_H.Idl_Location_T;
      Fmt    : Interfaces.C.Strings.Chars_Ptr; Ap : access System.Address) with
     Import        => True,
     Convention    => C,
     External_Name => "idl_verror";

   procedure Error
     (Pstate : access Idl_Pstate_T;
      Loc    : access constant CycloneDDS.Low_Level.Idl_Symbol_H.Idl_Location_T;
      Fmt    : Interfaces.C.Strings
      .Chars_Ptr  -- , ...
     ) with
       Import        => True,
       Convention    => C,
       External_Name => "idl_error";

   procedure Warning
     (Pstate : access Idl_Pstate_T;
      Loc    : access constant CycloneDDS.Low_Level.Idl_Symbol_H.Idl_Location_T;
      Fmt    : Interfaces.C.Strings
      .Chars_Ptr  -- , ...
     ) with
       Import        => True,
       Convention    => C,
       External_Name => "idl_warning";

end CycloneDDS.Idl.Processor;
