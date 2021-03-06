pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with System;
with CycloneDDS.Low_Level.dds_security_dds_security_api_types_h;

limited with CycloneDDS.Low_Level.dds_security_core_dds_security_types_h;

package CycloneDDS.Low_Level.dds_security_core_dds_security_serialize_h is

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

   type DDS_Security_Serializer_Record is null record;   -- incomplete struct

   type DDS_Security_Serializer is
     access all DDS_Security_Serializer_Record with
      Storage_Size => 0;

   type DDS_Security_Deserializer_record is null record;   -- incomplete struct

   type DDS_Security_Deserializer is
     access all DDS_Security_Deserializer_record with
      Storage_Size => 0;

   function DDS_Security_Serializer_new
     (size : unsigned_long; increment : unsigned_long)
      return DDS_Security_Serializer with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_Serializer_new";

   procedure DDS_Security_Serializer_free
     (serializer : DDS_Security_Serializer) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_Serializer_free";

   procedure DDS_Security_Serializer_buffer
     (ser  : DDS_Security_Serializer; buffer : System.Address;
      size : access unsigned_long) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_Serializer_buffer";

   procedure DDS_Security_Serialize_PropertySeq
     (serializer : DDS_Security_Serializer;
      seq        : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_PropertySeq) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_Serialize_PropertySeq";

   procedure DDS_Security_Serialize_BinaryPropertyArray
     (serializer : DDS_Security_Serializer; properties : System.Address;
      length     : unsigned) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_Serialize_BinaryPropertyArray";

   procedure DDS_Security_Serialize_BinaryPropertySeq
     (serializer : DDS_Security_Serializer;
      seq        : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_BinaryPropertySeq) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_Serialize_BinaryPropertySeq";

   procedure DDS_Security_Serialize_DataHolderSeq
     (serializer : DDS_Security_Serializer;
      seq        : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_DataHolderSeq_t) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_Serialize_DataHolderSeq";

   procedure DDS_Security_Serialize_ParticipantBuiltinTopicData
     (ser   : DDS_Security_Serializer;
      pdata : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_ParticipantBuiltinTopicData) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_Serialize_ParticipantBuiltinTopicData";

   procedure DDS_Security_Serialize_KeyMaterial_AES_GCM_GMAC
     (ser  : DDS_Security_Serializer;
      data : access constant CycloneDDS.Low_Level
        .dds_security_core_dds_security_types_h
        .DDS_Security_KeyMaterial_AES_GCM_GMAC) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_Serialize_KeyMaterial_AES_GCM_GMAC";

   function DDS_Security_Deserializer_new
     (data : access unsigned_char; size : unsigned_long)
      return DDS_Security_Deserializer with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_Deserializer_new";

   procedure DDS_Security_Deserializer_free
     (deserializer : DDS_Security_Deserializer) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_Deserializer_free";

   function DDS_Security_Deserialize_ParticipantBuiltinTopicData
     (deserializer : DDS_Security_Deserializer;
      pdata : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_ParticipantBuiltinTopicData;
      ex : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_Deserialize_ParticipantBuiltinTopicData";

   procedure DDS_Security_BuiltinTopicKeyBE
     (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_unsigned_long;
      src : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_unsigned_long) with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_BuiltinTopicKeyBE";

   function DDS_Security_Deserialize_KeyMaterial_AES_GCM_GMAC
     (dser : DDS_Security_Deserializer;
      data : access CycloneDDS.Low_Level.dds_security_core_dds_security_types_h
        .DDS_Security_KeyMaterial_AES_GCM_GMAC)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "DDS_Security_Deserialize_KeyMaterial_AES_GCM_GMAC";

end CycloneDDS.Low_Level.dds_security_core_dds_security_serialize_h;
