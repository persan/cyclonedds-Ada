pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with CycloneDDS.Low_Level.dds_ddsrt_time_h;
with System;
limited with CycloneDDS.Low_Level.dds_ddsi_q_xevent_h;
with Interfaces.C.Extensions;

package CycloneDDS.Low_Level.dds_security_core_dds_security_timed_cb_h is

   subtype dds_security_time_event_handle_t is Interfaces.Unsigned_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_timed_cb.h:24

   type dds_security_timed_dispatcher is null record;   -- incomplete struct

   type dds_security_timed_cb_kind_t is 
     (DDS_SECURITY_TIMED_CB_KIND_TIMEOUT,
      DDS_SECURITY_TIMED_CB_KIND_DELETE)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_timed_cb.h:39

   type dds_security_timed_cb_t is access procedure
        (arg1 : dds_security_time_event_handle_t;
         arg2 : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t;
         arg3 : dds_security_timed_cb_kind_t;
         arg4 : System.Address)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_timed_cb.h:57

   function dds_security_timed_dispatcher_new (evq : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.xeventq) return access dds_security_timed_dispatcher  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_timed_cb.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_timed_dispatcher_new";

   procedure dds_security_timed_dispatcher_free (d : access dds_security_timed_dispatcher)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_timed_cb.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_timed_dispatcher_free";

   procedure dds_security_timed_dispatcher_enable (d : access dds_security_timed_dispatcher)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_timed_cb.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_timed_dispatcher_enable";

   function dds_security_timed_dispatcher_disable (d : access dds_security_timed_dispatcher) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_timed_cb.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_timed_dispatcher_disable";

   function dds_security_timed_dispatcher_add
     (d : access dds_security_timed_dispatcher;
      cb : dds_security_timed_cb_t;
      trigger_time : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t;
      arg : System.Address) return dds_security_time_event_handle_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_timed_cb.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_timed_dispatcher_add";

   procedure dds_security_timed_dispatcher_remove (d : access dds_security_timed_dispatcher; timer : dds_security_time_event_handle_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_timed_cb.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_timed_dispatcher_remove";

end CycloneDDS.Low_Level.dds_security_core_dds_security_timed_cb_h;
