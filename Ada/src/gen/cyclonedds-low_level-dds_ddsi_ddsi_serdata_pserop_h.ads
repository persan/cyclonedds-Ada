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
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:41
      sample : System.Address;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:41
      keyless : aliased Extensions.bool;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:41
      pos : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:41
      size : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:41
      identifier : aliased unsigned_short;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:42
      options : aliased unsigned_short;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:42
      data : aliased anon7077_array6036;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:42
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:40

   subtype anon7078_array7079 is Interfaces.C.char_array (0 .. 0);
   subtype anon7078_array6036 is Interfaces.C.char_array (0 .. 0);
   type ddsi_serdata_pserop is record
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:52
      sample : System.Address;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:52
      keyless : aliased Extensions.bool;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:52
      pos : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:52
      size : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:52
      pad : aliased anon7078_array7079;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:53
      identifier : aliased unsigned_short;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:54
      options : aliased unsigned_short;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:54
      data : aliased anon7078_array6036;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:54
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:51

   type ddsi_sertype_pserop is record
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:62
      native_encoding_identifier : aliased unsigned_short;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:63
      memsize : aliased unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:64
      nops : aliased unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:65
      ops : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_generic_h.pserop;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:66
      nops_key : aliased unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:67
      ops_key : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_generic_h.pserop;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:68
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:61

  -- CDR_(LE|BE)  
  -- NULL <=> no key; != NULL <=> 16-byte key at offset 0  
   ddsi_sertype_ops_pserop : aliased constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype_ops  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_ops_pserop";

   ddsi_serdata_ops_pserop : aliased constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata_ops  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_pserop.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_ops_pserop";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_pserop_h;
