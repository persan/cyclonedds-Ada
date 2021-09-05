pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h is

-- * Copyright(c) 2019 ADLINK Technology Limited and others
-- *
-- * This program and the accompanying materials are made available under the
-- * terms of the Eclipse Public License v. 2.0 which is available at
-- * http://www.eclipse.org/legal/epl-2.0, or the Eclipse Distribution License
-- * v. 1.0 which is available at
-- * http://www.eclipse.org/org/documents/edl-v10.php.
-- *
-- * SPDX-License-Identifier: EPL-2.0 OR BSD-3-Clause
   --

   type anon4078_array4080 is array (0 .. 11) of aliased unsigned_char;
   type anon4078_array4081 is array (0 .. 2) of aliased unsigned;
   type ddsi_guid_prefix_t (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            s : aliased anon4078_array4080;
         when others =>
            u : aliased anon4078_array4081;
      end case;
   end record with
      Convention      => C_Pass_By_Copy,
      Unchecked_Union => True;

   type ddsi_entityid_t (discr : unsigned := 0) is record
      case discr is
         when others =>
            u : aliased unsigned;
      end case;
   end record with
      Convention      => C_Pass_By_Copy,
      Unchecked_Union => True;

   type ddsi_guid_t is record
      prefix   : aliased ddsi_guid_prefix_t;
      entityid : aliased ddsi_entityid_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>

end CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;
