pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;
with Interfaces.C.Extensions;

with CycloneDDS.Low_Level.dds_ddsrt_time_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_rhc_h is

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

-- DDS_EXPORT inline i.c.w. __attributes__((visibility...)) and some compilers:
   type ddsi_writer_info is record
      guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      auto_dispose       : aliased Extensions.bool;
      ownership_strength : aliased int;
      iid                : aliased unsigned_long;
      lifespan_exp       : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h
        .ddsrt_mtime_t;
   end record with
      Convention => C_Pass_By_Copy;

   type ddsi_rhc;
   type ddsi_rhc_free_t is access procedure (arg1 : access ddsi_rhc) with
      Convention => C;

   type ddsi_rhc_store_t is access function
     (arg1 : access ddsi_rhc; arg2 : access constant ddsi_writer_info;
      arg3 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;
      arg4 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h
        .ddsi_tkmap_instance)
      return Extensions.bool with
      Convention => C;

   type ddsi_rhc_unregister_wr_t is access procedure
     (arg1 : access ddsi_rhc; arg2 : access constant ddsi_writer_info) with
      Convention => C;

   type ddsi_rhc_relinquish_ownership_t is access procedure
     (arg1 : access ddsi_rhc; arg2 : unsigned_long) with
      Convention => C;

   type ddsi_rhc_set_qos_t is access procedure
     (arg1 : access ddsi_rhc;
      arg2 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_qos_t) with
      Convention => C;

   type ddsi_rhc_ops is record
      store                : ddsi_rhc_store_t;
      unregister_wr        : ddsi_rhc_unregister_wr_t;
      relinquish_ownership : ddsi_rhc_relinquish_ownership_t;
      set_qos              : ddsi_rhc_set_qos_t;
      free                 : ddsi_rhc_free_t;
   end record with
      Convention => C_Pass_By_Copy;

   type ddsi_rhc is record
      ops : access constant ddsi_rhc_ops;
   end record with
      Convention => C_Pass_By_Copy;

   function ddsi_rhc_store
     (rhc    : access ddsi_rhc; wrinfo : access constant ddsi_writer_info;
      sample : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h
        .ddsi_serdata;
      tk : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h
        .ddsi_tkmap_instance)
      return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_rhc_store";

   procedure ddsi_rhc_unregister_wr
     (rhc : access ddsi_rhc; wrinfo : access constant ddsi_writer_info) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_rhc_unregister_wr";

   procedure ddsi_rhc_relinquish_ownership
     (rhc : access ddsi_rhc; wr_iid : unsigned_long) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_rhc_relinquish_ownership";

   procedure ddsi_rhc_set_qos
     (rhc : access ddsi_rhc;
      qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_qos_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_rhc_set_qos";

   procedure ddsi_rhc_free (rhc : access ddsi_rhc) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_rhc_free";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_rhc_h;
