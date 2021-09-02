pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_q_xevent_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;
with Interfaces.C.Extensions;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_acknack_h is

   type add_AckNack_result is 
     (AANR_SUPPRESSED_ACK,
      AANR_ACK,
      AANR_SUPPRESSED_NACK,
      AANR_NACK,
      AANR_NACKFRAG_ONLY)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_acknack.h:27

   procedure sched_acknack_if_needed
     (ev : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.xevent;
      pwr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_writer;
      rwn : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.pwr_rd_match;
      tnow : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      avoid_suppressed_nack : Extensions.bool)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_acknack.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "sched_acknack_if_needed";

   function make_and_resched_acknack
     (ev : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.xevent;
      pwr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_writer;
      rwn : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.pwr_rd_match;
      tnow : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      avoid_suppressed_nack : Extensions.bool) return access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.nn_xmsg  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_acknack.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "make_and_resched_acknack";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_acknack_h;
