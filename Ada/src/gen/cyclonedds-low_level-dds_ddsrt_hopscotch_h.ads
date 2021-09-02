pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;

limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;


package CycloneDDS.Low_Level.dds_ddsrt_hopscotch_h is

   type ddsrt_hh_hash_fn is access function (arg1 : System.Address) return Interfaces.Unsigned_32
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:33

   type ddsrt_hh_equals_fn is access function (arg1 : System.Address; arg2 : System.Address) return int
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:39

   type ddsrt_hh_buckets_gc_fn is access procedure (arg1 : System.Address; arg2 : System.Address)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:46

   type ddsrt_hh_iter is record
      hh : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsrt_hh;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:52
      cursor : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:53
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:51

   function ddsrt_hh_new
     (init_size : Interfaces.Unsigned_32;
      hash : ddsrt_hh_hash_fn;
      equals : ddsrt_hh_equals_fn) return access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsrt_hh  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_hh_new";

   procedure ddsrt_hh_free (hh : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsrt_hh)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_hh_free";

   function ddsrt_hh_lookup (rt : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsrt_hh; template : System.Address) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_hh_lookup";

   function ddsrt_hh_add (rt : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsrt_hh; data : System.Address) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_hh_add";

   function ddsrt_hh_remove (rt : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsrt_hh; template : System.Address) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_hh_remove";

   procedure ddsrt_hh_enum
     (rt : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsrt_hh;
      f : access procedure (arg1 : System.Address; arg2 : System.Address);
      f_arg : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_hh_enum";

   function ddsrt_hh_iter_first (rt : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsrt_hh; iter : access ddsrt_hh_iter) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_hh_iter_first";

   function ddsrt_hh_iter_next (iter : access ddsrt_hh_iter) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_hh_iter_next";

   type ddsrt_chh is null record;   -- incomplete struct

   type ddsrt_chh_bucket is null record;   -- incomplete struct

   type ddsrt_chh_iter is record
      bs : access ddsrt_chh_bucket;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:71
      size : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:72
      cursor : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:73
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:70

   function ddsrt_chh_new
     (init_size : Interfaces.Unsigned_32;
      hash : ddsrt_hh_hash_fn;
      equals : ddsrt_hh_equals_fn;
      gc_buckets : ddsrt_hh_buckets_gc_fn;
      gc_buckets_arg : System.Address) return access ddsrt_chh  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_chh_new";

   procedure ddsrt_chh_free (hh : access ddsrt_chh)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_chh_free";

   function ddsrt_chh_lookup (rt : access ddsrt_chh; template : System.Address) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_chh_lookup";

   function ddsrt_chh_add (rt : access ddsrt_chh; data : System.Address) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_chh_add";

   function ddsrt_chh_remove (rt : access ddsrt_chh; template : System.Address) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_chh_remove";

   procedure ddsrt_chh_enum_unsafe
     (rt : access ddsrt_chh;
      f : access procedure (arg1 : System.Address; arg2 : System.Address);
      f_arg : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_chh_enum_unsafe";

   function ddsrt_chh_iter_first (rt : access ddsrt_chh; it : access ddsrt_chh_iter) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_chh_iter_first";

   function ddsrt_chh_iter_next (it : access ddsrt_chh_iter) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_chh_iter_next";

   type ddsrt_ehh is null record;   -- incomplete struct

   type ddsrt_ehh_iter is record
      hh : access ddsrt_ehh;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:94
      cursor : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:95
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:93

   function ddsrt_ehh_new
     (elemsz : size_t;
      init_size : Interfaces.Unsigned_32;
      hash : ddsrt_hh_hash_fn;
      equals : ddsrt_hh_equals_fn) return access ddsrt_ehh  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_ehh_new";

   procedure ddsrt_ehh_free (hh : access ddsrt_ehh)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_ehh_free";

   function ddsrt_ehh_lookup (rt : access constant ddsrt_ehh; template : System.Address) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_ehh_lookup";

   function ddsrt_ehh_add (rt : access ddsrt_ehh; data : System.Address) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_ehh_add";

   function ddsrt_ehh_remove (rt : access ddsrt_ehh; template : System.Address) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_ehh_remove";

   procedure ddsrt_ehh_enum
     (rt : access ddsrt_ehh;
      f : access procedure (arg1 : System.Address; arg2 : System.Address);
      f_arg : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_ehh_enum";

   function ddsrt_ehh_iter_first (rt : access ddsrt_ehh; iter : access ddsrt_ehh_iter) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_ehh_iter_first";

   function ddsrt_ehh_iter_next (iter : access ddsrt_ehh_iter) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/hopscotch.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_ehh_iter_next";

end CycloneDDS.Low_Level.dds_ddsrt_hopscotch_h;
