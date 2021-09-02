pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_dds_h;


package CycloneDDS.Low_Level.dds_ddsc_dds_internal_api_h is

   DDS_READ_WITHOUT_LOCK : constant := (16#FFFFFFED#);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_internal_api.h:25

   function dds_reader_lock_samples (entity : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t) return Interfaces.Unsigned_32  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_internal_api.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "dds_reader_lock_samples";

end CycloneDDS.Low_Level.dds_ddsc_dds_internal_api_h;
