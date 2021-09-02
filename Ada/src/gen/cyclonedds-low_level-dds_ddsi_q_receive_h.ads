pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;


limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_xevent_h;
with System;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_radmin_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;
with CycloneDDS.Low_Level.dds_ddsi_q_rtps_h;

package CycloneDDS.Low_Level.dds_ddsi_q_receive_h is

   type anon_array14269 is array (0 .. 7) of aliased Interfaces.Unsigned_32;
   type nn_gap_info is record
      gapstart : aliased Interfaces.Integer_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_receive.h:28
      gapend : aliased Interfaces.Integer_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_receive.h:29
      gapnumbits : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_receive.h:30
      gapbits : aliased anon_array14269;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_receive.h:31
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_receive.h:27

   procedure nn_gap_info_init (gi : access nn_gap_info)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_receive.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "nn_gap_info_init";

   procedure nn_gap_info_update
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      gi : access nn_gap_info;
      seqnr : Interfaces.Integer_64)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_receive.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "nn_gap_info_update";

   function nn_gap_info_create_gap
     (wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      prd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader;
      gi : access nn_gap_info) return access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.nn_xmsg  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_receive.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "nn_gap_info_create_gap";

   procedure trigger_recv_threads (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_receive.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "trigger_recv_threads";

   function recv_thread (vrecv_thread_arg : System.Address) return Interfaces.Unsigned_32  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_receive.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "recv_thread";

   function listen_thread (listener : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_listener) return Interfaces.Unsigned_32  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_receive.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "listen_thread";

   function user_dqueue_handler
     (sampleinfo : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.nn_rsample_info;
      fragchain : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.nn_rdata;
      rdguid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      qarg : System.Address) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_receive.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "user_dqueue_handler";

   function add_Gap
     (msg : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.nn_xmsg;
      wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      prd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader;
      start : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      base : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      numbits : Interfaces.Unsigned_32;
      bits : access Interfaces.Unsigned_32) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_receive.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "add_Gap";

end CycloneDDS.Low_Level.dds_ddsi_q_receive_h;
