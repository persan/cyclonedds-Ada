pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_q_protocol_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;


package CycloneDDS.Low_Level.dds_ddsi_q_bswap_h is

   procedure bswapSN (sn : access CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_sequence_number_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_bswap.h:26
   with Import => True, 
        Convention => C, 
        External_Name => "bswapSN";

   function nn_hton_guid_prefix (p : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_prefix_t) return CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_prefix_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_bswap.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "nn_hton_guid_prefix";

   function nn_ntoh_guid_prefix (p : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_prefix_t) return CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_prefix_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_bswap.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "nn_ntoh_guid_prefix";

   function nn_hton_entityid (e : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t) return CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_bswap.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "nn_hton_entityid";

   function nn_ntoh_entityid (e : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t) return CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_bswap.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "nn_ntoh_entityid";

   function nn_hton_guid (g : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t) return CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_bswap.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "nn_hton_guid";

   function nn_ntoh_guid (g : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t) return CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_bswap.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "nn_ntoh_guid";

   procedure bswap_sequence_number_set_hdr (snset : access CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_sequence_number_set_header)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_bswap.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "bswap_sequence_number_set_hdr";

   procedure bswap_sequence_number_set_bitmap (snset : access CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_sequence_number_set_header; bits : access Interfaces.Unsigned_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_bswap.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "bswap_sequence_number_set_bitmap";

   procedure bswap_fragment_number_set_hdr (fnset : access CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_fragment_number_set_header)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_bswap.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "bswap_fragment_number_set_hdr";

   procedure bswap_fragment_number_set_bitmap (fnset : access CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_fragment_number_set_header; bits : access Interfaces.Unsigned_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_bswap.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "bswap_fragment_number_set_bitmap";

end CycloneDDS.Low_Level.dds_ddsi_q_bswap_h;
