pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Strings;


package CycloneDDS.Low_Level.dds_ddsrt_time_h is

   --  unsupported macro: DDS_NSECS_IN_SEC INT64_C(1000000000)
   --  unsupported macro: DDS_NSECS_IN_MSEC INT64_C(1000000)
   --  unsupported macro: DDS_NSECS_IN_USEC INT64_C(1000)
   --  unsupported macro: DDS_NEVER ((dds_time_t) INT64_MAX)
   --  unsupported macro: DDS_INFINITY ((dds_duration_t) INT64_MAX)
   --  unsupported macro: DDS_TIME_INVALID ((dds_time_t) INT64_MIN)
   --  unsupported macro: DDS_DURATION_INVALID ((dds_duration_t) INT64_MIN)
   --  arg-macro: function DDS_SECS (n)
   --    return (n) * DDS_NSECS_IN_SEC;
   --  arg-macro: function DDS_MSECS (n)
   --    return (n) * DDS_NSECS_IN_MSEC;
   --  arg-macro: function DDS_USECS (n)
   --    return (n) * DDS_NSECS_IN_USEC;
   --  unsupported macro: DDSRT_MTIME_NEVER ((ddsrt_mtime_t) { DDS_NEVER })
   --  unsupported macro: DDSRT_WCTIME_NEVER ((ddsrt_wctime_t) { DDS_NEVER })
   --  unsupported macro: DDSRT_ETIME_NEVER ((ddsrt_etime_t) { DDS_NEVER })
   --  unsupported macro: DDSRT_WCTIME_INVALID ((ddsrt_wctime_t) { INT64_MIN })
   DDSRT_RFC3339STRLEN : constant := (25);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/time.h:163

   subtype dds_time_t is Interfaces.Integer_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/time.h:45

   subtype dds_duration_t is Interfaces.Integer_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/time.h:48

   type ddsrt_mtime_t is record
      v : aliased dds_time_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/time.h:77
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/time.h:78

   type ddsrt_wctime_t is record
      v : aliased dds_time_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/time.h:81
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/time.h:82

   type ddsrt_etime_t is record
      v : aliased dds_time_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/time.h:85
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/time.h:86

   function dds_time return dds_time_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/time.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "dds_time";

   procedure dds_sleepfor (reltime : dds_duration_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/time.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "dds_sleepfor";

   function ddsrt_time_wallclock return ddsrt_wctime_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/time.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_time_wallclock";

   function ddsrt_time_monotonic return ddsrt_mtime_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/time.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_time_monotonic";

   function ddsrt_time_elapsed return ddsrt_etime_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/time.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_time_elapsed";

   function ddsrt_ctime
     (abstime : dds_time_t;
      str : Interfaces.C.Strings.chars_ptr;
      size : size_t) return size_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/time.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_ctime";

   function ddsrt_time_add_duration (abstime : dds_time_t; reltime : dds_duration_t) return dds_time_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/time.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_time_add_duration";

   function ddsrt_mtime_add_duration (abstime : ddsrt_mtime_t; reltime : dds_duration_t) return ddsrt_mtime_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/time.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_mtime_add_duration";

   function ddsrt_wctime_add_duration (abstime : ddsrt_wctime_t; reltime : dds_duration_t) return ddsrt_wctime_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/time.h:216
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_wctime_add_duration";

   function ddsrt_etime_add_duration (abstime : ddsrt_etime_t; reltime : dds_duration_t) return ddsrt_etime_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/time.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_etime_add_duration";

   procedure ddsrt_mtime_to_sec_usec
     (sec : access Interfaces.Integer_32;
      usec : access Interfaces.Integer_32;
      t : ddsrt_mtime_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/time.h:278
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_mtime_to_sec_usec";

   procedure ddsrt_wctime_to_sec_usec
     (sec : access Interfaces.Integer_32;
      usec : access Interfaces.Integer_32;
      t : ddsrt_wctime_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/time.h:287
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_wctime_to_sec_usec";

   procedure ddsrt_etime_to_sec_usec
     (sec : access Interfaces.Integer_32;
      usec : access Interfaces.Integer_32;
      t : ddsrt_etime_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/time.h:296
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_etime_to_sec_usec";

end CycloneDDS.Low_Level.dds_ddsrt_time_h;
