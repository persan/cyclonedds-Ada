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

   DDSRT_HAVE_FILESYSTEM : constant := (1);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/filesystem.h:23

  -- * Copyright(c) 2006 to 2018 ADLINK Technology Limited and others
  -- *
  -- * This program and the accompanying materials are made available under the
  -- * terms of the Eclipse Public License v. 2.0 which is available at
  -- * http://www.eclipse.org/legal/epl-2.0, or the Eclipse Distribution License
  -- * v. 1.0 which is available at
  -- * http://www.eclipse.org/org/documents/edl-v10.php.
  -- *
  -- * SPDX-License-Identifier: EPL-2.0 OR BSD-3-Clause
  --  

   type ddsrt_stat is record
      stat_mode : aliased CycloneDDS.Low_Level.dds_ddsrt_filesystem_posix_h.ddsrt_mode_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/filesystem.h:41
      stat_size : aliased unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/filesystem.h:42
      stat_mtime : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/filesystem.h:43
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/filesystem.h:40

   subtype anon3918_array3920 is Interfaces.C.char_array (0 .. 4096);
   type ddsrt_dirent is record
      d_name : aliased anon3918_array3920;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/filesystem.h:48
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/filesystem.h:47

  --* \brief opendir wrapper
  -- *
  -- * Open the directory conform opendir
  -- *
  -- * Precondition:
  -- *   none
  -- *
  -- * Possible results:
  -- * - return DDS_RETCODE_OK if directory 'name' is opened
  -- * - DDS_RETCODE_ERROR if 'name' could not
  -- *     be found or is not a directory.
  --  

   function ddsrt_opendir (name : Interfaces.C.Strings.chars_ptr; dir : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/filesystem.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_opendir";

  --* \brief closedir wrapper
  -- *
  -- * Close the directory conform closdir
  -- *
  -- * Precondition:
  -- *   none
  -- *
  -- * Possible results:
  -- * - return DDS_RETCODE_OK if directory identified by the handle
  -- *     is succesfully closed
  -- * - return DDS_RETCODE_ERROR if the handle is invalid.
  --  

   function ddsrt_closedir (d : CycloneDDS.Low_Level.dds_ddsrt_filesystem_posix_h.ddsrt_dir_handle_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/filesystem.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_closedir";

  --* \brief readdir wrapper
  -- *
  -- * Read the directory conform readdir.
  -- *
  -- * Precondition:
  -- *   none
  -- *
  -- * Possible results:
  -- * - return DDS_RETCODE_OK if next directory is found
  -- * - return DDS_RETCODE_ERROR if no more directories are found.
  --  

   function ddsrt_readdir (d : CycloneDDS.Low_Level.dds_ddsrt_filesystem_posix_h.ddsrt_dir_handle_t; direntp : access ddsrt_dirent) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/filesystem.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_readdir";

  --* \brief stat wrapper
  -- *
  -- * Gets directory status conform stat.
  -- *
  -- * Precondition:
  -- *   none
  -- *
  -- * Possible results:
  -- * - return DDS_RETCODE_OK if stat is successful
  -- * - return DDS_RETCODE_ERROR if stat fails.
  --  

   function ddsrt_stat (path : Interfaces.C.Strings.chars_ptr; buf : access ddsrt_stat) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/filesystem.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_stat";

  --* \brief Transforms the given filepath into a platform specific filepath.
  -- *
  -- * This translation function will replace any platform file seperator into
  -- * the fileseperator of the current platform. Doulbe quotes are removed
  -- * as well.
  -- *
  -- * Precondition:
  -- *   none
  -- *
  -- * Possible results:
  -- * - returns normalized filepath conform current platform
  -- * - return NULL if out of memory.
  --  

   function ddsrt_file_normalize (filepath : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/filesystem.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_file_normalize";

  --* \brief Get file seperator
  -- *
  -- * Possible Results:
  -- * - "<file-seperator-string>"
  --  

   function ddsrt_file_sep return Interfaces.C.Strings.chars_ptr  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/filesystem.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_file_sep";

end CycloneDDS.Low_Level.dds_ddsrt_filesystem_h;
