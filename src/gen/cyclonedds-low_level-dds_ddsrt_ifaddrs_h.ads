pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

with System;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;

package CycloneDDS.Low_Level.dds_ddsrt_ifaddrs_h is

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

   type ddsrt_iftype is
     (DDSRT_IFTYPE_UNKNOWN, DDSRT_IFTYPE_WIRED, DDSRT_IFTYPE_WIFI) with
      Convention => C;

      --  <>type ddsrt_ifaddrs;
   type ddsrt_ifaddrs_t is record
      next      : access ddsrt_ifaddrs_t;
      name      : Interfaces.C.Strings.chars_ptr;
      index     : aliased unsigned;
      flags     : aliased unsigned;
      c_type    : aliased ddsrt_iftype;
      addr      : access CycloneDDS.Low_Level.bits_socket_h.sockaddr;
      netmask   : access CycloneDDS.Low_Level.bits_socket_h.sockaddr;
      broadaddr : access CycloneDDS.Low_Level.bits_socket_h.sockaddr;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype ddsrt_ifaddrs_t is ddsrt_ifaddrs;

   function ddsrt_getifaddrs
     (ifap : System.Address; afs : access int)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_getifaddrs";

   procedure ddsrt_freeifaddrs (ifa : access ddsrt_ifaddrs_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_freeifaddrs";

   function ddsrt_eth_get_mac_addr
     (interface_name : Interfaces.C.Strings.chars_ptr;
      mac_addr       : access unsigned_char)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsrt_eth_get_mac_addr";

end CycloneDDS.Low_Level.dds_ddsrt_ifaddrs_h;
