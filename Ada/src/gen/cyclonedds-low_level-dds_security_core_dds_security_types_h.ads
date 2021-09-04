pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_security_dds_security_api_types_h;


package CycloneDDS.Low_Level.dds_security_core_dds_security_types_h is

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

   type DDS_Security_CryptoTransformKind is array (0 .. 3) of aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_octet;  -- /usr/gnat/include/dds/security/core/dds_security_types.h:18

   type DDS_Security_CryptoTransformKeyId is array (0 .. 3) of aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_octet;  -- /usr/gnat/include/dds/security/core/dds_security_types.h:19

  -- enumeration for CryptoTransformKind.
  -- * ds_security_assign_CryptoTransformKind function should be used for assigning to CryptoTransformKind
  --  

  -- No encryption, no authentication tag  
  -- No encryption.
  -- One AES128-GMAC authentication tag using the sender_key
  -- Zero or more AES128-GMAC auth. tags with receiver specfic keys  

  -- Authenticated Encryption using AES-128 in Galois Counter Mode
  -- (GCM) using the sender key.
  -- The authentication tag using the sender_key obtained from GCM
  -- Zero or more AES128-GMAC auth. tags with receiver specfic keys  

  -- No encryption.
  -- One AES256-GMAC authentication tag using the sender_key
  -- Zero or more AES256-GMAC auth. tags with receiver specfic keys  

  -- Authenticated Encryption using AES-256 in Galois Counter Mode
  -- (GCM) using the sender key.
  -- The authentication tag using the sender_key obtained from GCM
  -- Zero or more AES256-GMAC auth. tags with receiver specfic keys  

  -- INVALID ENUM 
   subtype DDS_Security_CryptoTransformKind_Enum is unsigned;
   CRYPTO_TRANSFORMATION_KIND_NONE : constant DDS_Security_CryptoTransformKind_Enum := 0;
   CRYPTO_TRANSFORMATION_KIND_AES128_GMAC : constant DDS_Security_CryptoTransformKind_Enum := 1;
   CRYPTO_TRANSFORMATION_KIND_AES128_GCM : constant DDS_Security_CryptoTransformKind_Enum := 2;
   CRYPTO_TRANSFORMATION_KIND_AES256_GMAC : constant DDS_Security_CryptoTransformKind_Enum := 3;
   CRYPTO_TRANSFORMATION_KIND_AES256_GCM : constant DDS_Security_CryptoTransformKind_Enum := 4;
   CRYPTO_TRANSFORMATION_KIND_INVALID : constant DDS_Security_CryptoTransformKind_Enum := 127;  -- /usr/gnat/include/dds/security/core/dds_security_types.h:49

   type DDS_Security_KeyMaterial_AES_GCM_GMAC is record
      transformation_kind : aliased DDS_Security_CryptoTransformKind;  -- /usr/gnat/include/dds/security/core/dds_security_types.h:52
      master_salt : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;  -- /usr/gnat/include/dds/security/core/dds_security_types.h:53
      sender_key_id : aliased DDS_Security_CryptoTransformKeyId;  -- /usr/gnat/include/dds/security/core/dds_security_types.h:54
      master_sender_key : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;  -- /usr/gnat/include/dds/security/core/dds_security_types.h:55
      receiver_specific_key_id : aliased DDS_Security_CryptoTransformKeyId;  -- /usr/gnat/include/dds/security/core/dds_security_types.h:56
      master_receiver_specific_key : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;  -- /usr/gnat/include/dds/security/core/dds_security_types.h:57
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/core/dds_security_types.h:51

  --size shall be 16 or 32 
  --size shall be 16 or 32 
  --size shall be 0, 16 or 32 
   type CryptoTransformIdentifier is record
      transformation_kind : aliased DDS_Security_CryptoTransformKind;  -- /usr/gnat/include/dds/security/core/dds_security_types.h:61
      transformation_key_id : aliased DDS_Security_CryptoTransformKeyId;  -- /usr/gnat/include/dds/security/core/dds_security_types.h:62
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/core/dds_security_types.h:60

  --* temporary address decleration until it is ready in ddsrt  
  -- word length of the platform  
   subtype ddsrt_address is CycloneDDS.Low_Level.stdint_h.uintptr_t;  -- /usr/gnat/include/dds/security/core/dds_security_types.h:66

end CycloneDDS.Low_Level.dds_security_core_dds_security_types_h;
