pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h;

with CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h;
with CycloneDDS.Low_Level.dds_ddsi_q_rtps_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h;
with CycloneDDS.Low_Level.dds_ddsi_q_protocol_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_plist_h is

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

   -- for nn_parameterid_t
   -- There is an alignment requirement on the raw data (it must be at
   --   offset mod 8 for the conversion to/from a dds_stream to work).
   --   So we define two types: one without any additional padding, and
   --   one where the appropriate amount of padding is inserted

   subtype anon7081_array6036 is Interfaces.C.char_array (0 .. 0);
   type ddsi_serdata_plist_unpadded is record
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;
      pos      : aliased unsigned;
      size     : aliased unsigned;
      vendorid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h
        .nn_vendorid_t;
      protoversion : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h
        .nn_protocol_version_t;
      keyhash : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h
        .ddsi_keyhash_t;
      identifier : aliased unsigned_short;
      options    : aliased unsigned_short;
      data       : aliased anon7081_array6036;
   end record with
      Convention => C_Pass_By_Copy;

   subtype anon7082_array7083 is Interfaces.C.char_array (0 .. 0);
   subtype anon7082_array6036 is Interfaces.C.char_array (0 .. 0);
   type ddsi_serdata_plist is record
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;
      pos      : aliased unsigned;
      size     : aliased unsigned;
      vendorid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h
        .nn_vendorid_t;
      protoversion : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h
        .nn_protocol_version_t;
      keyhash : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h
        .ddsi_keyhash_t;
      pad        : aliased anon7082_array7083;
      identifier : aliased unsigned_short;
      options    : aliased unsigned_short;
      data       : aliased anon7082_array6036;
   end record with
      Convention => C_Pass_By_Copy;

   type ddsi_sertype_plist is record
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
      native_encoding_identifier : aliased unsigned_short;
      keyparam : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h
        .nn_parameterid_t;
   end record with
      Convention => C_Pass_By_Copy;

      -- PL_CDR_(LE|BE)
   ddsi_sertype_ops_plist : aliased constant CycloneDDS.Low_Level
     .dds_ddsi_ddsi_sertype_h
     .ddsi_sertype_ops with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_sertype_ops_plist";

   ddsi_serdata_ops_plist : aliased constant CycloneDDS.Low_Level
     .dds_ddsi_ddsi_serdata_h
     .ddsi_serdata_ops with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_serdata_ops_plist";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_plist_h;
