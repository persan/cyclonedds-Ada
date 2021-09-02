pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;


with Interfaces.C.Strings;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;
with System;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;

package CycloneDDS.Low_Level.dds_ddsi_q_xevent_h is

   type xevent is null record;   -- incomplete struct

   type xeventq is null record;   -- incomplete struct

   type nn_xmsg is null record;   -- incomplete struct

   function xeventq_new
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      max_queued_rexmit_bytes : size_t;
      max_queued_rexmit_msgs : size_t;
      auxiliary_bandwidth_limit : Interfaces.Unsigned_32) return access xeventq  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_xevent.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "xeventq_new";

   procedure xeventq_free (evq : access xeventq)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_xevent.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "xeventq_free";

   function xeventq_start (evq : access xeventq; name : Interfaces.C.Strings.chars_ptr) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_xevent.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "xeventq_start";

   procedure xeventq_stop (evq : access xeventq)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_xevent.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "xeventq_stop";

   procedure qxev_msg (evq : access xeventq; msg : access nn_xmsg)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_xevent.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "qxev_msg";

   procedure qxev_pwr_entityid (pwr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_writer; guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_xevent.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "qxev_pwr_entityid";

   procedure qxev_prd_entityid (prd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader; guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_xevent.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "qxev_prd_entityid";

   procedure qxev_nt_callback
     (evq : access xeventq;
      cb : access procedure (arg1 : System.Address);
      arg : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_xevent.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "qxev_nt_callback";

   function qxev_msg_rexmit_wrlock_held
     (evq : access xeventq;
      msg : access nn_xmsg;
      force : int) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_xevent.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "qxev_msg_rexmit_wrlock_held";

   procedure delete_xevent (ev : access xevent)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_xevent.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "delete_xevent";

   procedure delete_xevent_callback (ev : access xevent)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_xevent.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "delete_xevent_callback";

   function resched_xevent_if_earlier (ev : access xevent; tsched : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_xevent.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "resched_xevent_if_earlier";

   function qxev_heartbeat
     (evq : access xeventq;
      tsched : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      wr_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return access xevent  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_xevent.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "qxev_heartbeat";

   function qxev_acknack
     (evq : access xeventq;
      tsched : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      pwr_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      rd_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return access xevent  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_xevent.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "qxev_acknack";

   function qxev_spdp
     (evq : access xeventq;
      tsched : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      pp_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      proxypp_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return access xevent  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_xevent.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "qxev_spdp";

   function qxev_pmd_update
     (evq : access xeventq;
      tsched : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      pp_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return access xevent  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_xevent.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "qxev_pmd_update";

   function qxev_delete_writer
     (evq : access xeventq;
      tsched : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return access xevent  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_xevent.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "qxev_delete_writer";

   function qxev_callback
     (evq : access xeventq;
      tsched : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      cb : access procedure
        (arg1 : access xevent;
         arg2 : System.Address;
         arg3 : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t);
      arg : System.Address) return access xevent  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_xevent.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "qxev_callback";

end CycloneDDS.Low_Level.dds_ddsi_q_xevent_h;
