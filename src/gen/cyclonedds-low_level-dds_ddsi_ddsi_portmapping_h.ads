pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h;

with Interfaces.C.Strings;

with Interfaces.C.Extensions;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_portmapping_h is

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

   type ddsi_port is
     (DDSI_PORT_MULTI_DISC, DDSI_PORT_MULTI_DATA, DDSI_PORT_UNI_DISC,
      DDSI_PORT_UNI_DATA) with
      Convention => C;

   type ddsi_portmapping is record
      base : aliased unsigned;
      dg   : aliased unsigned;
      pg   : aliased unsigned;
      d0   : aliased unsigned;
      d1   : aliased unsigned;
      d2   : aliased unsigned;
      d3   : aliased unsigned;
   end record with
      Convention => C_Pass_By_Copy;

   function ddsi_valid_portmapping
     (config : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h
        .ddsi_config;
      participant_index : int; msg : Interfaces.C.Strings.chars_ptr;
      msgsize           : unsigned_long) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_valid_portmapping";

   function ddsi_get_port
     (config : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h
        .ddsi_config;
      which : ddsi_port; participant_index : int) return unsigned with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_get_port";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_portmapping_h;
