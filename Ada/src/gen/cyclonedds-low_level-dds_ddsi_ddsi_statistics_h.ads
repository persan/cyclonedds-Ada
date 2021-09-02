pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;


package CycloneDDS.Low_Level.dds_ddsi_ddsi_statistics_h is

   procedure ddsi_get_writer_stats
     (wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      rexmit_bytes : access Interfaces.Unsigned_64;
      throttle_count : access Interfaces.Unsigned_32;
      time_throttled : access Interfaces.Unsigned_64;
      time_retransmit : access Interfaces.Unsigned_64)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_statistics.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_get_writer_stats";

   procedure ddsi_get_reader_stats (rd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader; discarded_bytes : access Interfaces.Unsigned_64)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_statistics.h:25
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_get_reader_stats";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_statistics_h;
