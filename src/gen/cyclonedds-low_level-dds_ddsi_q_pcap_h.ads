pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
with Interfaces.C.Strings;

with CycloneDDS.Low_Level.dds_ddsrt_time_h;
limited 

limited with CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h;

package CycloneDDS.Low_Level.dds_ddsi_q_pcap_h is

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

   function new_pcap_file (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; name : Interfaces.C.Strings.chars_ptr) return access CycloneDDS.Low_Level.bits_types_FILE_h.FILE  -- /usr/gnat/include/dds/ddsi/q_pcap.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "new_pcap_file";

   procedure write_pcap_received
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      tstamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      src : access constant CycloneDDS.Low_Level.bits_socket_h.sockaddr_storage;
      dst : access constant CycloneDDS.Low_Level.bits_socket_h.sockaddr_storage;
      buf : access unsigned_char;
      sz : unsigned_long)  -- /usr/gnat/include/dds/ddsi/q_pcap.h:26
   with Import => True, 
        Convention => C, 
        External_Name => "write_pcap_received";

   procedure write_pcap_sent
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      tstamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      src : access constant CycloneDDS.Low_Level.bits_socket_h.sockaddr_storage;
      hdr : access constant CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h.ddsrt_msghdr_t;
      sz : unsigned_long)  -- /usr/gnat/include/dds/ddsi/q_pcap.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "write_pcap_sent";

end CycloneDDS.Low_Level.dds_ddsi_q_pcap_h;
