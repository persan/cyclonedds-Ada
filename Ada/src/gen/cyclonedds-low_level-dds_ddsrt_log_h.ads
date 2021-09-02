pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Strings;

with System;


package CycloneDDS.Low_Level.dds_ddsrt_log_h is

   DDS_LC_FATAL : constant := (1);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:45

   DDS_LC_ERROR : constant := (2);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:47

   DDS_LC_WARNING : constant := (4);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:49

   DDS_LC_INFO : constant := (8);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:51

   DDS_LC_CONFIG : constant := (16);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:53

   DDS_LC_DISCOVERY : constant := (32);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:55

   DDS_LC_DATA : constant := (64);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:57

   DDS_LC_TRACE : constant := (128);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:59

   DDS_LC_RADMIN : constant := (256);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:61

   DDS_LC_TIMING : constant := (512);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:63

   DDS_LC_TRAFFIC : constant := (1024);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:65

   DDS_LC_TOPIC : constant := (2048);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:67

   DDS_LC_TCP : constant := (4096);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:69

   DDS_LC_PLIST : constant := (8192);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:71

   DDS_LC_WHC : constant := (16384);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:73

   DDS_LC_THROTTLE : constant := (32768);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:75

   DDS_LC_RHC : constant := (65536);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:77

   DDS_LC_CONTENT : constant := (131072);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:79

   DDS_LC_SHM : constant := (262144);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:81
   --  unsupported macro: DDS_LC_ALL (DDS_LC_FATAL | DDS_LC_ERROR | DDS_LC_WARNING | DDS_LC_INFO | DDS_LC_CONFIG | DDS_LC_DISCOVERY | DDS_LC_DATA | DDS_LC_TRACE | DDS_LC_TIMING | DDS_LC_TRAFFIC | DDS_LC_TCP | DDS_LC_THROTTLE | DDS_LC_CONTENT | DDS_LC_SHM)
   --  unsupported macro: DDS_LOG_MASK (DDS_LC_FATAL | DDS_LC_ERROR | DDS_LC_WARNING | DDS_LC_INFO)
   --  unsupported macro: DDS_TRACE_MASK (~DDS_LOG_MASK)
   --  unsupported macro: DDS_FUNCTION __func__
   --  unsupported macro: DDS_PRETTY_FUNCTION __PRETTY_FUNCTION__
   --  unsupported macro: DDS_LOG(cat,...) ((dds_get_log_mask() & (cat)) ? dds_log((cat), __FILE__, __LINE__, DDS_FUNCTION, __VA_ARGS__) : 0)
   --  unsupported macro: DDS_ILOG(cat,domid,...) ((dds_get_log_mask() & (cat)) ? dds_log_id((cat), (domid), __FILE__, __LINE__, DDS_FUNCTION, __VA_ARGS__) : 0)
   --  unsupported macro: DDS_CLOG(cat,cfg,...) (((cfg)->c.mask & (cat)) ? dds_log_cfg((cfg), (cat), __FILE__, __LINE__, DDS_FUNCTION, __VA_ARGS__) : 0)
   --  unsupported macro: DDS_INFO(...) DDS_LOG(DDS_LC_INFO, __VA_ARGS__)
   --  unsupported macro: DDS_WARNING(...) DDS_LOG(DDS_LC_WARNING, __VA_ARGS__)
   --  unsupported macro: DDS_ERROR(...) DDS_LOG(DDS_LC_ERROR, __VA_ARGS__)
   --  unsupported macro: DDS_FATAL(...) dds_log(DDS_LC_FATAL, __FILE__, __LINE__, DDS_FUNCTION, __VA_ARGS__)
   --  arg-macro: procedure DDS_CLOG_MSVC_WORKAROUND (x)
   --    x
   --  unsupported macro: DDS_CINFO(...) DDS_CLOG_MSVC_WORKAROUND(DDS_CLOG(DDS_LC_INFO, __VA_ARGS__))
   --  unsupported macro: DDS_CWARNING(...) DDS_CLOG_MSVC_WORKAROUND(DDS_CLOG(DDS_LC_WARNING, __VA_ARGS__))
   --  unsupported macro: DDS_CERROR(...) DDS_CLOG_MSVC_WORKAROUND(DDS_CLOG(DDS_LC_ERROR, __VA_ARGS__))
   --  unsupported macro: DDS_CTRACE(...) DDS_CLOG_MSVC_WORKAROUND(DDS_CLOG(DDS_LC_TRACE, __VA_ARGS__))

   type dds_log_data_t is record
      priority : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:99
      domid : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:101
      file : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:103
      line : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:105
      c_function : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:107
      message : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:109
      size : aliased size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:111
      hdrsize : aliased size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:113
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:114

   type dds_log_write_fn_t is access procedure (arg1 : System.Address; arg2 : access constant dds_log_data_t)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:117

   type ddsrt_log_cfg_common is record
      mask : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:126
      tracemask : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:129
      domid : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:132
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:120

   type anon_array1263 is array (0 .. 71) of aliased unsigned_char;
   type anon_union1261 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            fnptr : dds_log_write_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:138
         when 1 =>
            ptr : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:139
         when 2 =>
            u32 : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:140
         when others =>
            pad : aliased anon_array1263;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:141
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type ddsrt_log_cfg is record
      c : aliased ddsrt_log_cfg_common;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:136
      u : aliased anon_union1261;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:142
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:135

   subtype ddsrt_log_cfg_t is ddsrt_log_cfg;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:143

   dds_log_mask : constant access Interfaces.Unsigned_32  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "dds_log_mask";

   function dds_get_log_mask return Interfaces.Unsigned_32  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_log_mask";

   procedure dds_set_log_mask (cats : Interfaces.Unsigned_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "dds_set_log_mask";

   procedure dds_set_log_file (the_file : access CycloneDDS.Low_Level.x86_64_linux_gnu_bits_types_struct_FILE_h.u_IO_FILE)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "dds_set_log_file";

   procedure dds_set_trace_file (the_file : access CycloneDDS.Low_Level.x86_64_linux_gnu_bits_types_struct_FILE_h.u_IO_FILE)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:178
   with Import => True, 
        Convention => C, 
        External_Name => "dds_set_trace_file";

   procedure dds_set_log_sink (callback : dds_log_write_fn_t; userdata : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "dds_set_log_sink";

   procedure dds_set_trace_sink (callback : dds_log_write_fn_t; userdata : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "dds_set_trace_sink";

   procedure dds_log_cfg_init
     (cfg : access ddsrt_log_cfg;
      domid : Interfaces.Unsigned_32;
      tracemask : Interfaces.Unsigned_32;
      log_fp : access CycloneDDS.Low_Level.x86_64_linux_gnu_bits_types_struct_FILE_h.u_IO_FILE;
      trace_fp : access CycloneDDS.Low_Level.x86_64_linux_gnu_bits_types_struct_FILE_h.u_IO_FILE)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:248
   with Import => True, 
        Convention => C, 
        External_Name => "dds_log_cfg_init";

   procedure dds_log_cfg
     (cfg : access constant ddsrt_log_cfg;
      prio : Interfaces.Unsigned_32;
      file : Interfaces.C.Strings.chars_ptr;
      line : Interfaces.Unsigned_32;
      func : Interfaces.C.Strings.chars_ptr;
      fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "dds_log_cfg";

   procedure dds_log_id
     (prio : Interfaces.Unsigned_32;
      domid : Interfaces.Unsigned_32;
      file : Interfaces.C.Strings.chars_ptr;
      line : Interfaces.Unsigned_32;
      func : Interfaces.C.Strings.chars_ptr;
      fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:283
   with Import => True, 
        Convention => C, 
        External_Name => "dds_log_id";

   procedure dds_log
     (prio : Interfaces.Unsigned_32;
      file : Interfaces.C.Strings.chars_ptr;
      line : Interfaces.Unsigned_32;
      func : Interfaces.C.Strings.chars_ptr;
      fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/log.h:302
   with Import => True, 
        Convention => C, 
        External_Name => "dds_log";

end CycloneDDS.Low_Level.dds_ddsrt_log_h;
