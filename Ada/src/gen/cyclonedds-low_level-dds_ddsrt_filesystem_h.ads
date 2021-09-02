pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsrt_filesystem_posix_h;

with CycloneDDS.Low_Level.dds_ddsrt_time_h;
with Interfaces.C.Strings;
with System;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;

package CycloneDDS.Low_Level.dds_ddsrt_filesystem_h is

   DDSRT_HAVE_FILESYSTEM : constant := (1);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/filesystem.h:23

   type ddsrt_stat is record
      stat_mode : aliased CycloneDDS.Low_Level.dds_ddsrt_filesystem_posix_h.ddsrt_mode_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/filesystem.h:41
      stat_size : aliased size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/filesystem.h:42
      stat_mtime : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/filesystem.h:43
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/filesystem.h:40

   subtype anon_array14513 is Interfaces.C.char_array (0 .. 4096);
   type ddsrt_dirent is record
      d_name : aliased anon_array14513;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/filesystem.h:48
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/filesystem.h:47

   function ddsrt_opendir (name : Interfaces.C.Strings.chars_ptr; dir : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/filesystem.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_opendir";

   function ddsrt_closedir (d : CycloneDDS.Low_Level.dds_ddsrt_filesystem_posix_h.ddsrt_dir_handle_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/filesystem.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_closedir";

   function ddsrt_readdir (d : CycloneDDS.Low_Level.dds_ddsrt_filesystem_posix_h.ddsrt_dir_handle_t; direntp : access ddsrt_dirent) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/filesystem.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_readdir";

   function ddsrt_stat (path : Interfaces.C.Strings.chars_ptr; buf : access ddsrt_stat) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/filesystem.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_stat";

   function ddsrt_file_normalize (filepath : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/filesystem.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_file_normalize";

   function ddsrt_file_sep return Interfaces.C.Strings.chars_ptr  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/filesystem.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_file_sep";

end CycloneDDS.Low_Level.dds_ddsrt_filesystem_h;
