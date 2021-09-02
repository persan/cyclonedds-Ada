pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Extensions;
with Interfaces.C.Strings;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_threadmon_h is

   type ddsi_threadmon is null record;   -- incomplete struct

   function ddsi_threadmon_new (liveliness_monitoring_interval : Interfaces.Integer_64; noprogress_log_stacktraces : Extensions.bool) return access ddsi_threadmon  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_threadmon.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_threadmon_new";

   function ddsi_threadmon_start (sl : access ddsi_threadmon; name : Interfaces.C.Strings.chars_ptr) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_threadmon.h:23
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_threadmon_start";

   procedure ddsi_threadmon_register_domain (sl : access ddsi_threadmon; gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_threadmon.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_threadmon_register_domain";

   procedure ddsi_threadmon_unregister_domain (sl : access ddsi_threadmon; gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_threadmon.h:25
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_threadmon_unregister_domain";

   procedure ddsi_threadmon_stop (sl : access ddsi_threadmon)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_threadmon.h:26
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_threadmon_stop";

   procedure ddsi_threadmon_free (sl : access ddsi_threadmon)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_threadmon.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_threadmon_free";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_threadmon_h;
