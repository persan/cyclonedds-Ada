pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_addrset_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_wraddrset_h is

   function compute_writer_addrset (wr : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer) return access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_wraddrset.h:25
   with Import => True, 
        Convention => C, 
        External_Name => "compute_writer_addrset";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_wraddrset_h;
