pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;

limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_whc_h;

limited with CycloneDDS.Low_Level.dds_ddsi_q_xevent_h;

package CycloneDDS.Low_Level.dds_ddsi_q_hbcontrol_h is

   type hbcontrol is record
      t_of_last_write : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_hbcontrol.h:26
      t_of_last_hb : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_hbcontrol.h:27
      t_of_last_ackhb : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_hbcontrol.h:28
      tsched : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_hbcontrol.h:29
      hbs_since_last_write : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_hbcontrol.h:30
      last_packetid : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_hbcontrol.h:31
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_hbcontrol.h:25

   procedure writer_hbcontrol_init (hbc : access hbcontrol)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_hbcontrol.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "writer_hbcontrol_init";

   function writer_hbcontrol_intv
     (wr : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      whcst : access constant CycloneDDS.Low_Level.dds_ddsi_q_whc_h.whc_state;
      tnow : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t) return Interfaces.Integer_64  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_hbcontrol.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "writer_hbcontrol_intv";

   procedure writer_hbcontrol_note_asyncwrite (wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer; tnow : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_hbcontrol.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "writer_hbcontrol_note_asyncwrite";

   function writer_hbcontrol_ack_required
     (wr : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      whcst : access constant CycloneDDS.Low_Level.dds_ddsi_q_whc_h.whc_state;
      tnow : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_hbcontrol.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "writer_hbcontrol_ack_required";

   function writer_hbcontrol_piggyback
     (wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      whcst : access constant CycloneDDS.Low_Level.dds_ddsi_q_whc_h.whc_state;
      tnow : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      packetid : Interfaces.Unsigned_32;
      hbansreq : access int) return access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.nn_xmsg  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_hbcontrol.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "writer_hbcontrol_piggyback";

   function writer_hbcontrol_must_send
     (wr : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      whcst : access constant CycloneDDS.Low_Level.dds_ddsi_q_whc_h.whc_state;
      tnow : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_hbcontrol.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "writer_hbcontrol_must_send";

   function writer_hbcontrol_create_heartbeat
     (wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      whcst : access constant CycloneDDS.Low_Level.dds_ddsi_q_whc_h.whc_state;
      tnow : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      hbansreq : int;
      issync : int) return access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.nn_xmsg  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_hbcontrol.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "writer_hbcontrol_create_heartbeat";

   function writer_hbcontrol_p2p
     (wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      whcst : access constant CycloneDDS.Low_Level.dds_ddsi_q_whc_h.whc_state;
      hbansreq : int;
      prd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader) return access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.nn_xmsg  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_hbcontrol.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "writer_hbcontrol_p2p";

end CycloneDDS.Low_Level.dds_ddsi_q_hbcontrol_h;
