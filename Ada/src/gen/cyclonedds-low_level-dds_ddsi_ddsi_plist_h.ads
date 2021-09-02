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
limited with CycloneDDS.Low_Level.dds_ddsi_q_xevent_h;
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
   NN_ADLINK_PARTICIPANT_VERSION_INFO_FIXED_CDRSIZE : constant := (24);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:77

   NN_ADLINK_FL_KERNEL_SEQUENCE_NUMBER : constant := (2 ** 0);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:79
   NN_ADLINK_FL_DISCOVERY_INCLUDES_GID : constant := (2 ** 1);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:80
   NN_ADLINK_FL_PTBES_FIXED_0 : constant := (2 ** 2);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:81
   NN_ADLINK_FL_DDSI2_PARTICIPANT_FLAG : constant := (2 ** 3);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:82
   NN_ADLINK_FL_PARTICIPANT_IS_DDSI2 : constant := (2 ** 4);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:83
   NN_ADLINK_FL_MINIMAL_BES_MODE : constant := (2 ** 5);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:84
   NN_ADLINK_FL_SUPPORTS_STATUSINFOX : constant := (2 ** 5);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:85

   NN_ENDPOINT_SECURITY_ATTRIBUTES_FLAG_IS_READ_PROTECTED : constant := (2 ** 0);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:153
   NN_ENDPOINT_SECURITY_ATTRIBUTES_FLAG_IS_WRITE_PROTECTED : constant := (2 ** 1);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:154
   NN_ENDPOINT_SECURITY_ATTRIBUTES_FLAG_IS_DISCOVERY_PROTECTED : constant := (2 ** 2);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:155
   NN_ENDPOINT_SECURITY_ATTRIBUTES_FLAG_IS_SUBMESSAGE_PROTECTED : constant := (2 ** 3);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:156
   NN_ENDPOINT_SECURITY_ATTRIBUTES_FLAG_IS_PAYLOAD_PROTECTED : constant := (2 ** 4);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:157
   NN_ENDPOINT_SECURITY_ATTRIBUTES_FLAG_IS_KEY_PROTECTED : constant := (2 ** 5);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:158
   NN_ENDPOINT_SECURITY_ATTRIBUTES_FLAG_IS_LIVELINESS_PROTECTED : constant := (2 ** 6);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:159
   NN_ENDPOINT_SECURITY_ATTRIBUTES_FLAG_IS_VALID : constant := (2 ** 31);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:160

   NN_PLUGIN_ENDPOINT_SECURITY_ATTRIBUTES_FLAG_IS_SUBMESSAGE_ENCRYPTED : constant := (2 ** 0);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:162
   NN_PLUGIN_ENDPOINT_SECURITY_ATTRIBUTES_FLAG_IS_PAYLOAD_ENCRYPTED : constant := (2 ** 1);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:163
   NN_PLUGIN_ENDPOINT_SECURITY_ATTRIBUTES_FLAG_IS_SUBMESSAGE_ORIGIN_AUTHENTICATED : constant := (2 ** 2);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:164

   NN_PARTICIPANT_SECURITY_ATTRIBUTES_FLAG_IS_RTPS_PROTECTED : constant := (2 ** 0);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:166
   NN_PARTICIPANT_SECURITY_ATTRIBUTES_FLAG_IS_DISCOVERY_PROTECTED : constant := (2 ** 1);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:167
   NN_PARTICIPANT_SECURITY_ATTRIBUTES_FLAG_IS_LIVELINESS_PROTECTED : constant := (2 ** 2);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:168
   NN_PARTICIPANT_SECURITY_ATTRIBUTES_FLAG_IS_VALID : constant := (2 ** 31);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:169

   NN_PLUGIN_PARTICIPANT_SECURITY_ATTRIBUTES_FLAG_IS_RTPS_ENCRYPTED : constant := (2 ** 0);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:171
   NN_PLUGIN_PARTICIPANT_SECURITY_ATTRIBUTES_FLAG_IS_DISCOVERY_ENCRYPTED : constant := (2 ** 1);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:172
   NN_PLUGIN_PARTICIPANT_SECURITY_ATTRIBUTES_FLAG_IS_LIVELINESS_ENCRYPTED : constant := (2 ** 2);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:173
   NN_PLUGIN_PARTICIPANT_SECURITY_ATTRIBUTES_FLAG_IS_RTPS_AUTHENTICATED : constant := (2 ** 3);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:174
   NN_PLUGIN_PARTICIPANT_SECURITY_ATTRIBUTES_FLAG_IS_DISCOVERY_AUTHENTICATED : constant := (2 ** 4);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:175
   NN_PLUGIN_PARTICIPANT_SECURITY_ATTRIBUTES_FLAG_IS_LIVELINESS_AUTHENTICATED : constant := (2 ** 5);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:176

   type nn_locators_one;
   type nn_locators_one is record
      next : access nn_locators_one;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:95
      loc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:96
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:94

   type nn_locators is record
      n : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:100
      first : access nn_locators_one;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:101
      last : access nn_locators_one;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:102
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:99

   subtype nn_locators_t is nn_locators;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:103

   subtype nn_ipv4address_t is Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:105

   subtype nn_port_t is Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:107

   type nn_tag is record
      name : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:111
      value : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:112
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:110

   subtype nn_tag_t is nn_tag;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:113

   type nn_tagseq is record
      n : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:116
      tags : access nn_tag_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:117
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:115

   subtype nn_tagseq_t is nn_tagseq;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:118

   type nn_datatags is record
      tags : aliased nn_tagseq_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:121
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:120

   subtype nn_datatags_t is nn_datatags;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:122

   type nn_reader_favours_ssm is record
      state : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:127
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:126

   subtype nn_reader_favours_ssm_t is nn_reader_favours_ssm;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:128

   type nn_dataholder is record
      class_id : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:134
      properties : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_propertyseq_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:135
      binary_properties : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_binarypropertyseq_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:136
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:132

   subtype nn_dataholder_t is nn_dataholder;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:137

   type nn_dataholderseq is record
      n : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:140
      tags : access nn_dataholder_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:141
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:139

   subtype nn_dataholderseq_t is nn_dataholderseq;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:142

   subtype nn_token_t is nn_dataholder_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:144

   type nn_security_info is record
      security_attributes : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:149
      plugin_security_attributes : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:150
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:147

   subtype nn_security_info_t is nn_security_info;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:151

   type anon_array2014 is array (0 .. 2) of aliased Interfaces.Unsigned_32;
   type nn_adlink_participant_version_info is record
      version : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:184
      flags : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:185
      unused : aliased anon_array2014;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:186
      internals : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:187
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:182

   subtype nn_adlink_participant_version_info_t is nn_adlink_participant_version_info;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:188

   type ddsi_plist is record
      present : aliased Interfaces.Unsigned_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:191
      c_aliased : aliased Interfaces.Unsigned_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:192
      qos : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:194
      protocol_version : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.nn_protocol_version_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:196
      vendorid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:197
      unicast_locators : aliased nn_locators_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:198
      multicast_locators : aliased nn_locators_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:199
      default_unicast_locators : aliased nn_locators_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:200
      default_multicast_locators : aliased nn_locators_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:201
      metatraffic_unicast_locators : aliased nn_locators_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:202
      metatraffic_multicast_locators : aliased nn_locators_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:203
      expects_inline_qos : aliased unsigned_char;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:205
      participant_manual_liveliness_count : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_count_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:206
      participant_builtin_endpoints : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:207
      participant_lease_duration : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:208
      participant_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:210
      endpoint_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:211
      group_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:212
      topic_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:213
      builtin_endpoint_set : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:218
      entity_name : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:220
      keyhash : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h.ddsi_keyhash_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:221
      statusinfo : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:222
      adlink_participant_version_info : aliased nn_adlink_participant_version_info_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:223
      type_description : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:224
      coherent_set_seqno : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_sequence_number_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:225
      identity_token : aliased nn_token_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:227
      permissions_token : aliased nn_token_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:228
      endpoint_security_info : aliased nn_security_info_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:229
      participant_security_info : aliased nn_security_info_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:230
      identity_status_token : aliased nn_token_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:231
      data_tags : aliased nn_datatags_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:232
      reader_favours_ssm : aliased nn_reader_favours_ssm_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:235
      domain_id : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:237
      domain_tag : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:238
      cyclone_receive_buffer_size : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:239
      cyclone_requests_keyhash : aliased unsigned_char;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:240
      cyclone_redundant_networking : aliased unsigned_char;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:241
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:190

   subtype ddsi_plist_t is ddsi_plist;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:242

   type ddsi_plist_src is record
      protocol_version : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.nn_protocol_version_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:248
      vendorid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:249
      encoding : aliased int;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:250
      buf : access unsigned_char;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:251
      bufsz : aliased size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:252
      strict : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:253
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:247

   subtype ddsi_plist_src_t is ddsi_plist_src;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:254

   ddsi_default_plist_participant : aliased constant ddsi_plist_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_default_plist_participant";

   procedure ddsi_plist_init_tables  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_init_tables";

   procedure ddsi_plist_init_empty (dest : access ddsi_plist_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:274
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_init_empty";

   procedure ddsi_plist_mergein_missing
     (a : access ddsi_plist_t;
      b : access constant ddsi_plist_t;
      pmask : Interfaces.Unsigned_64;
      qmask : Interfaces.Unsigned_64)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:289
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_mergein_missing";

   procedure ddsi_plist_copy (dst : access ddsi_plist_t; src : access constant ddsi_plist_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_copy";

   function ddsi_plist_dup (src : access constant ddsi_plist_t) return access ddsi_plist_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:306
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_dup";

   function ddsi_plist_init_frommsg
     (dest : access ddsi_plist_t;
      nextafterplist : System.Address;
      pwanted : Interfaces.Unsigned_64;
      qwanted : Interfaces.Unsigned_64;
      src : access constant ddsi_plist_src_t;
      gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:356
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_init_frommsg";

   procedure ddsi_plist_fini (ps : access ddsi_plist_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:369
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_fini";

   procedure ddsi_plist_fini_mask
     (plist : access ddsi_plist_t;
      pmask : Interfaces.Unsigned_64;
      qmask : Interfaces.Unsigned_64)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:383
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_fini_mask";

   procedure ddsi_plist_unalias (plist : access ddsi_plist_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:395
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_unalias";

   procedure ddsi_plist_addtomsg
     (m : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.nn_xmsg;
      ps : access constant ddsi_plist_t;
      pwanted : Interfaces.Unsigned_64;
      qwanted : Interfaces.Unsigned_64)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:411
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_addtomsg";

   procedure ddsi_plist_addtomsg_bo
     (m : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.nn_xmsg;
      ps : access constant ddsi_plist_t;
      pwanted : Interfaces.Unsigned_64;
      qwanted : Interfaces.Unsigned_64;
      bo : CycloneDDS.Low_Level.dds_ddsrt_bswap_h.ddsrt_byte_order_selector)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:428
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_addtomsg_bo";

   procedure ddsi_plist_delta
     (pdelta : access Interfaces.Unsigned_64;
      qdelta : access Interfaces.Unsigned_64;
      x : access constant ddsi_plist_t;
      y : access constant ddsi_plist_t;
      pmask : Interfaces.Unsigned_64;
      qmask : Interfaces.Unsigned_64)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:445
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_delta";

   procedure ddsi_plist_log
     (cat : Interfaces.Unsigned_32;
      logcfg : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h.ddsrt_log_cfg;
      plist : access constant ddsi_plist_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:454
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_log";

   function ddsi_plist_print
     (buf : Interfaces.C.Strings.chars_ptr;
      bufsize : size_t;
      plist : access constant ddsi_plist_t) return size_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:470
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_print";

   function ddsi_plist_quickscan
     (dest : access CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.nn_rsample_info;
      keyhashp : System.Address;
      src : access constant ddsi_plist_src_t;
      gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv) return access unsigned_char  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:497
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_quickscan";

   function ddsi_plist_findparam_checking
     (buf : System.Address;
      bufsz : size_t;
      encoding : Interfaces.Unsigned_16;
      needle : CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_parameterid_t;
      needlep : System.Address;
      needlesz : access size_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_plist.h:522
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_plist_findparam_checking";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h;
