pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;

with Interfaces.C.Strings;



package CycloneDDS.Low_Level.dds_ddsrt_xmlparser_h is

   DDSRT_XMLP_REQUIRE_EOF : constant := 1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/xmlparser.h:40
   DDSRT_XMLP_ANONYMOUS_CLOSE_TAG : constant := 2;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/xmlparser.h:41
   DDSRT_XMLP_MISSING_CLOSE_AS_EOF : constant := 4;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/xmlparser.h:42

   type ddsrt_xmlp_proc_elem_open_t is access function
        (arg1 : System.Address;
         arg2 : access Interfaces.Unsigned_32;
         arg3 : access access Interfaces.Unsigned_32;
         arg4 : Interfaces.C.Strings.chars_ptr;
         arg5 : int) return int
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/xmlparser.h:24

   type ddsrt_xmlp_proc_attr_t is access function
        (arg1 : System.Address;
         arg2 : access Interfaces.Unsigned_32;
         arg3 : Interfaces.C.Strings.chars_ptr;
         arg4 : Interfaces.C.Strings.chars_ptr;
         arg5 : int) return int
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/xmlparser.h:25

   type ddsrt_xmlp_proc_elem_data_t is access function
        (arg1 : System.Address;
         arg2 : access Interfaces.Unsigned_32;
         arg3 : Interfaces.C.Strings.chars_ptr;
         arg4 : int) return int
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/xmlparser.h:26

   type ddsrt_xmlp_proc_elem_close_t is access function
        (arg1 : System.Address;
         arg2 : access Interfaces.Unsigned_32;
         arg3 : int) return int
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/xmlparser.h:27

   type ddsrt_xmlp_error is access procedure
        (arg1 : System.Address;
         arg2 : Interfaces.C.Strings.chars_ptr;
         arg3 : int)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/xmlparser.h:28

   type ddsrt_xmlp_callbacks is record
      elem_open : ddsrt_xmlp_proc_elem_open_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/xmlparser.h:31
      attr : ddsrt_xmlp_proc_attr_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/xmlparser.h:32
      elem_data : ddsrt_xmlp_proc_elem_data_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/xmlparser.h:33
      elem_close : ddsrt_xmlp_proc_elem_close_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/xmlparser.h:34
      error : ddsrt_xmlp_error;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/xmlparser.h:35
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/xmlparser.h:30

   type ddsrt_xmlp_state is null record;   -- incomplete struct

   function ddsrt_xmlp_new_file
     (fp : access CycloneDDS.Low_Level.x86_64_linux_gnu_bits_types_struct_FILE_h.u_IO_FILE;
      varg : System.Address;
      cb : access constant ddsrt_xmlp_callbacks) return access ddsrt_xmlp_state  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/xmlparser.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_xmlp_new_file";

   function ddsrt_xmlp_new_string
     (string : Interfaces.C.Strings.chars_ptr;
      varg : System.Address;
      cb : access constant ddsrt_xmlp_callbacks) return access ddsrt_xmlp_state  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/xmlparser.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_xmlp_new_string";

   procedure ddsrt_xmlp_set_options (st : access ddsrt_xmlp_state; options : unsigned)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/xmlparser.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_xmlp_set_options";

   function ddsrt_xmlp_get_bufpos (st : access constant ddsrt_xmlp_state) return size_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/xmlparser.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_xmlp_get_bufpos";

   procedure ddsrt_xmlp_free (st : access ddsrt_xmlp_state)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/xmlparser.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_xmlp_free";

   function ddsrt_xmlp_parse (st : access ddsrt_xmlp_state) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/xmlparser.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_xmlp_parse";

end CycloneDDS.Low_Level.dds_ddsrt_xmlparser_h;
