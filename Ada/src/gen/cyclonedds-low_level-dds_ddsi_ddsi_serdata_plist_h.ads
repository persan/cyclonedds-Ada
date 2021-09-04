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
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:43
      pos : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:43
      size : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:43
      vendorid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:43
      protoversion : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.nn_protocol_version_t;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:43
      keyhash : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h.ddsi_keyhash_t;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:43
      identifier : aliased unsigned_short;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:44
      options : aliased unsigned_short;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:44
      data : aliased anon7081_array6036;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:44
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:42

   subtype anon7082_array7083 is Interfaces.C.char_array (0 .. 0);
   subtype anon7082_array6036 is Interfaces.C.char_array (0 .. 0);
   type ddsi_serdata_plist is record
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:54
      pos : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:54
      size : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:54
      vendorid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:54
      protoversion : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.nn_protocol_version_t;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:54
      keyhash : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h.ddsi_keyhash_t;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:54
      pad : aliased anon7082_array7083;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:55
      identifier : aliased unsigned_short;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:56
      options : aliased unsigned_short;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:56
      data : aliased anon7082_array6036;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:56
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:53

   type ddsi_sertype_plist is record
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:64
      native_encoding_identifier : aliased unsigned_short;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:65
      keyparam : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_parameterid_t;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:66
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:63

  -- PL_CDR_(LE|BE)  
   ddsi_sertype_ops_plist : aliased constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype_ops  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_ops_plist";

   ddsi_serdata_ops_plist : aliased constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata_ops  -- /usr/gnat/include/dds/ddsi/ddsi_serdata_plist.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_ops_plist";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_plist_h;
