pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;


with Interfaces.C.Extensions;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h is

   --  unsupported macro: DDSI_TIME_INFINITE ((ddsi_time_t) { INT32_MAX, UINT32_MAX })
   --  unsupported macro: DDSI_TIME_INVALID ((ddsi_time_t) { -1, UINT32_MAX })
   type ddsi_time_t is record
      seconds : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_time.h:25
      fraction : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_time.h:26
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_time.h:27

   subtype ddsi_duration_t is ddsi_time_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_time.h:31

   function ddsi_is_valid_timestamp (t : ddsi_time_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_time.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_is_valid_timestamp";

   function ddsi_wctime_to_ddsi_time (t : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t) return ddsi_time_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_time.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_wctime_to_ddsi_time";

   function ddsi_wctime_from_ddsi_time (x : ddsi_time_t) return CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_time.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_wctime_from_ddsi_time";

   function ddsi_to_ddsi_duration (t : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t) return ddsi_duration_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_time.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_to_ddsi_duration";

   function ddsi_from_ddsi_duration (x : ddsi_duration_t) return CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_time.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_from_ddsi_duration";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h;
