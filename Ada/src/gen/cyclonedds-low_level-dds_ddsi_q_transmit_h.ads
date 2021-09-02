pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_q_thread_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h;
with CycloneDDS.Low_Level.dds_ddsi_q_rtps_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h;

with System;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_xevent_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_whc_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;

package CycloneDDS.Low_Level.dds_ddsi_q_transmit_h is

   function write_sample_gc
     (ts1 : access CycloneDDS.Low_Level.dds_ddsi_q_thread_h.thread_state1;
      xp : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_xpack;
      wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      serdata : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;
      tk : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h.ddsi_tkmap_instance) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_transmit.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "write_sample_gc";

   function write_sample_nogc
     (ts1 : access CycloneDDS.Low_Level.dds_ddsi_q_thread_h.thread_state1;
      xp : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_xpack;
      wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      serdata : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;
      tk : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h.ddsi_tkmap_instance) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_transmit.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "write_sample_nogc";

   function write_sample_gc_notk
     (ts1 : access CycloneDDS.Low_Level.dds_ddsi_q_thread_h.thread_state1;
      xp : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_xpack;
      wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      serdata : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_transmit.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "write_sample_gc_notk";

   function write_sample_nogc_notk
     (ts1 : access CycloneDDS.Low_Level.dds_ddsi_q_thread_h.thread_state1;
      xp : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_xpack;
      wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      serdata : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_transmit.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "write_sample_nogc_notk";

   function create_fragment_message
     (wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist;
      serdata : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;
      fragnum : Interfaces.Unsigned_32;
      nfrags : Interfaces.Unsigned_16;
      prd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader;
      msg : System.Address;
      isnew : int;
      advertised_fragnum : Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_transmit.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "create_fragment_message";

   function enqueue_sample_wrlock_held
     (wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist;
      serdata : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;
      prd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader;
      isnew : int) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_transmit.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "enqueue_sample_wrlock_held";

   procedure enqueue_spdp_sample_wrlock_held
     (wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      serdata : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;
      prd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_transmit.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "enqueue_spdp_sample_wrlock_held";

   procedure add_Heartbeat
     (msg : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.nn_xmsg;
      wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      whcst : access constant CycloneDDS.Low_Level.dds_ddsi_q_whc_h.whc_state;
      hbansreq : int;
      hbliveliness : int;
      dst : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t;
      issync : int)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_transmit.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "add_Heartbeat";

   function write_hb_liveliness
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      wr_guid : access CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      xp : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_xpack) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_transmit.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "write_hb_liveliness";

   function write_sample_p2p_wrlock_held
     (wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      plist : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist;
      serdata : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;
      tk : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h.ddsi_tkmap_instance;
      prd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_transmit.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "write_sample_p2p_wrlock_held";

end CycloneDDS.Low_Level.dds_ddsi_q_transmit_h;
