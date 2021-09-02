pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h;

package CycloneDDS.Low_Level.dds_ddsrt_cdtors_h is

   procedure ddsrt_init  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/cdtors.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_init";

   procedure ddsrt_fini  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/cdtors.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_fini";

   function ddsrt_get_singleton_mutex return access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/cdtors.h:26
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_get_singleton_mutex";

   function ddsrt_get_singleton_cond return access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_cond_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/cdtors.h:28
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_get_singleton_cond";

end CycloneDDS.Low_Level.dds_ddsrt_cdtors_h;
