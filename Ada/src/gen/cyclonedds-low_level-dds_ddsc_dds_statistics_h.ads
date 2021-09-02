pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Strings;
with CycloneDDS.Low_Level.dds_dds_h;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;

with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;

package CycloneDDS.Low_Level.dds_ddsc_dds_statistics_h is

   type dds_stat_kind is 
     (DDS_STAT_KIND_UINT32,
      DDS_STAT_KIND_UINT64,
      DDS_STAT_KIND_LENGTHTIME)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_statistics.h:26

   type anon_union2124 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            u32 : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_statistics.h:36
         when 1 =>
            u64 : aliased Interfaces.Unsigned_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_statistics.h:37
         when others =>
            lengthtime : aliased Interfaces.Unsigned_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_statistics.h:38
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type dds_stat_keyvalue is record
      name : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_statistics.h:33
      kind : aliased dds_stat_kind;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_statistics.h:34
      u : aliased anon_union2124;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_statistics.h:39
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_statistics.h:32

   type anon_array2127 is array (0 .. 0) of aliased dds_stat_keyvalue;
   type dds_statistics is record
      entity : aliased CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_statistics.h:43
      opaque : aliased Interfaces.Unsigned_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_statistics.h:44
      time : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_statistics.h:45
      count : aliased size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_statistics.h:46
      kv : aliased anon_array2127;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_statistics.h:47
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_statistics.h:42

   function dds_create_statistics (entity : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t) return access dds_statistics  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_statistics.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "dds_create_statistics";

   function dds_refresh_statistics (stat : access dds_statistics) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_statistics.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "dds_refresh_statistics";

   procedure dds_delete_statistics (stat : access dds_statistics)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_statistics.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "dds_delete_statistics";

   function dds_lookup_statistic (stat : access constant dds_statistics; name : Interfaces.C.Strings.chars_ptr) return access constant dds_stat_keyvalue  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_statistics.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lookup_statistic";

end CycloneDDS.Low_Level.dds_ddsc_dds_statistics_h;
