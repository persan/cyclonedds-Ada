pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;


package CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h is

   --  unsupported macro: DDSRT_ONCE_INIT PTHREAD_ONCE_INIT
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

   type ddsrt_cond_t is record
      cond : aliased CycloneDDS.Low_Level.bits_pthreadtypes_h.pthread_cond_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/sync/posix.h:26
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/sync/posix.h:27

   type ddsrt_mutex_t is record
      mutex : aliased CycloneDDS.Low_Level.bits_pthreadtypes_h.pthread_mutex_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/sync/posix.h:30
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/sync/posix.h:31

   type ddsrt_rwlock_t is record
      rwlock : aliased CycloneDDS.Low_Level.bits_pthreadtypes_h.pthread_rwlock_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/sync/posix.h:34
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/sync/posix.h:35

   subtype ddsrt_once_t is CycloneDDS.Low_Level.bits_pthreadtypes_h.pthread_once_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/sync/posix.h:37

end CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h;
