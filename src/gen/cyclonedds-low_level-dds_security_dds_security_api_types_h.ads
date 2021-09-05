pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with System;
with CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h;

package CycloneDDS.Low_Level.dds_security_dds_security_api_types_h is

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
-- * Primitive types.                                                       *
-- *                                                                        *
-- *************************************************************************

   subtype DDS_Security_short is short;

   subtype DDS_Security_long is int;

   subtype DDS_Security_long_long is long;

   subtype DDS_Security_unsigned_short is unsigned_short;

   subtype DDS_Security_unsigned_long is unsigned;

   subtype DDS_Security_unsigned_long_long is unsigned_long;

   subtype DDS_Security_float is float;

   subtype DDS_Security_double is double;

   subtype DDS_Security_long_double is long_double;

   subtype DDS_Security_char is char;

   subtype DDS_Security_octet is unsigned_char;

   subtype DDS_Security_boolean is unsigned_char;

   type DDS_Security_string is access all DDS_Security_char;

   type DDS_Security_Object is new System.Address;

   -- Sequences
   type DDS_Security_OctetSeq is record
      u_maximum : aliased DDS_Security_unsigned_long;
      u_length  : aliased DDS_Security_unsigned_long;
      u_buffer  : access DDS_Security_octet;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_StringSeq is record
      u_maximum : aliased DDS_Security_unsigned_long;
      u_length  : aliased DDS_Security_unsigned_long;
      u_buffer  : System.Address;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_LongLongSeq_t is record
      u_maximum : aliased DDS_Security_unsigned_long;
      u_length  : aliased DDS_Security_unsigned_long;
      u_buffer  : access DDS_Security_long_long;
   end record with
      Convention => C_Pass_By_Copy;

   --*************************************************************************
-- *                                                                        *
-- * Simple types.                                                          *
-- *                                                                        *
-- *************************************************************************

   subtype DDS_Security_IdentityHandle is DDS_Security_long_long;

   subtype DDS_Security_InstanceHandle is DDS_Security_long_long;

   subtype DDS_Security_HandshakeHandle is DDS_Security_long_long;

   subtype DDS_Security_SharedSecretHandle is DDS_Security_long_long;

   subtype DDS_Security_PermissionsHandle is DDS_Security_long_long;

   subtype DDS_Security_CryptoHandle is DDS_Security_long_long;

   subtype DDS_Security_ParticipantCryptoHandle is DDS_Security_long_long;

   subtype DDS_Security_DatawriterCryptoHandle is DDS_Security_long_long;

   subtype DDS_Security_DatareaderCryptoHandle is DDS_Security_long_long;

   subtype DDS_Security_DynamicData is DDS_Security_long;

   -- Valid values 0 <= id <= 230
   subtype DDS_Security_DomainId is DDS_Security_long;

   subtype DDS_Security_Entity is DDS_Security_long;

   type DDS_Security_BuiltinTopicKey_t is
     array (0 .. 2) of aliased DDS_Security_unsigned_long;

   type DDS_Security_GuidPrefix_t is
     array (0 .. 11) of aliased DDS_Security_octet;

   -- Sequences
   subtype DDS_Security_CryptoHandleSeq is DDS_Security_LongLongSeq_t;

   subtype DDS_Security_ParticipantCryptoHandleSeq is
     DDS_Security_LongLongSeq_t;

   subtype DDS_Security_DatawriterCryptoHandleSeq is
     DDS_Security_LongLongSeq_t;

   subtype DDS_Security_DatareaderCryptoHandleSeq is
     DDS_Security_LongLongSeq_t;

   --*************************************************************************
-- *                                                                        *
-- * Simple structures.                                                     *
-- *                                                                        *
-- *************************************************************************

   type DDS_Security_SecurityException is record
      message    : DDS_Security_string;
      code       : aliased DDS_Security_long;
      minor_code : aliased DDS_Security_long;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_EntityId_t_array4260 is
     array (0 .. 2) of aliased DDS_Security_octet;
   type DDS_Security_EntityId_t is record
      entityKey  : aliased DDS_Security_EntityId_t_array4260;
      entityKind : aliased DDS_Security_octet;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_GUID_t is record
      prefix   : aliased DDS_Security_GuidPrefix_t;
      entityId : aliased DDS_Security_EntityId_t;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_Duration_t is record
      sec     : aliased DDS_Security_long;
      nanosec : aliased DDS_Security_unsigned_long;
   end record with
      Convention => C_Pass_By_Copy;

   --*************************************************************************
-- *                                                                        *
-- * Properties.                                                            *
-- *                                                                        *
-- *************************************************************************

   type DDS_Security_Property_t is record
      name      : DDS_Security_string;
      value     : DDS_Security_string;
      propagate : aliased DDS_Security_boolean;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_PropertySeq is record
      u_maximum : aliased DDS_Security_unsigned_long;
      u_length  : aliased DDS_Security_unsigned_long;
      u_buffer  : access DDS_Security_Property_t;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_BinaryProperty_t is record
      name      : DDS_Security_string;
      value     : aliased DDS_Security_OctetSeq;
      propagate : aliased DDS_Security_boolean;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_BinaryPropertySeq is record
      u_maximum : aliased DDS_Security_unsigned_long;
      u_length  : aliased DDS_Security_unsigned_long;
      u_buffer  : access DDS_Security_BinaryProperty_t;
   end record with
      Convention => C_Pass_By_Copy;

   --*************************************************************************
-- *                                                                        *
-- * DataTags.                                                              *
-- *                                                                        *
-- *************************************************************************

   type DDS_Security_Tag is record
      name  : DDS_Security_string;
      value : DDS_Security_string;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_TagSeq is record
      u_maximum : aliased DDS_Security_unsigned_long;
      u_length  : aliased DDS_Security_unsigned_long;
      u_buffer  : access DDS_Security_Tag;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_DataTags_t is record
      tags : aliased DDS_Security_TagSeq;
   end record with
      Convention => C_Pass_By_Copy;

   --*************************************************************************
-- *                                                                        *
-- * Attributes.                                                            *
-- *                                                                        *
-- *************************************************************************

   subtype DDS_Security_EndpointSecurityAttributesMask is
     DDS_Security_unsigned_long;

   subtype DDS_Security_PluginEndpointSecurityAttributesMask is
     DDS_Security_unsigned_long;

   subtype DDS_Security_ParticipantSecurityAttributesMask is
     DDS_Security_unsigned_long;

   subtype DDS_Security_PluginParticipantSecurityAttributesMask is
     DDS_Security_unsigned_long;

   type DDS_Security_ParticipantSecurityAttributes is record
      allow_unauthenticated_participants : aliased DDS_Security_boolean;
      is_access_protected                : aliased DDS_Security_boolean;
      is_rtps_protected                  : aliased DDS_Security_boolean;
      is_discovery_protected             : aliased DDS_Security_boolean;
      is_liveliness_protected            : aliased DDS_Security_boolean;
      plugin_participant_attributes : aliased DDS_Security_ParticipantSecurityAttributesMask;
      ac_endpoint_properties             : aliased DDS_Security_PropertySeq;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_TopicSecurityAttributes is record
      is_read_protected       : aliased DDS_Security_boolean;
      is_write_protected      : aliased DDS_Security_boolean;
      is_discovery_protected  : aliased DDS_Security_boolean;
      is_liveliness_protected : aliased DDS_Security_boolean;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_EndpointSecurityAttributes is record
      is_read_protected          : aliased DDS_Security_boolean;
      is_write_protected         : aliased DDS_Security_boolean;
      is_discovery_protected     : aliased DDS_Security_boolean;
      is_liveliness_protected    : aliased DDS_Security_boolean;
      is_submessage_protected    : aliased DDS_Security_boolean;
      is_payload_protected       : aliased DDS_Security_boolean;
      is_key_protected           : aliased DDS_Security_boolean;
      plugin_endpoint_attributes : aliased DDS_Security_PluginEndpointSecurityAttributesMask;
      ac_endpoint_properties     : aliased DDS_Security_PropertySeq;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_ParticipantSecurityInfo is record
      participant_security_attributes : aliased DDS_Security_ParticipantSecurityAttributesMask;
      plugin_participant_security_attributes : aliased DDS_Security_PluginParticipantSecurityAttributesMask;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_EndpointSecurityInfo is record
      endpoint_security_mask : aliased DDS_Security_EndpointSecurityAttributesMask;
      plugin_endpoint_security_mask : aliased DDS_Security_PluginEndpointSecurityAttributesMask;
   end record with
      Convention => C_Pass_By_Copy;

   --*************************************************************************
-- *                                                                        *
-- * Tokens.                                                                *
-- *                                                                        *
-- *************************************************************************

   type DDS_Security_DataHolder_t is record
      class_id          : DDS_Security_string;
      properties        : aliased DDS_Security_PropertySeq;
      binary_properties : aliased DDS_Security_BinaryPropertySeq;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_DataHolderSeq_t is record
      u_maximum : aliased DDS_Security_unsigned_long;
      u_length  : aliased DDS_Security_unsigned_long;
      u_buffer  : access DDS_Security_DataHolder_t;
   end record with
      Convention => C_Pass_By_Copy;

   subtype DDS_Security_Token is DDS_Security_DataHolder_t;

   subtype DDS_Security_MessageToken is DDS_Security_DataHolder_t;

   subtype DDS_Security_IdentityToken is DDS_Security_DataHolder_t;

   subtype DDS_Security_PermissionsToken is DDS_Security_DataHolder_t;

   subtype DDS_Security_IdentityStatusToken is DDS_Security_DataHolder_t;

   subtype DDS_Security_AuthRequestMessageToken is DDS_Security_DataHolder_t;

   subtype DDS_Security_HandshakeMessageToken is DDS_Security_DataHolder_t;

   subtype DDS_Security_AuthenticatedPeerCredentialToken is
     DDS_Security_DataHolder_t;

   subtype DDS_Security_PermissionsCredentialToken is
     DDS_Security_DataHolder_t;

   subtype DDS_Security_CryptoToken is DDS_Security_DataHolder_t;

   subtype DDS_Security_ParticipantCryptoToken is DDS_Security_DataHolder_t;

   subtype DDS_Security_DatawriterCryptoToken is DDS_Security_DataHolder_t;

   subtype DDS_Security_DatareaderCryptoToken is DDS_Security_DataHolder_t;

   subtype DDS_Security_CryptoTokenSeq is DDS_Security_DataHolderSeq_t;

   subtype DDS_Security_ParticipantCryptoTokenSeq is
     DDS_Security_CryptoTokenSeq;

   subtype DDS_Security_DatareaderCryptoTokenSeq is
     DDS_Security_CryptoTokenSeq;

   subtype DDS_Security_DatawriterCryptoTokenSeq is
     DDS_Security_CryptoTokenSeq;

   --*************************************************************************
-- *                                                                        *
-- * Policies.                                                              *
-- *                                                                        *
-- *************************************************************************

   subtype DDS_Security_DataTagQosPolicy is DDS_Security_DataTags_t;

   type DDS_Security_PropertyQosPolicy is record
      value        : aliased DDS_Security_PropertySeq;
      binary_value : aliased DDS_Security_BinaryPropertySeq;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_DurabilityQosPolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h
        .DDS_Security_DurabilityQosPolicyKind;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_DeadlineQosPolicy is record
      period : aliased DDS_Security_Duration_t;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_LatencyBudgetQosPolicy is record
      duration : aliased DDS_Security_Duration_t;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_OwnershipQosPolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h
        .DDS_Security_OwnershipQosPolicyKind;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_LivelinessQosPolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h
        .DDS_Security_LivelinessQosPolicyKind;
      lease_duration : aliased DDS_Security_Duration_t;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_ReliabilityQosPolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h
        .DDS_Security_ReliabilityQosPolicyKind;
      max_blocking_time : aliased DDS_Security_Duration_t;
      synchronous       : aliased DDS_Security_boolean;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_LifespanQosPolicy is record
      duration : aliased DDS_Security_Duration_t;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_DestinationOrderQosPolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h
        .DDS_Security_DestinationOrderQosPolicyKind;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_UserDataQosPolicy is record
      value : aliased DDS_Security_OctetSeq;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_OwnershipStrengthQosPolicy is record
      value : aliased DDS_Security_long;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_PresentationQosPolicy is record
      access_scope : aliased CycloneDDS.Low_Level
        .dds_security_dds_security_api_defs_h
        .DDS_Security_PresentationQosPolicyAccessScopeKind;
      coherent_access : aliased DDS_Security_boolean;
      ordered_access  : aliased DDS_Security_boolean;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_PartitionQosPolicy is record
      name : aliased DDS_Security_StringSeq;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_TopicDataQosPolicy is record
      value : aliased DDS_Security_OctetSeq;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_GroupDataQosPolicy is record
      value : aliased DDS_Security_OctetSeq;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_TimeBasedFilterQosPolicy is record
      minimum_separation : aliased DDS_Security_Duration_t;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_DurabilityServiceQosPolicy is record
      service_cleanup_delay : aliased DDS_Security_Duration_t;
      history_kind          : aliased CycloneDDS.Low_Level
        .dds_security_dds_security_api_defs_h
        .DDS_Security_HistoryQosPolicyKind;
      history_depth            : aliased DDS_Security_long;
      max_samples              : aliased DDS_Security_long;
      max_instances            : aliased DDS_Security_long;
      max_samples_per_instance : aliased DDS_Security_long;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_TransportPriorityQosPolicy is record
      value : aliased DDS_Security_long;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_HistoryQosPolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h
        .DDS_Security_HistoryQosPolicyKind;
      depth : aliased DDS_Security_long;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_ResourceLimitsQosPolicy is record
      max_samples              : aliased DDS_Security_long;
      max_instances            : aliased DDS_Security_long;
      max_samples_per_instance : aliased DDS_Security_long;
   end record with
      Convention => C_Pass_By_Copy;

   --*************************************************************************
-- *                                                                        *
-- * QoS.                                                                   *
-- *                                                                        *
-- *************************************************************************

-- Existing policies from the DDS specification are ignored.
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

   type DDS_Security_Qos is record
      property  : aliased DDS_Security_PropertyQosPolicy;
      data_tags : aliased DDS_Security_DataTagQosPolicy;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_PublicationBuiltinTopicDataSecure is record
      key                : aliased DDS_Security_BuiltinTopicKey_t;
      participant_key    : aliased DDS_Security_BuiltinTopicKey_t;
      topic_name         : DDS_Security_string;
      type_name          : DDS_Security_string;
      durability         : aliased DDS_Security_DurabilityQosPolicy;
      deadline           : aliased DDS_Security_DeadlineQosPolicy;
      latency_budget     : aliased DDS_Security_LatencyBudgetQosPolicy;
      liveliness         : aliased DDS_Security_LivelinessQosPolicy;
      reliability        : aliased DDS_Security_ReliabilityQosPolicy;
      lifespan           : aliased DDS_Security_LifespanQosPolicy;
      destination_order  : aliased DDS_Security_DestinationOrderQosPolicy;
      user_data          : aliased DDS_Security_UserDataQosPolicy;
      ownership          : aliased DDS_Security_OwnershipQosPolicy;
      ownership_strength : aliased DDS_Security_OwnershipStrengthQosPolicy;
      presentation       : aliased DDS_Security_PresentationQosPolicy;
      partition          : aliased DDS_Security_PartitionQosPolicy;
      topic_data         : aliased DDS_Security_TopicDataQosPolicy;
      group_data         : aliased DDS_Security_GroupDataQosPolicy;
      security_info      : aliased DDS_Security_EndpointSecurityInfo;
      data_tags          : aliased DDS_Security_DataTags_t;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_SubscriptionBuiltinTopicDataSecure is record
      key               : aliased DDS_Security_BuiltinTopicKey_t;
      participant_key   : aliased DDS_Security_BuiltinTopicKey_t;
      topic_name        : DDS_Security_string;
      type_name         : DDS_Security_string;
      durability        : aliased DDS_Security_DurabilityQosPolicy;
      deadline          : aliased DDS_Security_DeadlineQosPolicy;
      latency_budget    : aliased DDS_Security_LatencyBudgetQosPolicy;
      liveliness        : aliased DDS_Security_LivelinessQosPolicy;
      reliability       : aliased DDS_Security_ReliabilityQosPolicy;
      ownership         : aliased DDS_Security_OwnershipQosPolicy;
      destination_order : aliased DDS_Security_DestinationOrderQosPolicy;
      user_data         : aliased DDS_Security_UserDataQosPolicy;
      time_based_filter : aliased DDS_Security_TimeBasedFilterQosPolicy;
      presentation      : aliased DDS_Security_PresentationQosPolicy;
      partition         : aliased DDS_Security_PartitionQosPolicy;
      topic_data        : aliased DDS_Security_TopicDataQosPolicy;
      group_data        : aliased DDS_Security_GroupDataQosPolicy;
      security_info     : aliased DDS_Security_EndpointSecurityInfo;
      data_tags         : aliased DDS_Security_DataTags_t;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_TopicBuiltinTopicData is record
      key                : aliased DDS_Security_BuiltinTopicKey_t;
      name               : DDS_Security_string;
      type_name          : DDS_Security_string;
      durability         : aliased DDS_Security_DurabilityQosPolicy;
      durability_service : aliased DDS_Security_DurabilityServiceQosPolicy;
      deadline           : aliased DDS_Security_DeadlineQosPolicy;
      latency_budget     : aliased DDS_Security_LatencyBudgetQosPolicy;
      liveliness         : aliased DDS_Security_LivelinessQosPolicy;
      reliability        : aliased DDS_Security_ReliabilityQosPolicy;
      transport_priority : aliased DDS_Security_TransportPriorityQosPolicy;
      lifespan           : aliased DDS_Security_LifespanQosPolicy;
      destination_order  : aliased DDS_Security_DestinationOrderQosPolicy;
      history            : aliased DDS_Security_HistoryQosPolicy;
      resource_limits    : aliased DDS_Security_ResourceLimitsQosPolicy;
      ownership          : aliased DDS_Security_OwnershipQosPolicy;
      topic_data         : aliased DDS_Security_TopicDataQosPolicy;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_ParticipantBuiltinTopicData is record
      key               : aliased DDS_Security_BuiltinTopicKey_t;
      user_data         : aliased DDS_Security_UserDataQosPolicy;
      identity_token    : aliased DDS_Security_IdentityToken;
      permissions_token : aliased DDS_Security_PermissionsToken;
      property          : aliased DDS_Security_PropertyQosPolicy;
      security_info     : aliased DDS_Security_ParticipantSecurityInfo;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_ParticipantBuiltinTopicDataSecure is record
      key                   : aliased DDS_Security_BuiltinTopicKey_t;
      user_data             : aliased DDS_Security_UserDataQosPolicy;
      identity_token        : aliased DDS_Security_IdentityToken;
      permissions_token     : aliased DDS_Security_PermissionsToken;
      property              : aliased DDS_Security_PropertyQosPolicy;
      security_info         : aliased DDS_Security_ParticipantSecurityInfo;
      identity_status_token : aliased DDS_Security_IdentityStatusToken;
   end record with
      Convention => C_Pass_By_Copy;

end CycloneDDS.Low_Level.dds_security_dds_security_api_types_h;
