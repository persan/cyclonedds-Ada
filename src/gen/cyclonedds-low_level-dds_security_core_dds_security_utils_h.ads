pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_security_dds_security_api_types_h;
with Interfaces.C.Extensions;
with Interfaces.C.Strings;

with System;
with CycloneDDS.Low_Level.dds_security_core_dds_security_types_h;
with CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;

package CycloneDDS.Low_Level.dds_security_core_dds_security_utils_h is

   --  unsupported macro: DDS_SECURITY_SEQUENCE_INIT {0, 0, NULL}
   --  unsupported macro: DDS_SECURITY_TOKEN_INIT {NULL, DDS_SECURITY_SEQUENCE_INIT, DDS_SECURITY_SEQUENCE_INIT}
   --  unsupported macro: DDS_SECURITY_EXCEPTION_INIT {NULL, 0, 0}
   --  arg-macro: procedure DDS_Security_ParticipantCryptoTokenSeq_alloc ()
   --    DDS_Security_DataHolderSeq_alloc()
   --  arg-macro: procedure DDS_Security_ParticipantCryptoTokenSeq_freebuf (s)
   --    DDS_Security_DataHolderSeq_freebuf(s)
   --  arg-macro: procedure DDS_Security_ParticipantCryptoTokenSeq_free (s)
   --    DDS_Security_DataHolderSeq_free(s)
   --  arg-macro: procedure DDS_Security_ParticipantCryptoTokenSeq_deinit (s)
   --    DDS_Security_DataHolderSeq_deinit(s)
   --  arg-macro: procedure DDS_Security_ParticipantCryptoTokenSeq_copy (d, s)
   --    DDS_Security_DataHolderSeq_copy((d), (s))
   --  arg-macro: procedure DDS_Security_ParticipantCryptoHandleSeq_alloc ()
   --    DDS_Security_HandleSeq_alloc()
--  arg-macro: procedure DDS_Security_ParticipantCryptoHandleSeq_allocbuf (l)
   --    DDS_Security_HandleSeq_allocbuf(l)
   --  arg-macro: procedure DDS_Security_ParticipantCryptoHandleSeq_freebuf (s)
   --    DDS_Security_HandleSeq_freebuf(s)
   --  arg-macro: procedure DDS_Security_ParticipantCryptoHandleSeq_free (s)
   --    DDS_Security_HandleSeq_free(s)
   --  arg-macro: procedure DDS_Security_ParticipantCryptoHandleSeq_deinit (s)
   --    DDS_Security_HandleSeq_deinit(s)
   --  arg-macro: procedure DDS_Security_DatawriterCryptoHandleSeq_alloc ()
   --    DDS_Security_HandleSeq_alloc()
   --  arg-macro: procedure DDS_Security_DatawriterCryptoHandleSeq_allocbuf (l)
   --    DDS_Security_HandleSeq_allocbuf(l)
   --  arg-macro: procedure DDS_Security_DatawriterCryptoHandleSeq_freebuf (s)
   --    DDS_Security_HandleSeq_freebuf(s)
   --  arg-macro: procedure DDS_Security_DatawriterCryptoHandleSeq_free (s)
   --    DDS_Security_HandleSeq_free(s)
   --  arg-macro: procedure DDS_Security_DatawriterCryptoHandleSeq_deinit (s)
   --    DDS_Security_HandleSeq_deinit(s)
   --  arg-macro: procedure DDS_Security_DatareaderCryptoHandleSeq_alloc ()
   --    DDS_Security_HandleSeq_alloc()
   --  arg-macro: procedure DDS_Security_DatareaderCryptoHandleSeq_allocbuf (l)
   --    DDS_Security_HandleSeq_allocbuf(l)
   --  arg-macro: procedure DDS_Security_DatareaderCryptoHandleSeq_freebuf (s)
   --    DDS_Security_HandleSeq_freebuf(s)
   --  arg-macro: procedure DDS_Security_DatareaderCryptoHandleSeq_free (s)
   --    DDS_Security_HandleSeq_free(s)
   --  arg-macro: procedure DDS_Security_DatareaderCryptoHandleSeq_deinit (s)
   --    DDS_Security_HandleSeq_deinit(s)
   --  arg-macro: procedure DDS_Security_CryptoTokenSeq_alloc ()
   --    DDS_Security_DataHolderSeq_alloc()
   --  arg-macro: procedure DDS_Security_CryptoTokenSeq_allocbuf (l)
   --    DDS_Security_DataHolderSeq_allocbuf(l)
   --  arg-macro: procedure DDS_Security_CryptoTokenSeq_freebuf (s)
   --    DDS_Security_DataHolderSeq_freebuf(s)
   --  arg-macro: procedure DDS_Security_CryptoTokenSeq_free (s)
   --    DDS_Security_DataHolderSeq_free(s)
-- * Copyright(c) 2006 to 2019 ADLINK Technology Limited and others
-- *
-- * This program and the accompanying materials are made available under the
-- * terms of the Eclipse Public License v. 2.0 which is available at
-- * http://www.eclipse.org/legal/epl-2.0, or the Eclipse Distribution License
-- * v. 1.0 which is available at
-- * http://www.eclipse.org/org/documents/edl-v10.php.
-- *
-- * SPDX-License-Identifier: EPL-2.0 OR BSD-3-Clause
   --

   subtype DDS_Security_Handle is
     CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
       .DDS_Security_long_long;

   subtype DDS_Security_HandleSeq is
     CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
       .DDS_Security_LongLongSeq_t;

   type DDS_Security_config_item_prefix_t is
     (DDS_SECURITY_CONFIG_ITEM_PREFIX_UNKNOWN,
      DDS_SECURITY_CONFIG_ITEM_PREFIX_FILE,
      DDS_SECURITY_CONFIG_ITEM_PREFIX_DATA,
      DDS_SECURITY_CONFIG_ITEM_PREFIX_PKCS11) with
      Convention => C;

   function DDS_Security_BinaryProperty_alloc
      return access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_BinaryProperty_t with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_BinaryProperty_alloc";

   procedure DDS_Security_BinaryProperty_deinit
     (p : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_BinaryProperty_t) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_BinaryProperty_deinit";

   procedure DDS_Security_BinaryProperty_free
     (p : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_BinaryProperty_t) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_BinaryProperty_free";

   procedure DDS_Security_BinaryProperty_copy
     (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_BinaryProperty_t;
      src : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_BinaryProperty_t) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_BinaryProperty_copy";

   function DDS_Security_BinaryProperty_equal
     (pa : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_BinaryProperty_t;
      pb : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_BinaryProperty_t)
      return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_BinaryProperty_equal";

   procedure DDS_Security_BinaryProperty_set_by_value
     (bp : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_BinaryProperty_t;
      name   : Interfaces.C.Strings.chars_ptr; data : access unsigned_char;
      length : unsigned) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_BinaryProperty_set_by_value";

   procedure DDS_Security_BinaryProperty_set_by_string
     (bp : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_BinaryProperty_t;
      name : Interfaces.C.Strings.chars_ptr;
      data : Interfaces.C.Strings.chars_ptr) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_BinaryProperty_set_by_string";

   procedure DDS_Security_BinaryProperty_set_by_ref
     (bp : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_BinaryProperty_t;
      name   : Interfaces.C.Strings.chars_ptr; data : access unsigned_char;
      length : unsigned) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_BinaryProperty_set_by_ref";

   function DDS_Security_BinaryPropertySeq_alloc
      return access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_BinaryPropertySeq with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_BinaryPropertySeq_alloc";

   function DDS_Security_BinaryPropertySeq_allocbuf
     (len : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_unsigned_long)
      return access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_BinaryProperty_t with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_BinaryPropertySeq_allocbuf";

   procedure DDS_Security_BinaryPropertySeq_deinit
     (seq : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_BinaryPropertySeq) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_BinaryPropertySeq_deinit";

   procedure DDS_Security_BinaryPropertySeq_free
     (seq : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_BinaryPropertySeq) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_BinaryPropertySeq_free";

   function DDS_Security_Property_alloc
      return access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_Property_t with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_Property_alloc";

   procedure DDS_Security_Property_free
     (p : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_Property_t) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_Property_free";

   procedure DDS_Security_Property_deinit
     (p : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_Property_t) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_Property_deinit";

   procedure DDS_Security_Property_copy
     (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_Property_t;
      src : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_Property_t) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_Property_copy";

   function DDS_Security_Property_equal
     (pa : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_Property_t;
      pb : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_Property_t)
      return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_Property_equal";

   function DDS_Security_Property_get_value
     (properties : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_PropertySeq;
      name : Interfaces.C.Strings.chars_ptr)
      return Interfaces.C.Strings.chars_ptr with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_Property_get_value";

   function DDS_Security_PropertySeq_alloc
      return access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_PropertySeq with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_PropertySeq_alloc";

   function DDS_Security_PropertySeq_allocbuf
     (len : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_unsigned_long)
      return access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_Property_t with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_PropertySeq_allocbuf";

   procedure DDS_Security_PropertySeq_freebuf
     (seq : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PropertySeq) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_PropertySeq_freebuf";

   procedure DDS_Security_PropertySeq_free
     (seq : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PropertySeq) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_PropertySeq_free";

   procedure DDS_Security_PropertySeq_deinit
     (seq : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PropertySeq) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_PropertySeq_deinit";

   function DDS_Security_PropertySeq_find_property
     (property_seq : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_PropertySeq;
      name : Interfaces.C.Strings.chars_ptr)
      return access constant CycloneDDS.Low_Level
     .dds_security_dds_security_api_types_h
     .DDS_Security_Property_t with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_PropertySeq_find_property";

   function DDS_Security_DataHolder_alloc
      return access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_DataHolder_t with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_DataHolder_alloc";

   procedure DDS_Security_DataHolder_free
     (holder : access CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_DataHolder_t) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_DataHolder_free";

   procedure DDS_Security_DataHolder_deinit
     (holder : access CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_DataHolder_t) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_DataHolder_deinit";

   procedure DDS_Security_DataHolder_copy
     (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_DataHolder_t;
      src : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_DataHolder_t) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_DataHolder_copy";

   function DDS_Security_DataHolder_equal
     (psa : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_DataHolder_t;
      psb : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_DataHolder_t)
      return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_DataHolder_equal";

   function DDS_Security_DataHolder_find_property
     (holder : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_DataHolder_t;
      name : Interfaces.C.Strings.chars_ptr)
      return access constant CycloneDDS.Low_Level
     .dds_security_dds_security_api_types_h
     .DDS_Security_Property_t with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_DataHolder_find_property";

   function DDS_Security_DataHolder_find_binary_property
     (holder : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_DataHolder_t;
      name : Interfaces.C.Strings.chars_ptr)
      return access constant CycloneDDS.Low_Level
     .dds_security_dds_security_api_types_h
     .DDS_Security_BinaryProperty_t with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_DataHolder_find_binary_property";

   function DDS_Security_DataHolderSeq_alloc
      return access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_DataHolderSeq_t with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_DataHolderSeq_alloc";

   function DDS_Security_DataHolderSeq_allocbuf
     (len : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_unsigned_long)
      return access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_DataHolder_t with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_DataHolderSeq_allocbuf";

   procedure DDS_Security_DataHolderSeq_freebuf
     (seq : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_DataHolderSeq_t) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_DataHolderSeq_freebuf";

   procedure DDS_Security_DataHolderSeq_free
     (seq : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_DataHolderSeq_t) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_DataHolderSeq_free";

   procedure DDS_Security_DataHolderSeq_deinit
     (seq : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_DataHolderSeq_t) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_DataHolderSeq_deinit";

   procedure DDS_Security_DataHolderSeq_copy
     (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_DataHolderSeq_t;
      src : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_DataHolderSeq_t) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_DataHolderSeq_copy";

   function DDS_Security_ParticipantBuiltinTopicData_alloc
      return access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_ParticipantBuiltinTopicData with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_ParticipantBuiltinTopicData_alloc";

   procedure DDS_Security_ParticipantBuiltinTopicData_free
     (data : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_ParticipantBuiltinTopicData) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_ParticipantBuiltinTopicData_free";

   procedure DDS_Security_ParticipantBuiltinTopicData_deinit
     (data : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_ParticipantBuiltinTopicData) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_ParticipantBuiltinTopicData_deinit";

   function DDS_Security_OctetSeq_alloc
      return access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_OctetSeq with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_OctetSeq_alloc";

   function DDS_Security_OctetSeq_allocbuf
     (len : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_unsigned_long)
      return access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_octet with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_OctetSeq_allocbuf";

   procedure DDS_Security_OctetSeq_freebuf
     (seq : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_OctetSeq) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_OctetSeq_freebuf";

   procedure DDS_Security_OctetSeq_free
     (seq : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_OctetSeq) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_OctetSeq_free";

   procedure DDS_Security_OctetSeq_deinit
     (seq : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_OctetSeq) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_OctetSeq_deinit";

   procedure DDS_Security_OctetSeq_copy
     (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_OctetSeq;
      src : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_OctetSeq) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_OctetSeq_copy";

   function DDS_Security_HandleSeq_alloc
      return access DDS_Security_HandleSeq with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_HandleSeq_alloc";

   function DDS_Security_HandleSeq_allocbuf
     (length : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_unsigned_long)
      return access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_long_long with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_HandleSeq_allocbuf";

   procedure DDS_Security_HandleSeq_freebuf
     (seq : access DDS_Security_HandleSeq) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_HandleSeq_freebuf";

   procedure DDS_Security_HandleSeq_free
     (seq : access DDS_Security_HandleSeq) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_HandleSeq_free";

   procedure DDS_Security_HandleSeq_deinit
     (seq : access DDS_Security_HandleSeq) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_HandleSeq_deinit";

   procedure DDS_Security_Exception_vset
     (ex : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException;
      context : Interfaces.C.Strings.chars_ptr; code : int; minor_code : int;
      fmt : Interfaces.C.Strings.chars_ptr; ap : access System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_Exception_vset";

   procedure DDS_Security_Exception_set
     (ex : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException;
      context : Interfaces.C.Strings.chars_ptr; code : int; minor_code : int;
      fmt     : Interfaces.C.Strings
        .chars_ptr  -- , ...
   ) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_Exception_set";

   procedure DDS_Security_Exception_reset
     (ex : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_Exception_reset";

   procedure DDS_Security_Exception_clean
     (ex : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_Exception_clean";

   procedure DDS_Security_PropertyQosPolicy_deinit
     (policy : access CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_PropertyQosPolicy) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_PropertyQosPolicy_deinit";

   procedure DDS_Security_PropertyQosPolicy_free
     (policy : access CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_PropertyQosPolicy) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_PropertyQosPolicy_free";

   procedure DDS_Security_set_token_nil
     (token : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_DataHolder_t) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_set_token_nil";

   procedure DDS_Security_KeyMaterial_AES_GCM_GMAC_deinit
     (key_material : access CycloneDDS.Low_Level
        .dds_security_core_dds_security_types_h
        .DDS_Security_KeyMaterial_AES_GCM_GMAC) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_KeyMaterial_AES_GCM_GMAC_deinit";

   function DDS_Security_basicprotectionkind2transformationkind
     (properties : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_PropertySeq;
      protection : CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h
        .DDS_Security_BasicProtectionKind)
      return CycloneDDS.Low_Level.dds_security_core_dds_security_types_h
     .DDS_Security_CryptoTransformKind_Enum with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_basicprotectionkind2transformationkind";

   function DDS_Security_protectionkind2transformationkind
     (properties : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_PropertySeq;
      protection : CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h
        .DDS_Security_ProtectionKind)
      return CycloneDDS.Low_Level.dds_security_core_dds_security_types_h
     .DDS_Security_CryptoTransformKind_Enum with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_protectionkind2transformationkind";

   function DDS_Security_get_conf_item_type
     (str : Interfaces.C.Strings.chars_ptr; data : System.Address)
      return DDS_Security_config_item_prefix_t with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_get_conf_item_type";

   function DDS_Security_normalize_file
     (filepath : Interfaces.C.Strings.chars_ptr)
      return Interfaces.C.Strings.chars_ptr with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_normalize_file";

   function DDS_Security_parse_xml_date
     (buf : Interfaces.C.Strings.chars_ptr)
      return CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_parse_xml_date";

      -- for DEBUG purposes
   procedure print_binary_debug
     (name : Interfaces.C.Strings.chars_ptr; value : access unsigned_char;
      size : unsigned) with
      Import        => True,
      Convention    => C,
      External_Name => "print_binary_debug";

   procedure print_binary_properties_debug
     (token : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_DataHolder_t) with
      Import        => True,
      Convention    => C,
      External_Name => "print_binary_properties_debug";

end CycloneDDS.Low_Level.dds_security_core_dds_security_utils_h;
