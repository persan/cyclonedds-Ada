pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

package CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h is

   DDS_SECURITY_HANDLE_NIL : constant :=
     (0);  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:38

   DDS_SECURITY_SUCCESS : constant :=
     (0);  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:40
   DDS_SECURITY_FAILED : constant :=
     (-1);  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:41

   DDS_SECURITY_PARTICIPANT_ATTRIBUTES_FLAG_IS_RTPS_PROTECTED : constant :=
     (1);  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:49
   DDS_SECURITY_PARTICIPANT_ATTRIBUTES_FLAG_IS_DISCOVERY_PROTECTED : constant :=
     (2**1);  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:50
   DDS_SECURITY_PARTICIPANT_ATTRIBUTES_FLAG_IS_LIVELINESS_PROTECTED : constant :=
     (2**2);  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:51
   DDS_SECURITY_PARTICIPANT_ATTRIBUTES_FLAG_IS_VALID : constant :=
     (2**31);  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:52

   DDS_SECURITY_PLUGIN_PARTICIPANT_ATTRIBUTES_FLAG_IS_RTPS_ENCRYPTED : constant :=
     (1);  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:54
   DDS_SECURITY_PLUGIN_PARTICIPANT_ATTRIBUTES_FLAG_IS_DISCOVERY_ENCRYPTED : constant :=
     (2**1);  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:55
   DDS_SECURITY_PLUGIN_PARTICIPANT_ATTRIBUTES_FLAG_IS_LIVELINESS_ENCRYPTED : constant :=
     (2**2);  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:56
   DDS_SECURITY_PLUGIN_PARTICIPANT_ATTRIBUTES_FLAG_IS_RTPS_AUTHENTICATED : constant :=
     (2**3);  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:57
   DDS_SECURITY_PLUGIN_PARTICIPANT_ATTRIBUTES_FLAG_IS_DISCOVERY_AUTHENTICATED : constant :=
     (2**4);  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:58
   DDS_SECURITY_PLUGIN_PARTICIPANT_ATTRIBUTES_FLAG_IS_LIVELINESS_AUTHENTICATED : constant :=
     (2**5);  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:59

   DDS_SECURITY_ENDPOINT_ATTRIBUTES_FLAG_IS_READ_PROTECTED : constant :=
     (1);  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:61
   DDS_SECURITY_ENDPOINT_ATTRIBUTES_FLAG_IS_WRITE_PROTECTED : constant :=
     (2**1);  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:62
   DDS_SECURITY_ENDPOINT_ATTRIBUTES_FLAG_IS_DISCOVERY_PROTECTED : constant :=
     (2**2);  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:63
   DDS_SECURITY_ENDPOINT_ATTRIBUTES_FLAG_IS_SUBMESSAGE_PROTECTED : constant :=
     (2**3);  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:64
   DDS_SECURITY_ENDPOINT_ATTRIBUTES_FLAG_IS_PAYLOAD_PROTECTED : constant :=
     (2**4);  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:65
   DDS_SECURITY_ENDPOINT_ATTRIBUTES_FLAG_IS_KEY_PROTECTED : constant :=
     (2**5);  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:66
   DDS_SECURITY_ENDPOINT_ATTRIBUTES_FLAG_IS_LIVELINESS_PROTECTED : constant :=
     (2**6);  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:67
   DDS_SECURITY_ENDPOINT_ATTRIBUTES_FLAG_IS_VALID : constant :=
     (2**31);  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:68

   DDS_SECURITY_PLUGIN_ENDPOINT_ATTRIBUTES_FLAG_IS_SUBMESSAGE_ENCRYPTED : constant :=
     (1);  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:70
   DDS_SECURITY_PLUGIN_ENDPOINT_ATTRIBUTES_FLAG_IS_PAYLOAD_ENCRYPTED : constant :=
     (2**1);  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:71
   DDS_SECURITY_PLUGIN_ENDPOINT_ATTRIBUTES_FLAG_IS_SUBMESSAGE_ORIGIN_AUTHENTICATED : constant :=
     (2**2);  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:72

   DDS_SECURITY_AUTHENTICATION_CHALLENGE_SIZE : constant :=
     32;  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:177

   DDS_SECURITY_MASTER_SALT_SIZE_128 : constant :=
     16;  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:179
   DDS_SECURITY_MASTER_SALT_SIZE_256 : constant :=
     32;  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:180
   DDS_SECURITY_MASTER_SENDER_KEY_SIZE_128 : constant :=
     16;  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:181
   DDS_SECURITY_MASTER_SENDER_KEY_SIZE_256 : constant :=
     32;  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:182
   DDS_SECURITY_MASTER_RECEIVER_SPECIFIC_KEY_SIZE_128 : constant :=
     16;  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:183
   DDS_SECURITY_MASTER_RECEIVER_SPECIFIC_KEY_SIZE_256 : constant :=
     32;  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:184

   DDS_SEC_PROP_PREFIX : aliased constant String :=
     "dds.sec." &
     ASCII.NUL;  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:191
   ORG_ECLIPSE_CYCLONEDDS_SEC_PREFIX : aliased constant String :=
     "org.eclipse.cyclonedds.sec." &
     ASCII
       .NUL;  --  /usr/gnat/include/dds/security/dds_security_api_defs.h:192
   --  unsupported macro: DDS_SEC_PROP_AUTH_LIBRARY_PATH DDS_SEC_PROP_PREFIX "auth.library.path"
   --  unsupported macro: DDS_SEC_PROP_AUTH_LIBRARY_INIT DDS_SEC_PROP_PREFIX "auth.library.init"
   --  unsupported macro: DDS_SEC_PROP_AUTH_LIBRARY_FINALIZE DDS_SEC_PROP_PREFIX "auth.library.finalize"
   --  unsupported macro: DDS_SEC_PROP_CRYPTO_LIBRARY_PATH DDS_SEC_PROP_PREFIX "crypto.library.path"
   --  unsupported macro: DDS_SEC_PROP_CRYPTO_LIBRARY_INIT DDS_SEC_PROP_PREFIX "crypto.library.init"
   --  unsupported macro: DDS_SEC_PROP_CRYPTO_LIBRARY_FINALIZE DDS_SEC_PROP_PREFIX "crypto.library.finalize"
   --  unsupported macro: DDS_SEC_PROP_ACCESS_LIBRARY_PATH DDS_SEC_PROP_PREFIX "access.library.path"
   --  unsupported macro: DDS_SEC_PROP_ACCESS_LIBRARY_INIT DDS_SEC_PROP_PREFIX "access.library.init"
   --  unsupported macro: DDS_SEC_PROP_ACCESS_LIBRARY_FINALIZE DDS_SEC_PROP_PREFIX "access.library.finalize"
   --  unsupported macro: DDS_SEC_PROP_AUTH_IDENTITY_CA DDS_SEC_PROP_PREFIX "auth.identity_ca"
   --  unsupported macro: DDS_SEC_PROP_AUTH_PRIV_KEY DDS_SEC_PROP_PREFIX "auth.private_key"
   --  unsupported macro: DDS_SEC_PROP_AUTH_IDENTITY_CERT DDS_SEC_PROP_PREFIX "auth.identity_certificate"
   --  unsupported macro: DDS_SEC_PROP_AUTH_PASSWORD DDS_SEC_PROP_PREFIX "auth.password"
   --  unsupported macro: ORG_ECLIPSE_CYCLONEDDS_SEC_AUTH_CRL ORG_ECLIPSE_CYCLONEDDS_SEC_PREFIX "auth.crl"
   --  unsupported macro: DDS_SEC_PROP_ACCESS_PERMISSIONS_CA DDS_SEC_PROP_PREFIX "access.permissions_ca"
   --  unsupported macro: DDS_SEC_PROP_ACCESS_GOVERNANCE DDS_SEC_PROP_PREFIX "access.governance"
   --  unsupported macro: DDS_SEC_PROP_ACCESS_PERMISSIONS DDS_SEC_PROP_PREFIX "access.permissions"
   --  unsupported macro: DDS_SEC_PROP_ACCESS_TRUSTED_CA_DIR DDS_SEC_PROP_PREFIX "auth.trusted_ca_dir"
   --  unsupported macro: DDS_SEC_PROP_BUILTIN_ENDPOINT_NAME DDS_SEC_PROP_PREFIX "builtin_endpoint_name"
   --  unsupported macro: DDS_SEC_PROP_CRYPTO_KEYSIZE DDS_SEC_PROP_PREFIX "crypto.keysize"

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

   --*************************************************************************
-- *                                                                        *
-- * Return values.                                                         *
-- *                                                                        *
-- *************************************************************************

   type DDS_Security_ValidationResult_t is
     (DDS_SECURITY_VALIDATION_OK, DDS_SECURITY_VALIDATION_FAILED,
      DDS_SECURITY_VALIDATION_PENDING_RETRY,
      DDS_SECURITY_VALIDATION_PENDING_HANDSHAKE_REQUEST,
      DDS_SECURITY_VALIDATION_PENDING_HANDSHAKE_MESSAGE,
      DDS_SECURITY_VALIDATION_OK_FINAL_MESSAGE) with
      Convention => C;

   --*************************************************************************
-- *                                                                        *
-- * Attribute flags.                                                       *
-- *                                                                        *
-- *************************************************************************

   --*************************************************************************
-- *                                                                        *
-- * Protection types.                                                      *
-- *                                                                        *
-- *************************************************************************

   type DDS_Security_ProtectionKind is
     (DDS_SECURITY_PROTECTION_KIND_ENCRYPT_WITH_ORIGIN_AUTHENTICATION,
      DDS_SECURITY_PROTECTION_KIND_SIGN_WITH_ORIGIN_AUTHENTICATION,
      DDS_SECURITY_PROTECTION_KIND_ENCRYPT, DDS_SECURITY_PROTECTION_KIND_SIGN,
      DDS_SECURITY_PROTECTION_KIND_NONE) with
      Convention => C;

   type DDS_Security_BasicProtectionKind is
     (DDS_SECURITY_BASICPROTECTION_KIND_ENCRYPT,
      DDS_SECURITY_BASICPROTECTION_KIND_SIGN,
      DDS_SECURITY_BASICPROTECTION_KIND_NONE) with
      Convention => C;

   --*************************************************************************
-- *                                                                        *
-- * Submessage categories.                                                 *
-- *                                                                        *
-- *************************************************************************

   type DDS_Security_SecureSubmessageCategory_t is
     (DDS_SECURITY_INFO_SUBMESSAGE, DDS_SECURITY_DATAWRITER_SUBMESSAGE,
      DDS_SECURITY_DATAREADER_SUBMESSAGE) with
      Convention => C;

   --*************************************************************************
-- *                                                                        *
-- * QoS Policies content.                                                  *
-- *                                                                        *
-- *************************************************************************

   type DDS_Security_LivelinessQosPolicyKind is
     (DDS_SECURITY_AUTOMATIC_LIVELINESS_QOS,
      DDS_SECURITY_MANUAL_BY_PARTICIPANT_LIVELINESS_QOS,
      DDS_SECURITY_MANUAL_BY_TOPIC_LIVELINESS_QOS) with
      Convention => C;

   type DDS_Security_ReliabilityQosPolicyKind is
     (DDS_SECURITY_BEST_EFFORT_RELIABILITY_QOS,
      DDS_SECURITY_RELIABLE_RELIABILITY_QOS) with
      Convention => C;

   type DDS_Security_DestinationOrderQosPolicyKind is
     (DDS_SECURITY_BY_RECEPTION_TIMESTAMP_DESTINATIONORDER_QOS,
      DDS_SECURITY_BY_SOURCE_TIMESTAMP_DESTINATIONORDER_QOS) with
      Convention => C;

   type DDS_Security_PresentationQosPolicyAccessScopeKind is
     (DDS_SECURITY_INSTANCE_PRESENTATION_QOS,
      DDS_SECURITY_TOPIC_PRESENTATION_QOS,
      DDS_SECURITY_GROUP_PRESENTATION_QOS) with
      Convention => C;

   type DDS_Security_HistoryQosPolicyKind is
     (DDS_SECURITY_KEEP_LAST_HISTORY_QOS,
      DDS_SECURITY_KEEP_ALL_HISTORY_QOS) with
      Convention => C;

   type DDS_Security_DurabilityQosPolicyKind is
     (DDS_SECURITY_VOLATILE_DURABILITY_QOS,
      DDS_SECURITY_TRANSIENT_LOCAL_DURABILITY_QOS,
      DDS_SECURITY_TRANSIENT_DURABILITY_QOS,
      DDS_SECURITY_PERSISTENT_DURABILITY_QOS) with
      Convention => C;

   type DDS_Security_OwnershipQosPolicyKind is
     (DDS_SECURITY_SHARED_OWNERSHIP_QOS,
      DDS_SECURITY_EXCLUSIVE_OWNERSHIP_QOS) with
      Convention => C;

   --*************************************************************************
-- *                                                                        *
-- * Listener information.                                                  *
-- *                                                                        *
-- *************************************************************************

   type DDS_Security_AuthStatusKind is (DDS_SECURITY_IDENTITY_STATUS) with
      Convention => C;

   --*************************************************************************
-- *                                                                        *
-- * Some byte array sizes.                                                 *
-- *                                                                        *
-- *************************************************************************

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

end CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h;
