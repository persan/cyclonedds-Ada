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

   subtype DDS_Security_short is short;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:28

   subtype DDS_Security_long is int;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:29

   subtype DDS_Security_long_long is long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:30

   subtype DDS_Security_unsigned_short is unsigned_short;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:31

   subtype DDS_Security_unsigned_long is unsigned;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:32

   subtype DDS_Security_unsigned_long_long is unsigned_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:33

   subtype DDS_Security_float is float;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:34

   subtype DDS_Security_double is double;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:35

   subtype DDS_Security_long_double is long_double;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:36

   subtype DDS_Security_char is char;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:37

   subtype DDS_Security_octet is unsigned_char;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:38

   subtype DDS_Security_boolean is unsigned_char;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:39

   type DDS_Security_string is access all DDS_Security_char;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:40

   type DDS_Security_Object is new System.Address;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:41

  -- Sequences  
   type DDS_Security_OctetSeq is record
      u_maximum : aliased DDS_Security_unsigned_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:45
      u_length : aliased DDS_Security_unsigned_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:46
      u_buffer : access DDS_Security_octet;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:47
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:48

   type DDS_Security_StringSeq is record
      u_maximum : aliased DDS_Security_unsigned_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:51
      u_length : aliased DDS_Security_unsigned_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:52
      u_buffer : System.Address;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:53
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:54

   type DDS_Security_LongLongSeq is record
      u_maximum : aliased DDS_Security_unsigned_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:57
      u_length : aliased DDS_Security_unsigned_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:58
      u_buffer : access DDS_Security_long_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:59
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:60

  --*************************************************************************
  -- *                                                                        *
  -- * Simple types.                                                          *
  -- *                                                                        *
  -- ************************************************************************* 

   subtype DDS_Security_IdentityHandle is DDS_Security_long_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:70

   subtype DDS_Security_InstanceHandle is DDS_Security_long_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:71

   subtype DDS_Security_HandshakeHandle is DDS_Security_long_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:72

   subtype DDS_Security_SharedSecretHandle is DDS_Security_long_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:73

   subtype DDS_Security_PermissionsHandle is DDS_Security_long_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:74

   subtype DDS_Security_CryptoHandle is DDS_Security_long_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:75

   subtype DDS_Security_ParticipantCryptoHandle is DDS_Security_long_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:76

   subtype DDS_Security_DatawriterCryptoHandle is DDS_Security_long_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:77

   subtype DDS_Security_DatareaderCryptoHandle is DDS_Security_long_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:78

   subtype DDS_Security_DynamicData is DDS_Security_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:80

  -- Valid values 0 <= id <= 230  
   subtype DDS_Security_DomainId is DDS_Security_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:82

   subtype DDS_Security_Entity is DDS_Security_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:84

   type DDS_Security_BuiltinTopicKey_t is array (0 .. 2) of aliased DDS_Security_unsigned_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:86

   type DDS_Security_GuidPrefix_t is array (0 .. 11) of aliased DDS_Security_octet;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:88

  -- Sequences  
   subtype DDS_Security_CryptoHandleSeq is DDS_Security_LongLongSeq;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:91

   subtype DDS_Security_ParticipantCryptoHandleSeq is DDS_Security_LongLongSeq;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:92

   subtype DDS_Security_DatawriterCryptoHandleSeq is DDS_Security_LongLongSeq;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:93

   subtype DDS_Security_DatareaderCryptoHandleSeq is DDS_Security_LongLongSeq;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:94

  --*************************************************************************
  -- *                                                                        *
  -- * Simple structures.                                                     *
  -- *                                                                        *
  -- ************************************************************************* 

   type DDS_Security_SecurityException is record
      message : DDS_Security_string;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:105
      code : aliased DDS_Security_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:106
      minor_code : aliased DDS_Security_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:107
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:108

   type DDS_Security_EntityId_t_array4260 is array (0 .. 2) of aliased DDS_Security_octet;
   type DDS_Security_EntityId_t is record
      entityKey : aliased DDS_Security_EntityId_t_array4260;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:111
      entityKind : aliased DDS_Security_octet;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:112
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:113

   type DDS_Security_GUID_t is record
      prefix : aliased DDS_Security_GuidPrefix_t;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:116
      entityId : aliased DDS_Security_EntityId_t;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:117
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:118

   type DDS_Security_Duration_t is record
      sec : aliased DDS_Security_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:121
      nanosec : aliased DDS_Security_unsigned_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:122
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:123

  --*************************************************************************
  -- *                                                                        *
  -- * Properties.                                                            *
  -- *                                                                        *
  -- ************************************************************************* 

   type DDS_Security_Property_t is record
      name : DDS_Security_string;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:134
      value : DDS_Security_string;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:135
      propagate : aliased DDS_Security_boolean;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:136
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:137

   type DDS_Security_PropertySeq is record
      u_maximum : aliased DDS_Security_unsigned_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:140
      u_length : aliased DDS_Security_unsigned_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:141
      u_buffer : access DDS_Security_Property_t;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:142
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:143

   type DDS_Security_BinaryProperty_t is record
      name : DDS_Security_string;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:146
      value : aliased DDS_Security_OctetSeq;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:147
      propagate : aliased DDS_Security_boolean;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:148
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:149

   type DDS_Security_BinaryPropertySeq is record
      u_maximum : aliased DDS_Security_unsigned_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:152
      u_length : aliased DDS_Security_unsigned_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:153
      u_buffer : access DDS_Security_BinaryProperty_t;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:154
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:155

  --*************************************************************************
  -- *                                                                        *
  -- * DataTags.                                                              *
  -- *                                                                        *
  -- ************************************************************************* 

   type DDS_Security_Tag is record
      name : DDS_Security_string;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:166
      value : DDS_Security_string;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:167
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:168

   type DDS_Security_TagSeq is record
      u_maximum : aliased DDS_Security_unsigned_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:171
      u_length : aliased DDS_Security_unsigned_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:172
      u_buffer : access DDS_Security_Tag;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:173
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:174

   type DDS_Security_DataTags is record
      tags : aliased DDS_Security_TagSeq;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:177
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:178

  --*************************************************************************
  -- *                                                                        *
  -- * Attributes.                                                            *
  -- *                                                                        *
  -- ************************************************************************* 

   subtype DDS_Security_EndpointSecurityAttributesMask is DDS_Security_unsigned_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:188

   subtype DDS_Security_PluginEndpointSecurityAttributesMask is DDS_Security_unsigned_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:189

   subtype DDS_Security_ParticipantSecurityAttributesMask is DDS_Security_unsigned_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:191

   subtype DDS_Security_PluginParticipantSecurityAttributesMask is DDS_Security_unsigned_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:192

   type DDS_Security_ParticipantSecurityAttributes is record
      allow_unauthenticated_participants : aliased DDS_Security_boolean;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:195
      is_access_protected : aliased DDS_Security_boolean;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:196
      is_rtps_protected : aliased DDS_Security_boolean;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:197
      is_discovery_protected : aliased DDS_Security_boolean;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:198
      is_liveliness_protected : aliased DDS_Security_boolean;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:199
      plugin_participant_attributes : aliased DDS_Security_ParticipantSecurityAttributesMask;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:200
      ac_endpoint_properties : aliased DDS_Security_PropertySeq;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:201
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:202

   type DDS_Security_TopicSecurityAttributes is record
      is_read_protected : aliased DDS_Security_boolean;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:205
      is_write_protected : aliased DDS_Security_boolean;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:206
      is_discovery_protected : aliased DDS_Security_boolean;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:207
      is_liveliness_protected : aliased DDS_Security_boolean;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:208
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:209

   type DDS_Security_EndpointSecurityAttributes is record
      is_read_protected : aliased DDS_Security_boolean;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:212
      is_write_protected : aliased DDS_Security_boolean;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:213
      is_discovery_protected : aliased DDS_Security_boolean;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:214
      is_liveliness_protected : aliased DDS_Security_boolean;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:215
      is_submessage_protected : aliased DDS_Security_boolean;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:216
      is_payload_protected : aliased DDS_Security_boolean;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:217
      is_key_protected : aliased DDS_Security_boolean;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:218
      plugin_endpoint_attributes : aliased DDS_Security_PluginEndpointSecurityAttributesMask;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:219
      ac_endpoint_properties : aliased DDS_Security_PropertySeq;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:220
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:221

   type DDS_Security_ParticipantSecurityInfo is record
      participant_security_attributes : aliased DDS_Security_ParticipantSecurityAttributesMask;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:224
      plugin_participant_security_attributes : aliased DDS_Security_PluginParticipantSecurityAttributesMask;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:225
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:226

   type DDS_Security_EndpointSecurityInfo is record
      endpoint_security_mask : aliased DDS_Security_EndpointSecurityAttributesMask;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:229
      plugin_endpoint_security_mask : aliased DDS_Security_PluginEndpointSecurityAttributesMask;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:230
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:231

  --*************************************************************************
  -- *                                                                        *
  -- * Tokens.                                                                *
  -- *                                                                        *
  -- ************************************************************************* 

   type DDS_Security_DataHolder is record
      class_id : DDS_Security_string;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:242
      properties : aliased DDS_Security_PropertySeq;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:243
      binary_properties : aliased DDS_Security_BinaryPropertySeq;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:244
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:245

   type DDS_Security_DataHolderSeq is record
      u_maximum : aliased DDS_Security_unsigned_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:248
      u_length : aliased DDS_Security_unsigned_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:249
      u_buffer : access DDS_Security_DataHolder;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:250
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:251

   subtype DDS_Security_Token is DDS_Security_DataHolder;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:253

   subtype DDS_Security_MessageToken is DDS_Security_DataHolder;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:254

   subtype DDS_Security_IdentityToken is DDS_Security_DataHolder;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:255

   subtype DDS_Security_PermissionsToken is DDS_Security_DataHolder;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:256

   subtype DDS_Security_IdentityStatusToken is DDS_Security_DataHolder;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:257

   subtype DDS_Security_AuthRequestMessageToken is DDS_Security_DataHolder;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:258

   subtype DDS_Security_HandshakeMessageToken is DDS_Security_DataHolder;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:259

   subtype DDS_Security_AuthenticatedPeerCredentialToken is DDS_Security_DataHolder;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:260

   subtype DDS_Security_PermissionsCredentialToken is DDS_Security_DataHolder;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:261

   subtype DDS_Security_CryptoToken is DDS_Security_DataHolder;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:262

   subtype DDS_Security_ParticipantCryptoToken is DDS_Security_DataHolder;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:263

   subtype DDS_Security_DatawriterCryptoToken is DDS_Security_DataHolder;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:264

   subtype DDS_Security_DatareaderCryptoToken is DDS_Security_DataHolder;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:265

   subtype DDS_Security_CryptoTokenSeq is DDS_Security_DataHolderSeq;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:267

   subtype DDS_Security_ParticipantCryptoTokenSeq is DDS_Security_CryptoTokenSeq;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:269

   subtype DDS_Security_DatareaderCryptoTokenSeq is DDS_Security_CryptoTokenSeq;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:270

   subtype DDS_Security_DatawriterCryptoTokenSeq is DDS_Security_CryptoTokenSeq;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:271

  --*************************************************************************
  -- *                                                                        *
  -- * Policies.                                                              *
  -- *                                                                        *
  -- ************************************************************************* 

   subtype DDS_Security_DataTagQosPolicy is DDS_Security_DataTags;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:281

   type DDS_Security_PropertyQosPolicy is record
      value : aliased DDS_Security_PropertySeq;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:284
      binary_value : aliased DDS_Security_BinaryPropertySeq;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:285
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:286

   type DDS_Security_DurabilityQosPolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h.DDS_Security_DurabilityQosPolicyKind;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:289
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:290

   type DDS_Security_DeadlineQosPolicy is record
      period : aliased DDS_Security_Duration_t;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:293
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:294

   type DDS_Security_LatencyBudgetQosPolicy is record
      duration : aliased DDS_Security_Duration_t;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:297
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:298

   type DDS_Security_OwnershipQosPolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h.DDS_Security_OwnershipQosPolicyKind;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:301
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:302

   type DDS_Security_LivelinessQosPolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h.DDS_Security_LivelinessQosPolicyKind;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:305
      lease_duration : aliased DDS_Security_Duration_t;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:306
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:307

   type DDS_Security_ReliabilityQosPolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h.DDS_Security_ReliabilityQosPolicyKind;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:310
      max_blocking_time : aliased DDS_Security_Duration_t;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:311
      synchronous : aliased DDS_Security_boolean;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:312
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:313

   type DDS_Security_LifespanQosPolicy is record
      duration : aliased DDS_Security_Duration_t;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:316
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:317

   type DDS_Security_DestinationOrderQosPolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h.DDS_Security_DestinationOrderQosPolicyKind;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:320
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:321

   type DDS_Security_UserDataQosPolicy is record
      value : aliased DDS_Security_OctetSeq;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:324
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:325

   type DDS_Security_OwnershipStrengthQosPolicy is record
      value : aliased DDS_Security_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:328
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:329

   type DDS_Security_PresentationQosPolicy is record
      access_scope : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h.DDS_Security_PresentationQosPolicyAccessScopeKind;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:332
      coherent_access : aliased DDS_Security_boolean;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:333
      ordered_access : aliased DDS_Security_boolean;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:334
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:335

   type DDS_Security_PartitionQosPolicy is record
      name : aliased DDS_Security_StringSeq;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:338
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:339

   type DDS_Security_TopicDataQosPolicy is record
      value : aliased DDS_Security_OctetSeq;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:342
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:343

   type DDS_Security_GroupDataQosPolicy is record
      value : aliased DDS_Security_OctetSeq;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:346
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:347

   type DDS_Security_TimeBasedFilterQosPolicy is record
      minimum_separation : aliased DDS_Security_Duration_t;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:350
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:351

   type DDS_Security_DurabilityServiceQosPolicy is record
      service_cleanup_delay : aliased DDS_Security_Duration_t;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:354
      history_kind : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h.DDS_Security_HistoryQosPolicyKind;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:355
      history_depth : aliased DDS_Security_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:356
      max_samples : aliased DDS_Security_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:357
      max_instances : aliased DDS_Security_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:358
      max_samples_per_instance : aliased DDS_Security_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:359
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:360

   type DDS_Security_TransportPriorityQosPolicy is record
      value : aliased DDS_Security_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:363
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:364

   type DDS_Security_HistoryQosPolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h.DDS_Security_HistoryQosPolicyKind;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:367
      depth : aliased DDS_Security_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:368
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:369

   type DDS_Security_ResourceLimitsQosPolicy is record
      max_samples : aliased DDS_Security_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:372
      max_instances : aliased DDS_Security_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:373
      max_samples_per_instance : aliased DDS_Security_long;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:374
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:375

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
      property : aliased DDS_Security_PropertyQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:387
      data_tags : aliased DDS_Security_DataTagQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:388
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:389

   type DDS_Security_PublicationBuiltinTopicDataSecure is record
      key : aliased DDS_Security_BuiltinTopicKey_t;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:400
      participant_key : aliased DDS_Security_BuiltinTopicKey_t;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:401
      topic_name : DDS_Security_string;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:402
      type_name : DDS_Security_string;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:403
      durability : aliased DDS_Security_DurabilityQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:404
      deadline : aliased DDS_Security_DeadlineQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:405
      latency_budget : aliased DDS_Security_LatencyBudgetQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:406
      liveliness : aliased DDS_Security_LivelinessQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:407
      reliability : aliased DDS_Security_ReliabilityQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:408
      lifespan : aliased DDS_Security_LifespanQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:409
      destination_order : aliased DDS_Security_DestinationOrderQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:410
      user_data : aliased DDS_Security_UserDataQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:411
      ownership : aliased DDS_Security_OwnershipQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:412
      ownership_strength : aliased DDS_Security_OwnershipStrengthQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:413
      presentation : aliased DDS_Security_PresentationQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:414
      partition : aliased DDS_Security_PartitionQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:415
      topic_data : aliased DDS_Security_TopicDataQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:416
      group_data : aliased DDS_Security_GroupDataQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:417
      security_info : aliased DDS_Security_EndpointSecurityInfo;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:418
      data_tags : aliased DDS_Security_DataTags;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:419
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:420

   type DDS_Security_SubscriptionBuiltinTopicDataSecure is record
      key : aliased DDS_Security_BuiltinTopicKey_t;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:423
      participant_key : aliased DDS_Security_BuiltinTopicKey_t;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:424
      topic_name : DDS_Security_string;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:425
      type_name : DDS_Security_string;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:426
      durability : aliased DDS_Security_DurabilityQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:427
      deadline : aliased DDS_Security_DeadlineQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:428
      latency_budget : aliased DDS_Security_LatencyBudgetQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:429
      liveliness : aliased DDS_Security_LivelinessQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:430
      reliability : aliased DDS_Security_ReliabilityQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:431
      ownership : aliased DDS_Security_OwnershipQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:432
      destination_order : aliased DDS_Security_DestinationOrderQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:433
      user_data : aliased DDS_Security_UserDataQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:434
      time_based_filter : aliased DDS_Security_TimeBasedFilterQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:435
      presentation : aliased DDS_Security_PresentationQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:436
      partition : aliased DDS_Security_PartitionQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:437
      topic_data : aliased DDS_Security_TopicDataQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:438
      group_data : aliased DDS_Security_GroupDataQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:439
      security_info : aliased DDS_Security_EndpointSecurityInfo;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:440
      data_tags : aliased DDS_Security_DataTags;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:441
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:442

   type DDS_Security_TopicBuiltinTopicData is record
      key : aliased DDS_Security_BuiltinTopicKey_t;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:445
      name : DDS_Security_string;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:446
      type_name : DDS_Security_string;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:447
      durability : aliased DDS_Security_DurabilityQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:448
      durability_service : aliased DDS_Security_DurabilityServiceQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:449
      deadline : aliased DDS_Security_DeadlineQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:450
      latency_budget : aliased DDS_Security_LatencyBudgetQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:451
      liveliness : aliased DDS_Security_LivelinessQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:452
      reliability : aliased DDS_Security_ReliabilityQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:453
      transport_priority : aliased DDS_Security_TransportPriorityQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:454
      lifespan : aliased DDS_Security_LifespanQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:455
      destination_order : aliased DDS_Security_DestinationOrderQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:456
      history : aliased DDS_Security_HistoryQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:457
      resource_limits : aliased DDS_Security_ResourceLimitsQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:458
      ownership : aliased DDS_Security_OwnershipQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:459
      topic_data : aliased DDS_Security_TopicDataQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:460
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:461

   type DDS_Security_ParticipantBuiltinTopicData is record
      key : aliased DDS_Security_BuiltinTopicKey_t;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:464
      user_data : aliased DDS_Security_UserDataQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:465
      identity_token : aliased DDS_Security_IdentityToken;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:466
      permissions_token : aliased DDS_Security_PermissionsToken;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:467
      property : aliased DDS_Security_PropertyQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:468
      security_info : aliased DDS_Security_ParticipantSecurityInfo;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:469
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:470

   type DDS_Security_ParticipantBuiltinTopicDataSecure is record
      key : aliased DDS_Security_BuiltinTopicKey_t;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:473
      user_data : aliased DDS_Security_UserDataQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:474
      identity_token : aliased DDS_Security_IdentityToken;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:475
      permissions_token : aliased DDS_Security_PermissionsToken;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:476
      property : aliased DDS_Security_PropertyQosPolicy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:477
      security_info : aliased DDS_Security_ParticipantSecurityInfo;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:478
      identity_status_token : aliased DDS_Security_IdentityStatusToken;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:479
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_types.h:480

end CycloneDDS.Low_Level.dds_security_dds_security_api_types_h;
