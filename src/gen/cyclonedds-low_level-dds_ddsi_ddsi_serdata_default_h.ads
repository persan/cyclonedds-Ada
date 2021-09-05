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

   CDR_BE : constant :=
     16#0000#;  --  /usr/gnat/include/dds/ddsi/ddsi_serdata_default.h:29
   CDR_LE : constant :=
     16#0100#;  --  /usr/gnat/include/dds/ddsi/ddsi_serdata_default.h:30
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
      identifier : aliased unsigned_short;
      options    : aliased unsigned_short;
   end record with
      Convention => C_Pass_By_Copy;

   type serdatapool is record
      freelist : aliased CycloneDDS.Low_Level.dds_ddsi_q_freelist_h
        .nn_freelist;
   end record with
      Convention => C_Pass_By_Copy;

      -- Key hash value. Also possibly key. Suitably aligned for accessing as uint32_t's
   type anon6467_array1802 is array (0 .. 15) of aliased unsigned_char;
   type dds_keyhash_t is record
      m_hash    : aliased anon6467_array1802;
      m_set     : Extensions.Unsigned_1;
      m_iskey   : Extensions.Unsigned_1;
      m_keysize : Extensions.Unsigned_5;
   end record with
      Convention => C_Pass_By_Copy,
      Pack       => True,
      Alignment  => 4;

      -- has it been initialised?
      -- m_hash is key value
      -- size of the key within the hash buffer
      --  <>subtype dds_keyhash_t is dds_keyhash;

      -- Debug builds may want to keep some additional state
      -- There is an alignment requirement on the raw data (it must be at
      --   offset mod 8 for the conversion to/from a dds_stream to work).
      --   So we define two types: one without any additional padding, and
      --   one where the appropriate amount of padding is inserted

   type ddsi_serdata_default;
   subtype anon6470_array6036 is Interfaces.C.char_array (0 .. 0);
   type ddsi_serdata_default_unpadded is record
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;
      pos     : aliased unsigned;
      size    : aliased unsigned;
      fixed   : aliased Extensions.bool;
      keyhash : aliased dds_keyhash_t;
      serpool : access serdatapool;
      next    : access ddsi_serdata_default;
      hdr     : aliased CDRHeader;
      data    : aliased anon6470_array6036;
   end record with
      Convention => C_Pass_By_Copy;

   subtype anon6471_array1120 is Interfaces.C.char_array (0 .. 3);
   subtype anon6471_array6036 is Interfaces.C.char_array (0 .. 0);
   type ddsi_serdata_default is record
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;
      pos     : aliased unsigned;
      size    : aliased unsigned;
      fixed   : aliased Extensions.bool;
      keyhash : aliased dds_keyhash_t;
      serpool : access serdatapool;
      next    : access ddsi_serdata_default;
      pad     : aliased anon6471_array1120;
      hdr     : aliased CDRHeader;
      data    : aliased anon6471_array6036;
   end record with
      Convention => C_Pass_By_Copy;

   type dds_topic_intern_filter_fn is access function
     (arg1 : System.Address; arg2 : System.Address) return Extensions.bool with
      Convention => C;

      -- Number of keys (can be 0)
   type ddsi_sertype_default_desc_key_seq_t is record
      nkeys : aliased unsigned;
      keys  : access unsigned;
   end record with
      Convention => C_Pass_By_Copy;

      -- Key descriptors (NULL iff nkeys 0)
      --  <>subtype ddsi_sertype_default_desc_key_seq_t is ddsi_sertype_default_desc_key_seq;

   -- Number of words in ops (which >= number of ops stored in preproc output)
   type ddsi_sertype_default_desc_op_seq_t is record
      nops : aliased unsigned;
      ops  : access unsigned;
   end record with
      Convention => C_Pass_By_Copy;

      -- Marshalling meta data
      --  <>subtype ddsi_sertype_default_desc_op_seq_t is ddsi_sertype_default_desc_op_seq;

      -- Reduced version of dds_topic_descriptor_t
      -- Size of topic type
   type ddsi_sertype_default_desc is record
      size    : aliased unsigned;
      align   : aliased unsigned;
      flagset : aliased unsigned;
      keys    : aliased ddsi_sertype_default_desc_key_seq_t;
      ops     : aliased ddsi_sertype_default_desc_op_seq_t;
   end record with
      Convention => C_Pass_By_Copy;

      -- Alignment of topic type
      -- Flags
   type ddsi_sertype_default is record
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
      native_encoding_identifier : aliased unsigned_short;
      serpool                    : access serdatapool;
      c_type                     : aliased ddsi_sertype_default_desc;
      opt_size                   : aliased unsigned_long;
   end record with
      Convention => C_Pass_By_Copy;

      -- (PL_)?CDR_(LE|BE)
   type ddsi_plist_sample is record
      blob     : System.Address;
      size     : aliased unsigned_long;
      keyparam : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h
        .nn_parameterid_t;
   end record with
      Convention => C_Pass_By_Copy;

   type ddsi_rawcdr_sample is record
      blob    : System.Address;
      size    : aliased unsigned_long;
      key     : System.Address;
      keysize : aliased unsigned_long;
   end record with
      Convention => C_Pass_By_Copy;

   ddsi_sertype_ops_default : aliased constant CycloneDDS.Low_Level
     .dds_ddsi_ddsi_sertype_h
     .ddsi_sertype_ops with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_sertype_ops_default";

   ddsi_serdata_ops_cdr : aliased constant CycloneDDS.Low_Level
     .dds_ddsi_ddsi_serdata_h
     .ddsi_serdata_ops with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_serdata_ops_cdr";

   ddsi_serdata_ops_cdr_nokey : aliased constant CycloneDDS.Low_Level
     .dds_ddsi_ddsi_serdata_h
     .ddsi_serdata_ops with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_serdata_ops_cdr_nokey";

   function ddsi_serdatapool_new return access serdatapool with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_serdatapool_new";

   procedure ddsi_serdatapool_free (pool : access serdatapool) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_serdatapool_free";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h;
