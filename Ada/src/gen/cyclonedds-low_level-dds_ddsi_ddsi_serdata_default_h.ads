pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsi_q_freelist_h;
with Interfaces.C.Extensions;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h;

with System;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h;

with CycloneDDS.Low_Level.dds_ddsi_q_protocol_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h is

   CDR_BE : constant := 16#0000#;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:29
   CDR_LE : constant := 16#0100#;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:30
   --  unsupported macro: DDSI_SERDATA_DEFAULT_DEBUG_FIELDS bool fixed;

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
   type CDRHeader is record
      identifier : aliased unsigned_short;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:37
      options : aliased unsigned_short;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:38
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:36

   type serdatapool is record
      freelist : aliased CycloneDDS.Low_Level.dds_ddsi_q_freelist_h.nn_freelist;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:42
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:41

  -- Key hash value. Also possibly key. Suitably aligned for accessing as uint32_t's  
   type anon6467_array1802 is array (0 .. 15) of aliased unsigned_char;
   type dds_keyhash is record
      m_hash : aliased anon6467_array1802;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:46
      m_set : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:47
      m_iskey : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:48
      m_keysize : Extensions.Unsigned_5;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:49
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 4;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:45

  -- has it been initialised?  
  -- m_hash is key value  
  -- size of the key within the hash buffer  
   subtype dds_keyhash_t is dds_keyhash;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:50

  -- Debug builds may want to keep some additional state  
  -- There is an alignment requirement on the raw data (it must be at
  --   offset mod 8 for the conversion to/from a dds_stream to work).
  --   So we define two types: one without any additional padding, and
  --   one where the appropriate amount of padding is inserted  

   type ddsi_serdata_default;
   subtype anon6470_array6036 is Interfaces.C.char_array (0 .. 0);
   type ddsi_serdata_default_unpadded is record
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:77
      pos : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:77
      size : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:77
      fixed : aliased Extensions.bool;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:77
      keyhash : aliased dds_keyhash_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:77
      serpool : access serdatapool;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:77
      next : access ddsi_serdata_default;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:77
      hdr : aliased CDRHeader;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:78
      data : aliased anon6470_array6036;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:78
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:76

   subtype anon6471_array1120 is Interfaces.C.char_array (0 .. 3);
   subtype anon6471_array6036 is Interfaces.C.char_array (0 .. 0);
   type ddsi_serdata_default is record
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:88
      pos : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:88
      size : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:88
      fixed : aliased Extensions.bool;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:88
      keyhash : aliased dds_keyhash_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:88
      serpool : access serdatapool;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:88
      next : access ddsi_serdata_default;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:88
      pad : aliased anon6471_array1120;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:89
      hdr : aliased CDRHeader;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:90
      data : aliased anon6471_array6036;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:90
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:87

   type dds_topic_intern_filter_fn is access function (arg1 : System.Address; arg2 : System.Address) return Extensions.bool
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:100

  -- Number of keys (can be 0)  
   type ddsi_sertype_default_desc_key_seq is record
      nkeys : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:104
      keys : access unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:105
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:103

  -- Key descriptors (NULL iff nkeys 0)  
   subtype ddsi_sertype_default_desc_key_seq_t is ddsi_sertype_default_desc_key_seq;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:106

  -- Number of words in ops (which >= number of ops stored in preproc output)  
   type ddsi_sertype_default_desc_op_seq is record
      nops : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:109
      ops : access unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:110
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:108

  -- Marshalling meta data  
   subtype ddsi_sertype_default_desc_op_seq_t is ddsi_sertype_default_desc_op_seq;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:111

  -- Reduced version of dds_topic_descriptor_t  
  -- Size of topic type  
   type ddsi_sertype_default_desc is record
      size : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:115
      align : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:116
      flagset : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:117
      keys : aliased ddsi_sertype_default_desc_key_seq_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:118
      ops : aliased ddsi_sertype_default_desc_op_seq_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:119
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:114

  -- Alignment of topic type  
  -- Flags  
   type ddsi_sertype_default is record
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:123
      native_encoding_identifier : aliased unsigned_short;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:124
      serpool : access serdatapool;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:125
      c_type : aliased ddsi_sertype_default_desc;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:126
      opt_size : aliased unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:127
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:122

  -- (PL_)?CDR_(LE|BE)  
   type ddsi_plist_sample is record
      blob : System.Address;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:131
      size : aliased unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:132
      keyparam : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_parameterid_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:133
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:130

   type ddsi_rawcdr_sample is record
      blob : System.Address;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:137
      size : aliased unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:138
      key : System.Address;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:139
      keysize : aliased unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:140
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:136

   ddsi_sertype_ops_default : aliased constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype_ops  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_ops_default";

   ddsi_serdata_ops_cdr : aliased constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata_ops  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_ops_cdr";

   ddsi_serdata_ops_cdr_nokey : aliased constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata_ops  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_ops_cdr_nokey";

   function ddsi_serdatapool_new return access serdatapool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdatapool_new";

   procedure ddsi_serdatapool_free (pool : access serdatapool)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdatapool_free";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h;
