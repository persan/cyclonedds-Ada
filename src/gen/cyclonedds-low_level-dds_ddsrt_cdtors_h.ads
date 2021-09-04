pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h;

package CycloneDDS.Low_Level.dds_ddsrt_cdtors_h is

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

   procedure ddsrt_init  -- /usr/gnat/include/dds/ddsrt/cdtors.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_init";

   procedure ddsrt_fini  -- /usr/gnat/include/dds/ddsrt/cdtors.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_fini";

   function ddsrt_get_singleton_mutex return access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t  -- /usr/gnat/include/dds/ddsrt/cdtors.h:26
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_get_singleton_mutex";

   function ddsrt_get_singleton_cond return access CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_cond_t  -- /usr/gnat/include/dds/ddsrt/cdtors.h:28
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_get_singleton_cond";

end CycloneDDS.Low_Level.dds_ddsrt_cdtors_h;
