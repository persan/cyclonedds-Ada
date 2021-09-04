pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h;

with CycloneDDS.Low_Level.dds_ddsrt_atomics_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
limited with CycloneDDS.Low_Level.dds_ddsc_dds_rhc_h;
with Interfaces.C.Extensions;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h is

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

   type dds_topic is null record;   -- incomplete struct

   type ddsi_tkmap_instance is record
      m_sample : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;  -- /usr/gnat/include/dds/ddsi/ddsi_tkmap.h:28
      m_iid : aliased unsigned_long;  -- /usr/gnat/include/dds/ddsi/ddsi_tkmap.h:29
      m_refc : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t;  -- /usr/gnat/include/dds/ddsi/ddsi_tkmap.h:30
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_tkmap.h:26

   function ddsi_tkmap_new (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv) return access CycloneDDS.Low_Level.dds_ddsc_dds_rhc_h.ddsi_tkmap  -- /usr/gnat/include/dds/ddsi/ddsi_tkmap.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_tkmap_new";

   procedure ddsi_tkmap_free (tkmap : access CycloneDDS.Low_Level.dds_ddsc_dds_rhc_h.ddsi_tkmap)  -- /usr/gnat/include/dds/ddsi/ddsi_tkmap.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_tkmap_free";

   procedure ddsi_tkmap_instance_ref (tk : access ddsi_tkmap_instance)  -- /usr/gnat/include/dds/ddsi/ddsi_tkmap.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_tkmap_instance_ref";

   function ddsi_tkmap_lookup (tkmap : access CycloneDDS.Low_Level.dds_ddsc_dds_rhc_h.ddsi_tkmap; serdata : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata) return unsigned_long  -- /usr/gnat/include/dds/ddsi/ddsi_tkmap.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_tkmap_lookup";

   function ddsi_tkmap_find
     (map : access CycloneDDS.Low_Level.dds_ddsc_dds_rhc_h.ddsi_tkmap;
      sd : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;
      create : Extensions.bool) return access ddsi_tkmap_instance  -- /usr/gnat/include/dds/ddsi/ddsi_tkmap.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_tkmap_find";

   function ddsi_tkmap_find_by_id (map : access CycloneDDS.Low_Level.dds_ddsc_dds_rhc_h.ddsi_tkmap; iid : unsigned_long) return access ddsi_tkmap_instance  -- /usr/gnat/include/dds/ddsi/ddsi_tkmap.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_tkmap_find_by_id";

   function ddsi_tkmap_lookup_instance_ref (map : access CycloneDDS.Low_Level.dds_ddsc_dds_rhc_h.ddsi_tkmap; sd : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata) return access ddsi_tkmap_instance  -- /usr/gnat/include/dds/ddsi/ddsi_tkmap.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_tkmap_lookup_instance_ref";

   procedure ddsi_tkmap_instance_unref (map : access CycloneDDS.Low_Level.dds_ddsc_dds_rhc_h.ddsi_tkmap; tk : access ddsi_tkmap_instance)  -- /usr/gnat/include/dds/ddsi/ddsi_tkmap.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_tkmap_instance_unref";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h;
