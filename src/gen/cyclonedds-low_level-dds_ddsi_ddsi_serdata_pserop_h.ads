pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h;
with System;
with Interfaces.C.Extensions;

with CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h;

with CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_generic_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_pserop_h is

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

   -- There is an alignment requirement on the raw data (it must be at
   --   offset mod 8 for the conversion to/from a dds_stream to work).
   --   So we define two types: one without any additional padding, and
   --   one where the appropriate amount of padding is inserted

   subtype anon7077_array6036 is Interfaces.C.char_array (0 .. 0);
   type ddsi_serdata_pserop_unpadded is record
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;
      sample     : System.Address;
      keyless    : aliased Extensions.bool;
      pos        : aliased unsigned;
      size       : aliased unsigned;
      identifier : aliased unsigned_short;
      options    : aliased unsigned_short;
      data       : aliased anon7077_array6036;
   end record with
      Convention => C_Pass_By_Copy;

   subtype anon7078_array7079 is Interfaces.C.char_array (0 .. 0);
   subtype anon7078_array6036 is Interfaces.C.char_array (0 .. 0);
   type ddsi_serdata_pserop is record
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;
      sample     : System.Address;
      keyless    : aliased Extensions.bool;
      pos        : aliased unsigned;
      size       : aliased unsigned;
      pad        : aliased anon7078_array7079;
      identifier : aliased unsigned_short;
      options    : aliased unsigned_short;
      data       : aliased anon7078_array6036;
   end record with
      Convention => C_Pass_By_Copy;

   type ddsi_sertype_pserop is record
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
      native_encoding_identifier : aliased unsigned_short;
      memsize                    : aliased unsigned_long;
      nops                       : aliased unsigned_long;
      ops : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_generic_h.pserop;
      nops_key                   : aliased unsigned_long;
      ops_key : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_generic_h
        .pserop;
   end record with
      Convention => C_Pass_By_Copy;

      -- CDR_(LE|BE)
      -- NULL <=> no key; != NULL <=> 16-byte key at offset 0
   ddsi_sertype_ops_pserop : aliased constant CycloneDDS.Low_Level
     .dds_ddsi_ddsi_sertype_h
     .ddsi_sertype_ops with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_sertype_ops_pserop";

   ddsi_serdata_ops_pserop : aliased constant CycloneDDS.Low_Level
     .dds_ddsi_ddsi_serdata_h
     .ddsi_serdata_ops with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_serdata_ops_pserop";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_pserop_h;
