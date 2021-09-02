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

   IDL_FLAG_KEYLIST : constant := (2**0);  --  /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:30

   IDL_FLAG_CASE_SENSITIVE : constant := (2**1);  --  /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:34

   IDL_FLAG_EXTENDED_DATA_TYPES : constant := (2**2);  --  /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:36

   IDL_FLAG_ANONYMOUS_TYPES : constant := (2**3);  --  /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:38

   IDL_FLAG_ANNOTATIONS : constant := (2**4);  --  /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:40

   IDL_WRITE : constant := (2**31);  --  /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:42

   type idl_buffer;
   subtype idl_buffer_t is idl_buffer;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:44

   type idl_buffer is record
      data : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:46
      size : aliased size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:47
      used : aliased size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:48
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:45

   type idl_pstate;
   subtype idl_pstate_t is idl_pstate;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:51

   subtype anon_enum15036 is unsigned;
   anon_enum15036_IDL_SCAN : constant anon_enum15036 := 0;
   anon_enum15036_IDL_SCAN_DIRECTIVE : constant anon_enum15036 := 128;
   anon_enum15036_IDL_SCAN_DIRECTIVE_NAME : constant anon_enum15036 := 129;
   anon_enum15036_IDL_SCAN_LINE : constant anon_enum15036 := 192;
   anon_enum15036_IDL_SCAN_PATH : constant anon_enum15036 := 193;
   anon_enum15036_IDL_SCAN_FLAGS : constant anon_enum15036 := 194;
   anon_enum15036_IDL_SCAN_FILE : constant anon_enum15036 := 195;
   anon_enum15036_IDL_SCAN_EXTRA_TOKENS : constant anon_enum15036 := 196;
   anon_enum15036_IDL_SCAN_PRAGMA : constant anon_enum15036 := 160;
   anon_enum15036_IDL_SCAN_UNKNOWN_PRAGMA : constant anon_enum15036 := 161;
   anon_enum15036_IDL_SCAN_KEYLIST : constant anon_enum15036 := 176;
   anon_enum15036_IDL_SCAN_DATA_TYPE : constant anon_enum15036 := 177;
   anon_enum15036_IDL_SCAN_NAME : constant anon_enum15036 := 178;
   anon_enum15036_IDL_SCAN_SCOPE : constant anon_enum15036 := 179;
   anon_enum15036_IDL_SCAN_KEY : constant anon_enum15036 := 180;
   anon_enum15036_IDL_SCAN_FIELD : constant anon_enum15036 := 181;
   anon_enum15036_IDL_SCAN_ACCESS : constant anon_enum15036 := 182;
   anon_enum15036_IDL_SCAN_GRAMMAR : constant anon_enum15036 := 256;
   anon_enum15036_IDL_SCAN_ANNOTATION : constant anon_enum15036 := 257;
   anon_enum15036_IDL_SCAN_ANNOTATION_NAME : constant anon_enum15036 := 258;
   anon_enum15036_IDL_SCAN_ANNOTATION_APPL : constant anon_enum15036 := 259;
   anon_enum15036_IDL_SCAN_ANNOTATION_APPL_SCOPE : constant anon_enum15036 := 260;
   anon_enum15036_IDL_SCAN_ANNOTATION_APPL_SCOPED_NAME : constant anon_enum15036 := 261;
   anon_enum15036_IDL_SCAN_ANNOTATION_APPL_NAME : constant anon_enum15036 := 262;
   anon_enum15036_IDL_EOF : constant anon_enum15036 := 512;
   type anon_struct15035 is record
      state : anon_enum15036;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:103
      cursor : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:104
      limit : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:105
      position : aliased CycloneDDS.Low_Level.idl_symbol_h.idl_position_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:106
   end record
   with Convention => C_Pass_By_Copy;
   type anon_enum15038 is 
     (IDL_PARSE,
      IDL_PARSE_ANNOTATION,
      IDL_PARSE_ANNOTATION_BODY,
      IDL_PARSE_EXISTING_ANNOTATION_BODY,
      IDL_PARSE_ANNOTATION_APPL,
      IDL_PARSE_ANNOTATION_APPL_PARAMS,
      IDL_PARSE_UNKNOWN_ANNOTATION_APPL_PARAMS)
   with Convention => C;
   type anon_struct15037 is record
      state : anon_enum15038;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:117
      yypstate : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:118
   end record
   with Convention => C_Pass_By_Copy;
   type idl_pstate is record
      keylists : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:53
      annotations : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:54
      flags : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:55
      paths : access CycloneDDS.Low_Level.idl_symbol_h.idl_file;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:56
      files : access CycloneDDS.Low_Level.idl_symbol_h.idl_file;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:57
      sources : access CycloneDDS.Low_Level.idl_symbol_h.idl_source;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:58
      global_scope : access CycloneDDS.Low_Level.idl_scope_h.idl_scope;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:59
      annotation_scope : access CycloneDDS.Low_Level.idl_scope_h.idl_scope;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:59
      scope : access CycloneDDS.Low_Level.idl_scope_h.idl_scope;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:59
      directive : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:60
      builtin_root : access CycloneDDS.Low_Level.idl_tree_h.idl_node;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:61
      root : access CycloneDDS.Low_Level.idl_tree_h.idl_node;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:61
      buffer : aliased idl_buffer_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:62
      scanner : aliased anon_struct15035;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:107
      parser : aliased anon_struct15037;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:119
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:52

   type idl_builtin_annotation;
   subtype idl_builtin_annotation_t is idl_builtin_annotation;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:122

   type idl_builtin_annotation is record
      syntax : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:124
      summary : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:125
      callback : CycloneDDS.Low_Level.idl_tree_h.idl_annotation_callback_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:126
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:123

   function idl_create_pstate
     (flags : Interfaces.Unsigned_32;
      annotations : access constant idl_builtin_annotation_t;
      pstatep : System.Address) return CycloneDDS.Low_Level.idl_retcode_h.idl_retcode_t  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "idl_create_pstate";

   procedure idl_delete_pstate (pstate : access idl_pstate_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "idl_delete_pstate";

   function idl_parse (pstate : access idl_pstate_t) return CycloneDDS.Low_Level.idl_retcode_h.idl_retcode_t  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "idl_parse";

   function idl_parse_string (pstate : access idl_pstate_t; str : Interfaces.C.Strings.chars_ptr) return CycloneDDS.Low_Level.idl_retcode_h.idl_retcode_t  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "idl_parse_string";

   procedure idl_verror
     (pstate : access idl_pstate_t;
      loc : access constant CycloneDDS.Low_Level.idl_symbol_h.idl_location;
      fmt : Interfaces.C.Strings.chars_ptr;
      ap : access System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "idl_verror";

   procedure idl_error
     (pstate : access idl_pstate_t;
      loc : access constant CycloneDDS.Low_Level.idl_symbol_h.idl_location;
      fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "idl_error";

   procedure idl_warning
     (pstate : access idl_pstate_t;
      loc : access constant CycloneDDS.Low_Level.idl_symbol_h.idl_location;
      fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/processor.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "idl_warning";

end CycloneDDS.Low_Level.idl_processor_h;
