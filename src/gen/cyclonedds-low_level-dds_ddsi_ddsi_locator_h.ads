pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h is

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

-- address field in locator maintained in network byte order, the rest in host
   type ddsi_locator_t_array1802 is array (0 .. 15) of aliased unsigned_char;
   type ddsi_locator_t is record
      kind    : aliased int;
      port    : aliased unsigned;
      address : aliased ddsi_locator_t_array1802;
   end record with
      Convention => C_Pass_By_Copy;

   type ddsi_xlocator_t is record
      c    : aliased ddsi_locator_t;
      conn : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn_t;
   end record with
      Convention => C_Pass_By_Copy;

end CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h;
