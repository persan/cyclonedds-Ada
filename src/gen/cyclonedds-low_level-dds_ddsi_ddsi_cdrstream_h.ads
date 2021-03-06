pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with System;
with Interfaces.C.Extensions;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h;

with Interfaces.C.Strings;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_cdrstream_h is

   DDS_OP_MASK : constant :=
     16#ff00_0000#;  --  /usr/gnat/include/dds/ddsi/ddsi_cdrstream.h:71
   DDS_OP_TYPE_MASK : constant :=
     16#00ff_0000#;  --  /usr/gnat/include/dds/ddsi/ddsi_cdrstream.h:72
   DDS_OP_SUBTYPE_MASK : constant :=
     16#0000_ff00#;  --  /usr/gnat/include/dds/ddsi/ddsi_cdrstream.h:73
   DDS_OP_JMP_MASK : constant :=
     16#0000_ffff#;  --  /usr/gnat/include/dds/ddsi/ddsi_cdrstream.h:74
   DDS_OP_FLAGS_MASK : constant :=
     16#0000_00ff#;  --  /usr/gnat/include/dds/ddsi/ddsi_cdrstream.h:75
   DDS_JEQ_TYPE_MASK : constant :=
     16#00ff_0000#;  --  /usr/gnat/include/dds/ddsi/ddsi_cdrstream.h:76
   --  arg-macro: function DDS_OP (o)
   --    return (enum dds_stream_opcode) ((o) and DDS_OP_MASK);
   --  arg-macro: function DDS_OP_TYPE (o)
   --    return (enum dds_stream_typecode) (((o) and DDS_OP_TYPE_MASK) >> 16);
   --  arg-macro: function DDS_OP_SUBTYPE (o)
--    return (enum dds_stream_typecode) (((o) and DDS_OP_SUBTYPE_MASK) >> 8);
   --  arg-macro: function DDS_OP_FLAGS (o)
   --    return (o) and DDS_OP_FLAGS_MASK;
   --  arg-macro: function DDS_OP_ADR_JSR (o)
   --    return (o) and DDS_OP_JMP_MASK;
   --  arg-macro: function DDS_OP_JUMP (o)
   --    return (int16_t) ((o) and DDS_OP_JMP_MASK);
   --  arg-macro: function DDS_OP_ADR_JMP (o)
   --    return (o) >> 16;
   --  arg-macro: function DDS_JEQ_TYPE (o)
   --    return (enum dds_stream_typecode) (((o) and DDS_JEQ_TYPE_MASK) >> 16);

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

   type dds_istream_t is record
      m_buffer : access unsigned_char;
      m_size   : aliased unsigned;
      m_index  : aliased unsigned;
   end record with
      Convention => C_Pass_By_Copy;

      -- Buffer size
      -- Read/write offset from start of buffer
      --  <>subtype dds_istream_t is dds_istream;

   type dds_ostream_t is record
      m_buffer : access unsigned_char;
      m_size   : aliased unsigned;
      m_index  : aliased unsigned;
   end record with
      Convention => C_Pass_By_Copy;

      -- Buffer size
      -- Read/write offset from start of buffer
      --  <>subtype dds_ostream_t is dds_ostream;

   type dds_ostreamBE_t is record
      x : aliased dds_ostream_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_ostreamBE_t is dds_ostreamBE;

   procedure dds_ostream_init (st : access dds_ostream_t; size : unsigned) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_ostream_init";

   procedure dds_ostream_fini (st : access dds_ostream_t) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_ostream_fini";

   procedure dds_ostreamBE_init
     (st : access dds_ostreamBE_t; size : unsigned) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_ostreamBE_init";

   procedure dds_ostreamBE_fini (st : access dds_ostreamBE_t) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_ostreamBE_fini";

   function dds_stream_normalize
     (data   : System.Address; size : unsigned; bswap : Extensions.bool;
      c_type : access constant CycloneDDS.Low_Level
        .dds_ddsi_ddsi_serdata_default_h
        .ddsi_sertype_default;
      just_key : Extensions.bool) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "dds_stream_normalize";

   procedure dds_stream_write_sample
     (os     : access dds_ostream_t; data : System.Address;
      c_type : access constant CycloneDDS.Low_Level
        .dds_ddsi_ddsi_serdata_default_h
        .ddsi_sertype_default) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_stream_write_sample";

   procedure dds_stream_read_sample
     (c_is   : access dds_istream_t; data : System.Address;
      c_type : access constant CycloneDDS.Low_Level
        .dds_ddsi_ddsi_serdata_default_h
        .ddsi_sertype_default) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_stream_read_sample";

   procedure dds_stream_free_sample
     (data : System.Address; ops : access unsigned) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_stream_free_sample";

   function dds_stream_countops (ops : access unsigned) return unsigned with
      Import        => True,
      Convention    => C,
      External_Name => "dds_stream_countops";

   function dds_stream_check_optimize
     (desc : access constant CycloneDDS.Low_Level
        .dds_ddsi_ddsi_serdata_default_h
        .ddsi_sertype_default_desc)
      return unsigned_long with
      Import        => True,
      Convention    => C,
      External_Name => "dds_stream_check_optimize";

   procedure dds_istream_from_serdata_default
     (s : access dds_istream_t;
      d : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h
        .ddsi_serdata_default) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_istream_from_serdata_default";

   procedure dds_ostream_from_serdata_default
     (s : access dds_ostream_t;
      d : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h
        .ddsi_serdata_default) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_ostream_from_serdata_default";

   procedure dds_ostream_add_to_serdata_default
     (s : access dds_ostream_t; d : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_ostream_add_to_serdata_default";

   procedure dds_ostreamBE_from_serdata_default
     (s : access dds_ostreamBE_t;
      d : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h
        .ddsi_serdata_default) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_ostreamBE_from_serdata_default";

   procedure dds_ostreamBE_add_to_serdata_default
     (s : access dds_ostreamBE_t; d : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_ostreamBE_add_to_serdata_default";

   procedure dds_stream_write_key
     (os     : access dds_ostream_t; sample : Interfaces.C.Strings.chars_ptr;
      c_type : access constant CycloneDDS.Low_Level
        .dds_ddsi_ddsi_serdata_default_h
        .ddsi_sertype_default) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_stream_write_key";

   procedure dds_stream_write_keyBE
     (os     : access dds_ostreamBE_t; sample : Interfaces.C.Strings.chars_ptr;
      c_type : access constant CycloneDDS.Low_Level
        .dds_ddsi_ddsi_serdata_default_h
        .ddsi_sertype_default) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_stream_write_keyBE";

   procedure dds_stream_extract_key_from_data
     (c_is   : access dds_istream_t; os : access dds_ostream_t;
      c_type : access constant CycloneDDS.Low_Level
        .dds_ddsi_ddsi_serdata_default_h
        .ddsi_sertype_default) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_stream_extract_key_from_data";

   procedure dds_stream_extract_keyBE_from_data
     (c_is   : access dds_istream_t; os : access dds_ostreamBE_t;
      c_type : access constant CycloneDDS.Low_Level
        .dds_ddsi_ddsi_serdata_default_h
        .ddsi_sertype_default) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_stream_extract_keyBE_from_data";

   procedure dds_stream_extract_keyhash
     (c_is : access dds_istream_t;
      kh   : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h
        .dds_keyhash_t;
      c_type : access constant CycloneDDS.Low_Level
        .dds_ddsi_ddsi_serdata_default_h
        .ddsi_sertype_default;
      just_key : Extensions.bool) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_stream_extract_keyhash";

   procedure dds_stream_read_key
     (c_is   : access dds_istream_t; sample : Interfaces.C.Strings.chars_ptr;
      c_type : access constant CycloneDDS.Low_Level
        .dds_ddsi_ddsi_serdata_default_h
        .ddsi_sertype_default) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_stream_read_key";

   function dds_stream_print_key
     (c_is   : access dds_istream_t;
      c_type : access constant CycloneDDS.Low_Level
        .dds_ddsi_ddsi_serdata_default_h
        .ddsi_sertype_default;
      buf : Interfaces.C.Strings.chars_ptr; size : unsigned_long)
      return unsigned_long with
      Import        => True,
      Convention    => C,
      External_Name => "dds_stream_print_key";

   function dds_stream_print_sample
     (c_is   : access dds_istream_t;
      c_type : access constant CycloneDDS.Low_Level
        .dds_ddsi_ddsi_serdata_default_h
        .ddsi_sertype_default;
      buf : Interfaces.C.Strings.chars_ptr; size : unsigned_long)
      return unsigned_long with
      Import        => True,
      Convention    => C,
      External_Name => "dds_stream_print_sample";

      -- For marshalling op code handling
end CycloneDDS.Low_Level.dds_ddsi_ddsi_cdrstream_h;
