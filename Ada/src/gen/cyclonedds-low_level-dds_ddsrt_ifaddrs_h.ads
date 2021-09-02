pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

limited 
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
     (DDSRT_IFTYPE_UNKNOWN,
      DDSRT_IFTYPE_WIRED,
      DDSRT_IFTYPE_WIFI)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/ifaddrs.h:21

   type ddsrt_ifaddrs;
   type ddsrt_ifaddrs is record
      next : access ddsrt_ifaddrs;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/ifaddrs.h:28
      name : Interfaces.C.Strings.chars_ptr;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/ifaddrs.h:29
      index : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/ifaddrs.h:30
      flags : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/ifaddrs.h:31
      c_type : aliased ddsrt_iftype;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/ifaddrs.h:32
      addr : access CycloneDDS.Low_Level.bits_socket_h.sockaddr;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/ifaddrs.h:33
      netmask : access CycloneDDS.Low_Level.bits_socket_h.sockaddr;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/ifaddrs.h:34
      broadaddr : access CycloneDDS.Low_Level.bits_socket_h.sockaddr;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/ifaddrs.h:35
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/ifaddrs.h:27

   subtype ddsrt_ifaddrs_t is ddsrt_ifaddrs;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/ifaddrs.h:38

   function ddsrt_getifaddrs (ifap : System.Address; afs : access int) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/ifaddrs.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_getifaddrs";

   procedure ddsrt_freeifaddrs (ifa : access ddsrt_ifaddrs_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/ifaddrs.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_freeifaddrs";

   function ddsrt_eth_get_mac_addr (interface_name : Interfaces.C.Strings.chars_ptr; mac_addr : access unsigned_char) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsrt/ifaddrs.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_eth_get_mac_addr";

end CycloneDDS.Low_Level.dds_ddsrt_ifaddrs_h;
