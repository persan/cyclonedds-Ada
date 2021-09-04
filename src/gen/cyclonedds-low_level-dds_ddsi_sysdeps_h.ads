pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsrt_log_h;
with Interfaces.C.Strings;
with CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h;

package CycloneDDS.Low_Level.dds_ddsi_sysdeps_h is

   --  arg-macro: function ASSERT_RDLOCK_HELD (x)
   --    return (void) 0;
   --  arg-macro: function ASSERT_WRLOCK_HELD (x)
   --    return (void) 0;
   --  arg-macro: function ASSERT_MUTEX_HELD (x)
   --    return (void) 0;
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

   procedure log_stacktrace
     (logcfg : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h.ddsrt_log_cfg;
      name : Interfaces.C.Strings.chars_ptr;
      tid : CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h.ddsrt_thread_t)  -- /usr/gnat/include/dds/ddsi/sysdeps.h:25
   with Import => True, 
        Convention => C, 
        External_Name => "log_stacktrace";

end CycloneDDS.Low_Level.dds_ddsi_sysdeps_h;
