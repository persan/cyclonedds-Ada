pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsi_q_protocol_h;
with CycloneDDS.Low_Level.dds_ddsi_q_rtps_h;
with Interfaces.C.Strings;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;
with Interfaces.C.Extensions;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h;

package CycloneDDS.Low_Level.dds_ddsi_q_misc_h is

   function fromSN (sn : CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_sequence_number_t) return CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_misc.h:21
   with Import => True, 
        Convention => C, 
        External_Name => "fromSN";

   function toSN (n : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t) return CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_sequence_number_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_misc.h:25
   with Import => True, 
        Convention => C, 
        External_Name => "toSN";

   function normalize_data_datafrag_flags (smhdr : access constant CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.SubmessageHeader) return unsigned_char  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_misc.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "normalize_data_datafrag_flags";

   function WildcardOverlap (p1 : Interfaces.C.Strings.chars_ptr; p2 : Interfaces.C.Strings.chars_ptr) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_misc.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "WildcardOverlap";

   nullguid : aliased constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_misc.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "nullguid";

   function guid_prefix_zero (a : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_prefix) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_misc.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "guid_prefix_zero";

   function guid_prefix_eq (a : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_prefix; b : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_prefix) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_misc.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "guid_prefix_eq";

   function guid_eq (a : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid; b : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_misc.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "guid_eq";

   function ddsi2_patmatch (pat : Interfaces.C.Strings.chars_ptr; str : Interfaces.C.Strings.chars_ptr) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_misc.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi2_patmatch";

   function find_partitionmapping
     (cfg : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h.ddsi_config;
      partition : Interfaces.C.Strings.chars_ptr;
      topic : Interfaces.C.Strings.chars_ptr) return access CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h.ddsi_config_partitionmapping_listelem  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_misc.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "find_partitionmapping";

   function is_ignored_partition
     (cfg : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h.ddsi_config;
      partition : Interfaces.C.Strings.chars_ptr;
      topic : Interfaces.C.Strings.chars_ptr) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_misc.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "is_ignored_partition";

end CycloneDDS.Low_Level.dds_ddsi_q_misc_h;
