pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with System;
with Interfaces.C.Strings;
limited with CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h;

package CycloneDDS.Low_Level.dds_ddsc_dds_public_alloc_h is

   DDS_FREE_KEY_BIT : constant := 16#01#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_alloc.h:35
   DDS_FREE_CONTENTS_BIT : constant := 16#02#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_alloc.h:36
   DDS_FREE_ALL_BIT : constant := 16#04#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_alloc.h:37

   subtype dds_free_op_t is unsigned;
   dds_free_op_t_DDS_FREE_ALL : constant dds_free_op_t := 7;
   dds_free_op_t_DDS_FREE_CONTENTS : constant dds_free_op_t := 3;
   dds_free_op_t_DDS_FREE_KEY : constant dds_free_op_t := 1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_alloc.h:45

   type dds_allocator is record
      malloc : access function (arg1 : size_t) return System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_alloc.h:51
      realloc : access function (arg1 : System.Address; arg2 : size_t) return System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_alloc.h:52
      free : access procedure (arg1 : System.Address);  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_alloc.h:53
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_alloc.h:47

   subtype dds_allocator_t is dds_allocator;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_alloc.h:55

   function dds_alloc (size : size_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_alloc.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "dds_alloc";

   function dds_realloc (ptr : System.Address; size : size_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_alloc.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "dds_realloc";

   function dds_realloc_zero (ptr : System.Address; size : size_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_alloc.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "dds_realloc_zero";

   procedure dds_free (ptr : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_alloc.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "dds_free";

   type dds_alloc_fn_t is access function (arg1 : size_t) return System.Address
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_alloc.h:62

   type dds_realloc_fn_t is access function (arg1 : System.Address; arg2 : size_t) return System.Address
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_alloc.h:63

   type dds_free_fn_t is access procedure (arg1 : System.Address)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_alloc.h:64

   function dds_string_alloc (size : size_t) return Interfaces.C.Strings.chars_ptr  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_alloc.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "dds_string_alloc";

   function dds_string_dup (str : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_alloc.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "dds_string_dup";

   procedure dds_string_free (str : Interfaces.C.Strings.chars_ptr)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_alloc.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "dds_string_free";

   procedure dds_sample_free
     (sample : System.Address;
      desc : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_topic_descriptor;
      op : dds_free_op_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_alloc.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "dds_sample_free";

end CycloneDDS.Low_Level.dds_ddsc_dds_public_alloc_h;
