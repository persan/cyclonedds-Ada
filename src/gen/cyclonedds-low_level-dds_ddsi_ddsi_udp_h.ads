pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_udp_h is

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

   -- base IPv4 MC address is ipv4, host bits are bits base .. base+count-1, this machine is bit idx
   type nn_udpv4mcgen_address_t is record
      ipv4  : aliased CycloneDDS.Low_Level.netinet_in_h.in_addr;
      base  : aliased unsigned_char;
      count : aliased unsigned_char;
      idx   : aliased unsigned_char;
   end record with
      Convention => C_Pass_By_Copy;

      -- must be last: then sorting will put them consecutively
      --  <>subtype nn_udpv4mcgen_address_t is nn_udpv4mcgen_address;

   function ddsi_udp_init
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_udp_init";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_udp_h;
