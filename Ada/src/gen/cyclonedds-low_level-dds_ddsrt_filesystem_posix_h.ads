pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dirent_h;


package CycloneDDS.Low_Level.dds_ddsrt_filesystem_posix_h is

   --  unsupported macro: DDSRT_PATH_MAX PATH_MAX
   DDSRT_FILESEPCHAR : aliased constant Character := '/';  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/filesystem/posix.h:24

   type ddsrt_dir_handle_t is access all CycloneDDS.Low_Level.dirent_h.uu_dirstream;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/filesystem/posix.h:20

   subtype ddsrt_mode_t is CycloneDDS.Low_Level.x86_64_linux_gnu_sys_types_h.mode_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/filesystem/posix.h:21

end CycloneDDS.Low_Level.dds_ddsrt_filesystem_posix_h;
