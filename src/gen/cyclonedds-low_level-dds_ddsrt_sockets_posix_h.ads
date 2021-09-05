pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h is

   DDSRT_INVALID_SOCKET : constant :=
     (-1);  --  /usr/gnat/include/dds/ddsrt/sockets/posix.h:34
   PRIdSOCK : aliased constant String :=
     "d" & ASCII.NUL;  --  /usr/gnat/include/dds/ddsrt/sockets/posix.h:35

   DDSRT_HAVE_IPV6 : constant :=
     1;  --  /usr/gnat/include/dds/ddsrt/sockets/posix.h:62
   --  unsupported macro: DDSRT_HAVE_DNS DDSRT_WITH_DNS
   --  unsupported macro: DDSRT_HAVE_GETADDRINFO DDSRT_WITH_DNS

   DDSRT_HAVE_SSM : constant :=
     1;  --  /usr/gnat/include/dds/ddsrt/sockets/posix.h:65
   DDSRT_HAVE_INET_NTOP : constant :=
     1;  --  /usr/gnat/include/dds/ddsrt/sockets/posix.h:66
   DDSRT_HAVE_INET_PTON : constant :=
     1;  --  /usr/gnat/include/dds/ddsrt/sockets/posix.h:67

   DDSRT_MSGHDR_FLAGS : constant :=
     1;  --  /usr/gnat/include/dds/ddsrt/sockets/posix.h:76

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

   subtype ddsrt_socket_t is int;

   subtype ddsrt_msghdr_t is CycloneDDS.Low_Level.bits_socket_h.msghdr;

end CycloneDDS.Low_Level.dds_ddsrt_sockets_posix_h;
