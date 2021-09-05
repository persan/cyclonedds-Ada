pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package CycloneDDS.Low_Level.dds_ddsrt_iovec_h is

-- * Copyright(c) 2020 ADLINK Technology Limited and others
-- *
-- * This program and the accompanying materials are made available under the
-- * terms of the Eclipse Public License v. 2.0 which is available at
-- * http://www.eclipse.org/legal/epl-2.0, or the Eclipse Distribution License
-- * v. 1.0 which is available at
-- * http://www.eclipse.org/org/documents/edl-v10.php.
-- *
-- * SPDX-License-Identifier: EPL-2.0 OR BSD-3-Clause
   --

   -- Equivalent to a DWORD
   subtype ddsrt_iovec_t is
     CycloneDDS.Low_Level.bits_types_struct_iovec_h.iovec;

   subtype ddsrt_iov_len_t is unsigned_long;

   subtype ddsrt_msg_iovlen_t is unsigned_long;

end CycloneDDS.Low_Level.dds_ddsrt_iovec_h;
