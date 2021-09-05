pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h;

with Interfaces.C.Extensions;
with Interfaces.C.Strings;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h is

   MAX_INTERFACES : constant :=
     128;  --  /usr/gnat/include/dds/ddsi/ddsi_ownip.h:27

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

   -- actual interface address
   type nn_interface is record
      loc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      extloc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      netmask : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      if_index       : aliased unsigned;
      mc_capable     : Extensions.Unsigned_1;
      mc_flaky       : Extensions.Unsigned_1;
      point_to_point : Extensions.Unsigned_1;
      loopback       : Extensions.Unsigned_1;
      link_local     : Extensions.Unsigned_1;
      name           : Interfaces.C.Strings.chars_ptr;
   end record with
      Convention => C_Pass_By_Copy,
      Pack       => True,
      Alignment  => 8;

      -- interface address to advertise in discovery
   function find_own_ip
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      requested_address : Interfaces.C.Strings.chars_ptr) return int with
      Import        => True,
      Convention    => C,
      External_Name => "find_own_ip";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h;
