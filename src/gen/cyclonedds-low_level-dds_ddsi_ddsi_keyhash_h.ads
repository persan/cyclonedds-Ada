pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h is

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

   type anon4738_array1802 is array (0 .. 15) of aliased unsigned_char;
   type ddsi_keyhash is record
      value : aliased anon4738_array1802;  -- /usr/gnat/include/dds/ddsi/ddsi_keyhash.h:20
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_keyhash.h:19

   subtype ddsi_keyhash_t is ddsi_keyhash;  -- /usr/gnat/include/dds/ddsi/ddsi_keyhash.h:21

end CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h;
