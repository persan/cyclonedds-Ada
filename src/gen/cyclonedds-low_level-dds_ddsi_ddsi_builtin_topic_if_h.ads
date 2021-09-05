pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h;
with Interfaces.C.Extensions;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_builtin_topic_if_h is

-- * Copyright(c) 2019 ADLINK Technology Limited and others
-- *
-- * This program and the accompanying materials are made available under the
-- * terms of the Eclipse Public License v. 2.0 which is available at
-- * http://www.eclipse.org/legal/epl-2.0, or the Eclipse Distribution License
-- * v. 1.0 which is available at
-- * http://www.eclipse.org/org/documents/edl-v10.php.
-- *
-- * SPDX-License-Identifier: EPL-2.0 OR BSD-3-Clause
   --

   type ddsi_topic_definition is null record;   -- incomplete struct

   type ddsi_builtin_topic_interface is record
      arg                          : System.Address;
      builtintopic_is_builtintopic : access function
        (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h
           .ddsi_sertype;
         arg2 : System.Address) return Extensions.bool;
      builtintopic_is_visible : access function
        (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
           .ddsi_guid_t;
         arg2 : CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t;
         arg3 : System.Address) return Extensions.bool;
      builtintopic_get_tkmap_entry : access function
        (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
           .ddsi_guid_t;
         arg2 : System.Address)
         return access CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h
        .ddsi_tkmap_instance;
      builtintopic_write_endpoint : access procedure
        (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h
           .entity_common;
         arg2 : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
         arg3 : Extensions.bool; arg4 : System.Address);
      builtintopic_write_topic : access procedure
        (arg1 : access constant ddsi_topic_definition;
         arg2 : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
         arg3 : Extensions.bool; arg4 : System.Address);
   end record with
      Convention => C_Pass_By_Copy;

   function builtintopic_is_visible
     (btif : access constant ddsi_builtin_topic_interface;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      vendorid : CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t)
      return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "builtintopic_is_visible";

   function builtintopic_is_builtintopic
     (btif   : access constant ddsi_builtin_topic_interface;
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h
        .ddsi_sertype)
      return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "builtintopic_is_builtintopic";

   function builtintopic_get_tkmap_entry
     (btif : access constant ddsi_builtin_topic_interface;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t)
      return access CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h
     .ddsi_tkmap_instance with
      Import        => True,
      Convention    => C,
      External_Name => "builtintopic_get_tkmap_entry";

   procedure builtintopic_write_endpoint
     (btif : access constant ddsi_builtin_topic_interface;
      e    : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h
        .entity_common;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      alive     : Extensions.bool) with
      Import        => True,
      Convention    => C,
      External_Name => "builtintopic_write_endpoint";

   procedure builtintopic_write_topic
     (btif      : access constant ddsi_builtin_topic_interface;
      tpd       : access constant ddsi_topic_definition;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      alive     : Extensions.bool) with
      Import        => True,
      Convention    => C,
      External_Name => "builtintopic_write_topic";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_builtin_topic_if_h;
