pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;


package CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h is

   DDSRT_HAVE_THREAD_SETNAME : constant := (1);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/threads/posix.h:20

   DDSRT_HAVE_THREAD_LIST : constant := (1);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/threads/posix.h:23

   PRIdTID : aliased constant String := "ld" & ASCII.NUL;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/threads/posix.h:34

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

   subtype ddsrt_tid_t is long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/threads/posix.h:33

   subtype ddsrt_thread_list_id_t is long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/threads/posix.h:35

  -- __linux  
  -- FreeBSD >= 9.0  
  -- __FreeBSD__  
  -- macOS X >= 10.6  
  -- ddsrt_thread_list_id_t is actually a mach_port_t  
  -- __APPLE__  
  -- TODO: Verify taskIdSelf is the right function to use on VxWorks  
  -- __VXWORKS__  
  -- Wrapped in a struct to force conformation to abstraction.  
   type ddsrt_thread_t is record
      v : aliased CycloneDDS.Low_Level.bits_pthreadtypes_h.pthread_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/threads/posix.h:66
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/threads/posix.h:67

end CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h;
