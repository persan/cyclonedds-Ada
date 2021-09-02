pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h;

with Interfaces.C.Strings;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;
with CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h;
with CycloneDDS.Low_Level.dds_ddsi_q_rtps_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h;
with CycloneDDS.Low_Level.dds_ddsi_q_protocol_h;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h;

with Interfaces.C.Extensions;
with System;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
with CycloneDDS.Low_Level.dds_ddsrt_bswap_h;
limited with CycloneDDS.Low_Level.dds_ddsrt_log_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_radmin_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h is

   --  unsupported macro: PP_PROTOCOL_VERSION ((uint64_t)1 << 0)
   --  unsupported macro: PP_VENDORID ((uint64_t)1 << 1)
   --  unsupported macro: PP_UNICAST_LOCATOR ((uint64_t)1 << 2)
   --  unsupported macro: PP_MULTICAST_LOCATOR ((uint64_t)1 << 3)
   --  unsupported macro: PP_DEFAULT_UNICAST_LOCATOR ((uint64_t)1 << 4)
   --  unsupported macro: PP_DEFAULT_MULTICAST_LOCATOR ((uint64_t)1 << 5)
   --  unsupported macro: PP_METATRAFFIC_UNICAST_LOCATOR ((uint64_t)1 << 6)
   --  unsupported macro: PP_METATRAFFIC_MULTICAST_LOCATOR ((uint64_t)1 << 7)
   --  unsupported macro: PP_EXPECTS_INLINE_QOS ((uint64_t)1 << 8)
   --  unsupported macro: PP_PARTICIPANT_MANUAL_LIVELINESS_COUNT ((uint64_t)1 << 9)
   --  unsupported macro: PP_PARTICIPANT_BUILTIN_ENDPOINTS ((uint64_t)1 << 10)
   --  unsupported macro: PP_PARTICIPANT_LEASE_DURATION ((uint64_t)1 << 11)
   --  unsupported macro: PP_CONTENT_FILTER_PROPERTY ((uint64_t)1 << 12)
   --  unsupported macro: PP_PARTICIPANT_GUID ((uint64_t)1 << 13)
   --  unsupported macro: PP_PARTICIPANT_ENTITYID ((uint64_t)1 << 14)
   --  unsupported macro: PP_GROUP_GUID ((uint64_t)1 << 15)
   --  unsupported macro: PP_GROUP_ENTITYID ((uint64_t)1 << 16)
   --  unsupported macro: PP_BUILTIN_ENDPOINT_SET ((uint64_t)1 << 17)
   --  unsupported macro: PP_PROPERTIES ((uint64_t)1 << 18)
   --  unsupported macro: PP_TYPE_MAX_SIZE_SERIALIZED ((uint64_t)1 << 19)
   --  unsupported macro: PP_ENTITY_NAME ((uint64_t)1 << 20)
   --  unsupported macro: PP_KEYHASH ((uint64_t)1 << 21)
   --  unsupported macro: PP_STATUSINFO ((uint64_t)1 << 22)
   --  unsupported macro: PP_ORIGINAL_WRITER_INFO ((uint64_t)1 << 23)
   --  unsupported macro: PP_ENDPOINT_GUID ((uint64_t)1 << 24)
   --  unsupported macro: PP_ADLINK_PARTICIPANT_VERSION_INFO ((uint64_t)1 << 26)
   --  unsupported macro: PP_ADLINK_TYPE_DESCRIPTION ((uint64_t)1 << 27)
   --  unsupported macro: PP_COHERENT_SET ((uint64_t)1 << 28)
   --  unsupported macro: PP_READER_FAVOURS_SSM ((uint64_t)1 << 29)
   --  unsupported macro: PP_DOMAIN_ID ((uint64_t)1 << 30)
   --  unsupported macro: PP_DOMAIN_TAG ((uint64_t)1 << 31)
   --  unsupported macro: PP_IDENTITY_TOKEN ((uint64_t)1 << 32)
   --  unsupported macro: PP_PERMISSIONS_TOKEN ((uint64_t)1 << 33)
   --  unsupported macro: PP_ENDPOINT_SECURITY_INFO ((uint64_t)1 << 34)
   --  unsupported macro: PP_PARTICIPANT_SECURITY_INFO ((uint64_t)1 << 35)
   --  unsupported macro: PP_IDENTITY_STATUS_TOKEN ((uint64_t)1 << 36)
   --  unsupported macro: PP_DATA_TAGS ((uint64_t)1 << 37)
   --  unsupported macro: PP_CYCLONE_RECEIVE_BUFFER_SIZE ((uint64_t)1 << 38)
   --  unsupported macro: PP_CYCLONE_TOPIC_GUID ((uint64_t)1 << 39)
   --  unsupported macro: PP_CYCLONE_REQUESTS_KEYHASH ((uint64_t)1 << 40)
   --  unsupported macro: PP_CYCLONE_REDUNDANT_NETWORKING ((uint64_t)1 << 41)
   --  unsupported macro: PP_INCOMPATIBLE ((uint64_t)1 << 63)
   NN_ADLINK_PARTICIPANT_VERSION_INFO_FIXED_CDRSIZE : constant := (24);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:77

   NN_ADLINK_FL_KERNEL_SEQUENCE_NUMBER : constant := (2 ** 0);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:79
   NN_ADLINK_FL_DISCOVERY_INCLUDES_GID : constant := (2 ** 1);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:80
   NN_ADLINK_FL_PTBES_FIXED_0 : constant := (2 ** 2);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:81
   NN_ADLINK_FL_DDSI2_PARTICIPANT_FLAG : constant := (2 ** 3);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:82
   NN_ADLINK_FL_PARTICIPANT_IS_DDSI2 : constant := (2 ** 4);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:83
   NN_ADLINK_FL_MINIMAL_BES_MODE : constant := (2 ** 5);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:84
   NN_ADLINK_FL_SUPPORTS_STATUSINFOX : constant := (2 ** 5);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:85

   NN_ENDPOINT_SECURITY_ATTRIBUTES_FLAG_IS_READ_PROTECTED : constant := (2 ** 0);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:153
   NN_ENDPOINT_SECURITY_ATTRIBUTES_FLAG_IS_WRITE_PROTECTED : constant := (2 ** 1);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:154
   NN_ENDPOINT_SECURITY_ATTRIBUTES_FLAG_IS_DISCOVERY_PROTECTED : constant := (2 ** 2);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:155
   NN_ENDPOINT_SECURITY_ATTRIBUTES_FLAG_IS_SUBMESSAGE_PROTECTED : constant := (2 ** 3);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:156
   NN_ENDPOINT_SECURITY_ATTRIBUTES_FLAG_IS_PAYLOAD_PROTECTED : constant := (2 ** 4);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:157
   NN_ENDPOINT_SECURITY_ATTRIBUTES_FLAG_IS_KEY_PROTECTED : constant := (2 ** 5);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:158
   NN_ENDPOINT_SECURITY_ATTRIBUTES_FLAG_IS_LIVELINESS_PROTECTED : constant := (2 ** 6);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:159
   NN_ENDPOINT_SECURITY_ATTRIBUTES_FLAG_IS_VALID : constant := (2 ** 31);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:160

   NN_PLUGIN_ENDPOINT_SECURITY_ATTRIBUTES_FLAG_IS_SUBMESSAGE_ENCRYPTED : constant := (2 ** 0);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:162
   NN_PLUGIN_ENDPOINT_SECURITY_ATTRIBUTES_FLAG_IS_PAYLOAD_ENCRYPTED : constant := (2 ** 1);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:163
   NN_PLUGIN_ENDPOINT_SECURITY_ATTRIBUTES_FLAG_IS_SUBMESSAGE_ORIGIN_AUTHENTICATED : constant := (2 ** 2);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:164

   NN_PARTICIPANT_SECURITY_ATTRIBUTES_FLAG_IS_RTPS_PROTECTED : constant := (2 ** 0);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:166
   NN_PARTICIPANT_SECURITY_ATTRIBUTES_FLAG_IS_DISCOVERY_PROTECTED : constant := (2 ** 1);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:167
   NN_PARTICIPANT_SECURITY_ATTRIBUTES_FLAG_IS_LIVELINESS_PROTECTED : constant := (2 ** 2);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:168
   NN_PARTICIPANT_SECURITY_ATTRIBUTES_FLAG_IS_VALID : constant := (2 ** 31);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:169

   NN_PLUGIN_PARTICIPANT_SECURITY_ATTRIBUTES_FLAG_IS_RTPS_ENCRYPTED : constant := (2 ** 0);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:171
   NN_PLUGIN_PARTICIPANT_SECURITY_ATTRIBUTES_FLAG_IS_DISCOVERY_ENCRYPTED : constant := (2 ** 1);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:172
   NN_PLUGIN_PARTICIPANT_SECURITY_ATTRIBUTES_FLAG_IS_LIVELINESS_ENCRYPTED : constant := (2 ** 2);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:173
   NN_PLUGIN_PARTICIPANT_SECURITY_ATTRIBUTES_FLAG_IS_RTPS_AUTHENTICATED : constant := (2 ** 3);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:174
   NN_PLUGIN_PARTICIPANT_SECURITY_ATTRIBUTES_FLAG_IS_DISCOVERY_AUTHENTICATED : constant := (2 ** 4);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:175
   NN_PLUGIN_PARTICIPANT_SECURITY_ATTRIBUTES_FLAG_IS_LIVELINESS_AUTHENTICATED : constant := (2 ** 5);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:176

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

  -- FIXME: eliminate  
  -- Security extensions.  
  -- Other stuff  
  -- Set for unrecognized parameters that are in the reserved space or
  --   in our own vendor-specific space that have the
  --   PID_UNRECOGNIZED_INCOMPATIBLE_FLAG set (see DDSI 2.1 9.6.2.2.1)  

  -- SUPPORTS_STATUSINFOX: when set, also means any combination of
  --   write/unregister/dispose supported  

  -- For locators one could patch the received message data to create
  --   singly-linked lists (parameter header -> offset of next entry in
  --   list relative to current), allowing aliasing of the data. But that
  --   requires modifying the data. For string sequences the length does
  --   the same thing.  

   type nn_locators_one;
   type nn_locators_one is record
      next : access nn_locators_one;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:95
      loc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:96
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:94

   type nn_locators is record
      n : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:100
      first : access nn_locators_one;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:101
      last : access nn_locators_one;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:102
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:99

   subtype nn_locators_t is nn_locators;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:103

   subtype nn_ipv4address_t is unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:105

   subtype nn_port_t is unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:107

   type nn_tag is record
      name : Interfaces.C.Strings.chars_ptr;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:111
      value : Interfaces.C.Strings.chars_ptr;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:112
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:110

   subtype nn_tag_t is nn_tag;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:113

   type nn_tagseq is record
      n : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:116
      tags : access nn_tag_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:117
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:115

   subtype nn_tagseq_t is nn_tagseq;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:118

   type nn_datatags is record
      tags : aliased nn_tagseq_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:121
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:120

   subtype nn_datatags_t is nn_datatags;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:122

  -- default is false  
   type nn_reader_favours_ssm is record
      state : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:127
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:126

   subtype nn_reader_favours_ssm_t is nn_reader_favours_ssm;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:128

   type nn_dataholder is record
      class_id : Interfaces.C.Strings.chars_ptr;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:134
      properties : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_propertyseq_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:135
      binary_properties : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_binarypropertyseq_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:136
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:132

   subtype nn_dataholder_t is nn_dataholder;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:137

   type nn_dataholderseq is record
      n : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:140
      tags : access nn_dataholder_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:141
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:139

   subtype nn_dataholderseq_t is nn_dataholderseq;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:142

   subtype nn_token_t is nn_dataholder_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:144

  -- Used for both nn_participant_security_info and nn_endpoint_security_info.  
   type nn_security_info is record
      security_attributes : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:149
      plugin_security_attributes : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:150
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:147

   subtype nn_security_info_t is nn_security_info;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:151

   type anon5004_array4081 is array (0 .. 2) of aliased unsigned;
   type nn_adlink_participant_version_info is record
      version : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:184
      flags : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:185
      unused : aliased anon5004_array4081;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:186
      internals : Interfaces.C.Strings.chars_ptr;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:187
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:182

   subtype nn_adlink_participant_version_info_t is nn_adlink_participant_version_info;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:188

   type ddsi_plist is record
      present : aliased unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:191
      c_aliased : aliased unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:192
      qos : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:194
      protocol_version : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.nn_protocol_version_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:196
      vendorid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:197
      unicast_locators : aliased nn_locators_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:198
      multicast_locators : aliased nn_locators_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:199
      default_unicast_locators : aliased nn_locators_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:200
      default_multicast_locators : aliased nn_locators_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:201
      metatraffic_unicast_locators : aliased nn_locators_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:202
      metatraffic_multicast_locators : aliased nn_locators_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:203
      expects_inline_qos : aliased unsigned_char;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:205
      participant_manual_liveliness_count : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_count_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:206
      participant_builtin_endpoints : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:207
      participant_lease_duration : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:208
      participant_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:210
      endpoint_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:211
      group_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:212
      topic_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:213
      builtin_endpoint_set : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:218
      entity_name : Interfaces.C.Strings.chars_ptr;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:220
      keyhash : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h.ddsi_keyhash_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:221
      statusinfo : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:222
      adlink_participant_version_info : aliased nn_adlink_participant_version_info_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:223
      type_description : Interfaces.C.Strings.chars_ptr;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:224
      coherent_set_seqno : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_sequence_number_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:225
      identity_token : aliased nn_token_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:227
      permissions_token : aliased nn_token_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:228
      endpoint_security_info : aliased nn_security_info_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:229
      participant_security_info : aliased nn_security_info_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:230
      identity_status_token : aliased nn_token_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:231
      data_tags : aliased nn_datatags_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:232
      reader_favours_ssm : aliased nn_reader_favours_ssm_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:235
      domain_id : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:237
      domain_tag : Interfaces.C.Strings.chars_ptr;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:238
      cyclone_receive_buffer_size : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:239
      cyclone_requests_keyhash : aliased unsigned_char;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:240
      cyclone_redundant_networking : aliased unsigned_char;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:241
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:190

  -- nn_content_filter_property_t content_filter_property;  
  -- int type_max_size_serialized;  
   subtype ddsi_plist_t is ddsi_plist;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:242

  --* 
  --*< input protocol version  
   type ddsi_plist_src is record
      protocol_version : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.nn_protocol_version_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:248
      vendorid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:249
      encoding : aliased int;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:250
      buf : access unsigned_char;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:251
      bufsz : aliased unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:252
      strict : aliased Extensions.bool;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:253
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:247

  --*< vendor code for input  
  --*< PL_CDR_LE or PL_CDR_BE  
  --*< input buffer  
  --*< size of input buffer  
  --*< whether to be strict in checking  
   subtype ddsi_plist_src_t is ddsi_plist_src;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:254

   ddsi_default_plist_participant : aliased constant ddsi_plist_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_default_plist_participant";

  --*
  -- * @brief Initialize global parameter-list parsing indices.
  -- *
  -- * These indices are derived from compile-time constant tables.  This only does the work
  -- * once; ideally it would be done at compile time instead.
  --  

   procedure ddsi_plist_init_tables  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_init_tables";

  --*
  -- * @brief Initialize a ddsi_plist_t as an empty object
  -- *
  -- * In principle, this only clears the "present" and "aliased" bitmasks.  A debug build
  -- * additionally initializes all other bytes to 0x55.
  -- *
  -- * @param[out] dest  plist_t to be initialized.
  --  

   procedure ddsi_plist_init_empty (dest : access ddsi_plist_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:274
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_init_empty";

  --*
  -- * @brief Extend "a" with selected entries present in "b"
  -- *
  -- * This copies into "a" any entries present in "b" that are included in "pmask" and
  -- * "qmask" and missing in "a".  It doesn't touch any entries already present in "a".
  -- * Calling this on an empty "a" with all bits set in "pmask" and "qmask" all is equivalent
  -- * to copying "b" into "a"; calling this with "pmask" and "qmask" both 0 copies nothing.
  -- *
  -- * @param[in,out] a       ddsi_plist_t to be extended
  -- * @param[in]     b       ddsi_plist_t from which to copy entries
  -- * @param[in]     pmask   subset of non-QoS part of b (if PP_X is set, include X)
  -- * @param[in]     qmask   subset of QoS part of b (if QP_X is set, include X)
  --  

   procedure ddsi_plist_mergein_missing
     (a : access ddsi_plist_t;
      b : access constant ddsi_plist_t;
      pmask : unsigned_long;
      qmask : unsigned_long)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:289
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_mergein_missing";

  --*
  -- * @brief Copy "src" to "dst"
  -- *
  -- * @param[out]    dst     destination, any contents are overwritten
  -- * @param[in]     src     source ddsi_plist_t
  --  

   procedure ddsi_plist_copy (dst : access ddsi_plist_t; src : access constant ddsi_plist_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_copy";

  --*
  -- * @brief Duplicate "src"
  -- *
  -- * @param[in]     src     ddsi_plist_t to be duplicated
  -- *
  -- * @returns a new (allocated using ddsrt_malloc) ddsi_plist_t containing a copy of "src".
  --  

   function ddsi_plist_dup (src : access constant ddsi_plist_t) return access ddsi_plist_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:306
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_dup";

  --*
  -- * @brief Initialize an ddsi_plist_t from a PL_CDR_{LE,BE} paylaod.
  -- *
  -- * @param[in]  pwanted
  -- *               PP_... flags indicating which non-QoS parameters are of interest, treated as
  -- *               a hint.  Parameters in the input that are outside the mask may or may not be
  -- *               ignored.
  -- * @param[in]  qwanted
  -- *               QP_... flags indicating which QoS settings are of interest, and is treated as
  -- *               a hint.  Parameters in the input that are outside the mask may or may not be
  -- *               ignored.
  -- * @param[in]  src
  -- *               Serialized payload to be parsed, validated and copied into dest
  -- *               - protocol_version is the version protocol version according to which the list
  -- *                 should be parsed
  -- *               - vendorid is the vendor id code for the source of the parameter list (for
  -- *                 handling vendor-specific parameters and compatibility workarounds)
  -- *               - encoding is PL_CDR_LE or PL_CDR_BE
  -- *               - buf is a pointer to the first parameter header
  -- *               - bufsz is the size in bytes of the input buffer
  -- * @param[in]  gv
  -- *               Global context, used for locator kind lookups and tracing
  -- * @param[out] dest
  -- *               Filled with the recognized parameters in the input if successful, otherwise
  -- *               initialized to an empty parameter list.  Where possible, pointers alias the
  -- *               input (indicated by the "aliased" bits in the plist/xqos structures), but
  -- *               some things cannot be aliased (e.g., the array of pointers to strings for a
  -- *               sequence of strings).
  -- *               Generally, ddsi_plist_fini should be called when done with the parameter list,
  -- *               even when ddsi_plist_unlias or ddsi_xqos_unlias hasn't been called.
  -- * @param[out] nextafterplist
  -- *               If non-NULL, *nextafterplist is set to the first byte following the parameter
  -- *               list sentinel on successful parse, or to NULL on failure
  -- *
  -- * @returns A dds_return_t indicating success or failure.
  -- *
  -- * @retval DDS_RETCODE_OK
  -- *               All parameters valid (or ignored), dest and *nextafterplist have been set
  -- *               accordingly.
  -- * @retval DDS_INCONSISTENT_POLICY
  -- *               All individual settings are valid, but there are inconsistencies between
  -- *               dependent settings.
  -- * @retval DDS_RETCODE_BAD_PARAMETER
  -- *               Input contained invalid data; dest is cleared, *nextafterplist is NULL.
  -- * @retval DDS_RETCODE_UNSUPPORTED
  -- *               Input contained an unrecognized parameter with the "incompatible-if-unknown"
  -- *               flag set; dest is cleared, *nextafterplist is NULL.
  --  

   function ddsi_plist_init_frommsg
     (dest : access ddsi_plist_t;
      nextafterplist : System.Address;
      pwanted : unsigned_long;
      qwanted : unsigned_long;
      src : access constant ddsi_plist_src_t;
      gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:356
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_init_frommsg";

  --*
  -- * @brief Free memory owned by "ps"
  -- *
  -- * A ddsi_plist_t may own other allocated blocks of memory, depending on which fields are
  -- * set, their types and whether they are marked as "aliased".  This function releases any
  -- * such memory owned by "ps", but not "ps" itself.  Afterward, the contents of "ps" is
  -- * undefined and must not be used again without initialising it (either via
  -- * `ddsi_plist_init_empty`, `ddsi_plist_init_frommsg` or `ddsi_plist_copy`.
  -- *
  -- * @param[in] ps   ddsi_plist_t for which to free memory
  --  

   procedure ddsi_plist_fini (ps : access ddsi_plist_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:369
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_fini";

  --*
  -- * @brief Free memory owned by "plist" for a subset of the entries
  -- *
  -- * A ddsi_plist_t may own other allocated blocks of memory, depending on which fields are
  -- * set, their types and whether they are marked as "aliased".  This function releases any
  -- * such memory owned by "plist" for entries included in "pmask" and "qmask".  The
  -- * "present" and "aliased" bits are cleared accordingly.
  -- *
  -- * @param[in,out] plist  ddsi_plist_t for which to free memory
  -- * @param[in]     pmask  subset of non-QoS part of b (if PP_X is set, free X if present)
  -- * @param[in]     qmask  subset of QoS part of b (if QP_X is set, free X if present)
  --  

   procedure ddsi_plist_fini_mask
     (plist : access ddsi_plist_t;
      pmask : unsigned_long;
      qmask : unsigned_long)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:383
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_fini_mask";

  --*
  -- * @brief Replace any memory "plist" aliases by copies it owns
  -- *
  -- * A ddsi_plist_t may can reference other memory without owning it.  This functions allows
  -- * one to replace any such aliased memory by copies, allowing one to free the original
  -- * copy.
  -- *
  -- * @param[in,out] plist  ddsi_plist_t for which to replace all aliased memory by owned
  -- *                       copies
  --  

   procedure ddsi_plist_unalias (plist : access ddsi_plist_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:395
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_unalias";

  --*
  -- * @brief Add selected entries in "ps" to a message in native endianness.
  -- *
  -- * This functions appends to "m" a serialized copy of the the entries selected by
  -- * "pwanted"/"qwanted" and present in "ps".  Each copy is preceded by a 4-byte header with
  -- * a parameter id and length (conform the PL_CDR representation).  It does *not* add a
  -- * sentinel to allow adding additional data to the parameter list.  A sentinel can be
  -- * added using `nn_xmsg_addpar_sentinel`.
  -- *
  -- * @param[in,out] m        message to append the parameters to
  -- * @param[in]     ps       source
  -- * @param[in]     pwanted  subset of non-QoS part of ps (if PP_X is set, add X if present)
  -- * @param[in]     qwanted  subset of QoS part of ps (if QP_X is set, add X if present)
  --  

   procedure ddsi_plist_addtomsg
     (m : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg;
      ps : access constant ddsi_plist_t;
      pwanted : unsigned_long;
      qwanted : unsigned_long)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:411
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_addtomsg";

  --*
  -- * @brief Add selected entries in "ps" to a message with selected endianness.
  -- *
  -- * This functions appends to "m" a serialized copy of the the entries selected by
  -- * "pwanted"/"qwanted" and present in "ps".  Each copy is preceded by a 4-byte header with
  -- * a parameter id and length (conform the PL_CDR representation).  It does *not* add a
  -- * sentinel to allow adding additional data to the parameter list.  A sentinel can be
  -- * added using `nn_xmsg_addpar_sentinel`.
  -- *
  -- * @param[in,out] m        message to append the parameters to
  -- * @param[in]     ps       source
  -- * @param[in]     pwanted  subset of non-QoS part of ps (if PP_X is set, add X if present)
  -- * @param[in]     qwanted  subset of QoS part of ps (if QP_X is set, add X if present)
  -- * @param[in]     bo       byte order
  --  

   procedure ddsi_plist_addtomsg_bo
     (m : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg;
      ps : access constant ddsi_plist_t;
      pwanted : unsigned_long;
      qwanted : unsigned_long;
      bo : CycloneDDS.Low_Level.dds_ddsrt_bswap_h.ddsrt_byte_order_selector)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:428
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_addtomsg_bo";

  --*
  -- * @brief Determine the set of entries in which "x" differs from "y"
  -- *
  -- * This computes the entries set in "x" but not set in "y", not set in "x" but set in "y",
  -- * or set in both "x" and "y" but to a different value.  It returns this set reduced to
  -- * only those included in "pmask"/"qmask", that is, if bit X is clear in "pmask", bit X
  -- * will be clear in "pdelta", etc.
  -- *
  -- * @param[out] pdelta    non-QoS entries that are different and not masked out
  -- * @param[out] qdelta    QoS entries that are different and not masked out
  -- * @param[in]  x         one of the two plists to compare
  -- * @param[in]  y         other plist to compare
  -- * @param[in]  pmask     subset of non-QoS part to be compared
  -- * @param[in]  qmask     subset of QoS part to be compared
  --  

   procedure ddsi_plist_delta
     (pdelta : access unsigned_long;
      qdelta : access unsigned_long;
      x : access constant ddsi_plist_t;
      y : access constant ddsi_plist_t;
      pmask : unsigned_long;
      qmask : unsigned_long)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:445
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_delta";

  --*
  -- * @brief Formats plist using `ddsi_plist_print` and writes it to the trace.
  -- *
  -- * @param[in] cat        log category to use
  -- * @param[in] logcfg     logging configuration
  -- * @param[in] plist      parameter list to be logged
  --  

   procedure ddsi_plist_log
     (cat : unsigned;
      logcfg : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h.ddsrt_log_cfg;
      plist : access constant ddsi_plist_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:454
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_log";

  --*
  -- * @brief Formats plist into a buffer
  -- *
  -- * The representation is somewhat cryptic as all enumerated types are dumped as numbers
  -- * and timestamps are durations as nanoseconds with "infinite" represented as
  -- * 9223372036854775807 (INT64_MAX).
  -- *
  -- * @param[out] buf       buffer to store the formatted representation in
  -- * @param[in]  bufsize   size of buffer, if > 0, there will be a terminating 0 in buf on
  -- *                       return
  -- * @param[in]  plist     parameter list to be formatted as a string
  -- *
  -- * @returns number of bytes written to buf, excluding a terminating 0.
  --  

   function ddsi_plist_print
     (buf : Interfaces.C.Strings.chars_ptr;
      bufsize : unsigned_long;
      plist : access constant ddsi_plist_t) return unsigned_long  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:470
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_print";

  --*
  -- * @brief Scan a PL_CDR-serialized parameter list, checking structure and copying some information to "dest".
  -- *
  -- * This checks that the serialized data is structured correctly (proper aligned headers,
  -- * declared lengths within bounds, a sentinel at the end).  It sets the `statusinfo` of
  -- * `dest` to the least significant two bits (UNREGISTER and DISPOSE) of a status info
  -- * parameter if present, else to 0.  A statusinfo parameter that is too short (less than 4
  -- * bytes) is treated as an invalid input.
  -- *
  -- * It sets the `complex_qos` flag if it encounters any parameter other than a statusinfo
  -- * limited to those two bits, keyhash or padding, and clears it otherwise.
  -- *
  -- * It clears the `bswap` flag in `dest` if the input is in native endianness, and sets it
  -- * otherwise.
  -- *
  -- * @param[out] dest     internal sample info of which some fields will be set
  -- * @param[in]  src      input description (see `ddsi_plist_init_frommsg`)
  -- * @param[out] keyhashp set to point to keyhash in inline QoS if present, else to NULL
  -- * @param[in]  gv       global context (for logging)
  -- *
  -- * @return pointer to the first byte following the sentinel if the input is well-formed, a
  -- * null pointer if it is not.
  -- 

   function ddsi_plist_quickscan
     (dest : access CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.nn_rsample_info;
      keyhashp : System.Address;
      src : access constant ddsi_plist_src_t;
      gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv) return access unsigned_char  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:497
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_quickscan";

  --*
  -- * @brief Locate a specific parameter in a PL_CDR-serialized parameter list
  -- *
  -- * This scans the serialized data until it encounters the sentinel, recording whether the
  -- * specified parameter occurs and returning the size and address of it in `buf`.
  -- *
  -- * If `needle` is PID_SENTINEL, it will simply check well-formedness of the input and
  -- * `needlep` and `needlesz` must both be null pointers.  If `needle` is not PID_SENTINEL,
  -- * `needlep` and `needlesz` may not be null pointers.
  -- *
  -- * @param[in]  buf       serialized parameter list to scan
  -- * @param[in]  bufsz     length of serialized form
  -- * @param[in]  encoding  encoding of `buf`, either PL_CDR_LE or PL_CDR_BE
  -- * @param[in]  needle    parameter id to look for
  -- * @param[out] needlep   where to store the address of the `needle` value
  -- * @param[out] needlesz  where to store the size of the `needle` value
  -- *
  -- * @return Whether input was valid and if so, whether it contains the needle.
  -- *
  -- * @retval DDS_RETCODE_BAD_PARAMETER  invalid input
  -- * @retval DDS_RETCODE_NOT_FOUND      valid input, `needle` not present
  -- * @retval DDS_RETCODE_OK             valid input, `needle` is present
  -- 

   function ddsi_plist_findparam_checking
     (buf : System.Address;
      bufsz : unsigned_long;
      encoding : unsigned_short;
      needle : CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_parameterid_t;
      needlep : System.Address;
      needlesz : access unsigned_long) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_plist.h:522
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_findparam_checking";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h;
