pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h;

limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h;
with Interfaces.C.Strings;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_ipaddr_h is

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

   function ddsi_ipaddr_is_nearby_address
     (loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      ninterf : unsigned_long;
      interf  : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h
        .nn_interface;
      interf_idx : access unsigned_long)
      return CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h
     .ddsi_nearby_address_result with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_ipaddr_is_nearby_address";

   function ddsi_ipaddr_from_string
     (loc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
      str : Interfaces.C.Strings.chars_ptr; kind : int)
      return CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h
     .ddsi_locator_from_string_result with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_ipaddr_from_string";

   function ddsi_ipaddr_compare
     (sa1 : access constant CycloneDDS.Low_Level.bits_socket_h.sockaddr;
      sa2 : access constant CycloneDDS.Low_Level.bits_socket_h.sockaddr)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_ipaddr_compare";

   function ddsi_ipaddr_to_string
     (dst : Interfaces.C.Strings.chars_ptr; sizeof_dst : unsigned_long;
      loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      with_port : int;
      interf    : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h
        .nn_interface)
      return Interfaces.C.Strings.chars_ptr with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_ipaddr_to_string";

   procedure ddsi_ipaddr_to_loc
     (dst : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
      src  : access constant CycloneDDS.Low_Level.bits_socket_h.sockaddr;
      kind : int) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_ipaddr_to_loc";

   procedure ddsi_ipaddr_to_xloc
     (tran : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h
        .ddsi_tran_factory;
      dst : access CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_xlocator_t;
      src  : access constant CycloneDDS.Low_Level.bits_socket_h.sockaddr;
      kind : int) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_ipaddr_to_xloc";

   procedure ddsi_ipaddr_from_loc
     (dst : access CycloneDDS.Low_Level.bits_socket_h.sockaddr_storage;
      src : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_ipaddr_from_loc";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_ipaddr_h;
