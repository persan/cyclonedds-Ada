pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with CycloneDDS.Low_Level.dds_ddsrt_atomics_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_iid_h is

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

   type anon6962_array2939 is array (0 .. 3) of aliased unsigned;
   type ddsi_iid is record
      counter : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h
        .ddsrt_atomic_uint64_t;
      key : aliased anon6962_array2939;
   end record with
      Convention => C_Pass_By_Copy;

   procedure ddsi_iid_init with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_iid_init";

   procedure ddsi_iid_fini with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_iid_fini";

   function ddsi_iid_gen return unsigned_long with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_iid_gen";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_iid_h;
