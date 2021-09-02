pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Extensions;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;
with CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h;

limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;
with Interfaces.C.Strings;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
limited with CycloneDDS.Low_Level.dds_ddsc_dds_public_listener_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h;

with System;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_sertopic_h;
limited with CycloneDDS.Low_Level.dds_ddsc_dds_rhc_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h;


package CycloneDDS.Low_Level.dds_dds_h is

   --  unsupported macro: DDS_MIN_PSEUDO_HANDLE ((dds_entity_t) 0x7fff0000)
   DDS_HAS_DDSI_SERTYPE : constant := 1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:64
   --  unsupported macro: DDS_BUILTIN_TOPIC_DCPSPARTICIPANT ((dds_entity_t) (DDS_MIN_PSEUDO_HANDLE + 1))
   --  unsupported macro: DDS_BUILTIN_TOPIC_DCPSTOPIC ((dds_entity_t) (DDS_MIN_PSEUDO_HANDLE + 2))
   --  unsupported macro: DDS_BUILTIN_TOPIC_DCPSPUBLICATION ((dds_entity_t) (DDS_MIN_PSEUDO_HANDLE + 3))
   --  unsupported macro: DDS_BUILTIN_TOPIC_DCPSSUBSCRIPTION ((dds_entity_t) (DDS_MIN_PSEUDO_HANDLE + 4))
   --  unsupported macro: DDS_CYCLONEDDS_HANDLE ((dds_entity_t) (DDS_MIN_PSEUDO_HANDLE + 256))
   --  unsupported macro: DDS_DATA_ALLOCATOR_ALLOC_ON_HEAP ((dds_entity_t) (DDS_MIN_PSEUDO_HANDLE + 257))
   --  unsupported macro: DDS_STATUS_ID_MAX (DDS_SUBSCRIPTION_MATCHED_STATUS_ID)
   --  unsupported macro: DDS_INCONSISTENT_TOPIC_STATUS (1u << DDS_INCONSISTENT_TOPIC_STATUS_ID)
   --  unsupported macro: DDS_OFFERED_DEADLINE_MISSED_STATUS (1u << DDS_OFFERED_DEADLINE_MISSED_STATUS_ID)
   --  unsupported macro: DDS_REQUESTED_DEADLINE_MISSED_STATUS (1u << DDS_REQUESTED_DEADLINE_MISSED_STATUS_ID)
   --  unsupported macro: DDS_OFFERED_INCOMPATIBLE_QOS_STATUS (1u << DDS_OFFERED_INCOMPATIBLE_QOS_STATUS_ID)
   --  unsupported macro: DDS_REQUESTED_INCOMPATIBLE_QOS_STATUS (1u << DDS_REQUESTED_INCOMPATIBLE_QOS_STATUS_ID)
   --  unsupported macro: DDS_SAMPLE_LOST_STATUS (1u << DDS_SAMPLE_LOST_STATUS_ID)
   --  unsupported macro: DDS_SAMPLE_REJECTED_STATUS (1u << DDS_SAMPLE_REJECTED_STATUS_ID)
   --  unsupported macro: DDS_DATA_ON_READERS_STATUS (1u << DDS_DATA_ON_READERS_STATUS_ID)
   --  unsupported macro: DDS_DATA_AVAILABLE_STATUS (1u << DDS_DATA_AVAILABLE_STATUS_ID)
   --  unsupported macro: DDS_LIVELINESS_LOST_STATUS (1u << DDS_LIVELINESS_LOST_STATUS_ID)
   --  unsupported macro: DDS_LIVELINESS_CHANGED_STATUS (1u << DDS_LIVELINESS_CHANGED_STATUS_ID)
   --  unsupported macro: DDS_PUBLICATION_MATCHED_STATUS (1u << DDS_PUBLICATION_MATCHED_STATUS_ID)
   --  unsupported macro: DDS_SUBSCRIPTION_MATCHED_STATUS (1u << DDS_SUBSCRIPTION_MATCHED_STATUS_ID)

   DDS_HAS_CREATE_TOPIC_SERTYPE : constant := 1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1100

   DDS_HAS_CREATE_TOPIC_GENERIC : constant := 1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1145

   DDS_HAS_READCDR : constant := 1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3064

   subtype dds_entity_t is Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:35

   type dds_status_id is 
     (DDS_INCONSISTENT_TOPIC_STATUS_ID,
      DDS_OFFERED_DEADLINE_MISSED_STATUS_ID,
      DDS_REQUESTED_DEADLINE_MISSED_STATUS_ID,
      DDS_OFFERED_INCOMPATIBLE_QOS_STATUS_ID,
      DDS_REQUESTED_INCOMPATIBLE_QOS_STATUS_ID,
      DDS_SAMPLE_LOST_STATUS_ID,
      DDS_SAMPLE_REJECTED_STATUS_ID,
      DDS_DATA_ON_READERS_STATUS_ID,
      DDS_DATA_AVAILABLE_STATUS_ID,
      DDS_LIVELINESS_LOST_STATUS_ID,
      DDS_LIVELINESS_CHANGED_STATUS_ID,
      DDS_PUBLICATION_MATCHED_STATUS_ID,
      DDS_SUBSCRIPTION_MATCHED_STATUS_ID)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:87

   subtype dds_status_id_t is dds_status_id;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:101

   subtype dds_sample_state is unsigned;
   dds_sample_state_DDS_SST_READ : constant dds_sample_state := 1;
   dds_sample_state_DDS_SST_NOT_READ : constant dds_sample_state := 2;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:133

   subtype dds_sample_state_t is dds_sample_state;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:138

   subtype dds_view_state is unsigned;
   dds_view_state_DDS_VST_NEW : constant dds_view_state := 4;
   dds_view_state_DDS_VST_OLD : constant dds_view_state := 8;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:141

   subtype dds_view_state_t is dds_view_state;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:148

   subtype dds_instance_state is unsigned;
   dds_instance_state_DDS_IST_ALIVE : constant dds_instance_state := 16;
   dds_instance_state_DDS_IST_NOT_ALIVE_DISPOSED : constant dds_instance_state := 32;
   dds_instance_state_DDS_IST_NOT_ALIVE_NO_WRITERS : constant dds_instance_state := 64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:151

   subtype dds_instance_state_t is dds_instance_state;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:160

   type dds_sample_info is record
      sample_state : aliased dds_sample_state_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:166
      view_state : aliased dds_view_state_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:168
      instance_state : aliased dds_instance_state_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:170
      valid_data : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:174
      source_timestamp : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:176
      instance_handle : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:178
      publication_handle : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:180
      disposed_generation_count : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:182
      no_writers_generation_count : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:184
      sample_rank : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:186
      generation_rank : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:188
      absolute_generation_rank : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:190
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:163

   subtype dds_sample_info_t is dds_sample_info;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:192

   type anon_array1788 is array (0 .. 15) of aliased Interfaces.Unsigned_8;
   type dds_builtintopic_guid is record
      v : aliased anon_array1788;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:196
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:194

   subtype dds_builtintopic_guid_t is dds_builtintopic_guid;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:198

   subtype dds_guid_t is dds_builtintopic_guid;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:202

   type dds_builtintopic_participant is record
      key : aliased dds_guid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:206
      qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:207
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:204

   subtype dds_builtintopic_participant_t is dds_builtintopic_participant;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:209

   type anon_array1789 is array (0 .. 15) of aliased unsigned_char;
   type dds_builtintopic_topic_key is record
      d : aliased anon_array1789;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:212
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:211

   subtype dds_builtintopic_topic_key_t is dds_builtintopic_topic_key;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:213

   type dds_builtintopic_topic is record
      key : aliased dds_builtintopic_topic_key_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:217
      topic_name : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:218
      type_name : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:219
      qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:220
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:215

   subtype dds_builtintopic_topic_t is dds_builtintopic_topic;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:222

   type dds_builtintopic_endpoint is record
      key : aliased dds_guid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:226
      participant_key : aliased dds_guid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:227
      participant_instance_handle : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:228
      topic_name : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:229
      type_name : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:230
      qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:231
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:224

   subtype dds_builtintopic_endpoint_t is dds_builtintopic_endpoint;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:233

   function dds_enable (entity : dds_entity_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:300
   with Import => True, 
        Convention => C, 
        External_Name => "dds_enable";

   function dds_delete (entity : dds_entity_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:330
   with Import => True, 
        Convention => C, 
        External_Name => "dds_delete";

   function dds_get_publisher (writer : dds_entity_t) return dds_entity_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:354
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_publisher";

   function dds_get_subscriber (entity : dds_entity_t) return dds_entity_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:378
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_subscriber";

   function dds_get_datareader (condition : dds_entity_t) return dds_entity_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:402
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_datareader";

   function dds_get_mask (condition : dds_entity_t; mask : access Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:426
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_mask";

   function dds_get_instance_handle (entity : dds_entity_t; ihdl : access CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:443
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_instance_handle";

   function dds_get_guid (entity : dds_entity_t; guid : access dds_guid_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:463
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_guid";

   function dds_read_status
     (entity : dds_entity_t;
      status : access Interfaces.Unsigned_32;
      mask : Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:496
   with Import => True, 
        Convention => C, 
        External_Name => "dds_read_status";

   function dds_take_status
     (entity : dds_entity_t;
      status : access Interfaces.Unsigned_32;
      mask : Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:522
   with Import => True, 
        Convention => C, 
        External_Name => "dds_take_status";

   function dds_get_status_changes (entity : dds_entity_t; status : access Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:544
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_status_changes";

   function dds_get_status_mask (entity : dds_entity_t; mask : access Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:566
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_status_mask";

   function dds_get_enabled_status (entity : dds_entity_t; mask : access Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:569
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_enabled_status";

   function dds_set_status_mask (entity : dds_entity_t; mask : Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:591
   with Import => True, 
        Convention => C, 
        External_Name => "dds_set_status_mask";

   function dds_set_enabled_status (entity : dds_entity_t; mask : Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:594
   with Import => True, 
        Convention => C, 
        External_Name => "dds_set_enabled_status";

   function dds_get_qos (entity : dds_entity_t; qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:630
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_qos";

   function dds_set_qos (entity : dds_entity_t; qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:671
   with Import => True, 
        Convention => C, 
        External_Name => "dds_set_qos";

   function dds_get_listener (entity : dds_entity_t; listener : access CycloneDDS.Low_Level.dds_ddsc_dds_public_listener_h.dds_listener) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:704
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_listener";

   function dds_set_listener (entity : dds_entity_t; listener : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_listener_h.dds_listener) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:760
   with Import => True, 
        Convention => C, 
        External_Name => "dds_set_listener";

   function dds_create_participant
     (domain : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_domainid_t;
      qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      listener : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_listener_h.dds_listener) return dds_entity_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:811
   with Import => True, 
        Convention => C, 
        External_Name => "dds_create_participant";

   function dds_create_domain (domain : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_domainid_t; config : Interfaces.C.Strings.chars_ptr) return dds_entity_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:864
   with Import => True, 
        Convention => C, 
        External_Name => "dds_create_domain";

   function dds_create_domain_with_rawconfig (domain : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_domainid_t; config : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h.ddsi_config) return dds_entity_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:897
   with Import => True, 
        Convention => C, 
        External_Name => "dds_create_domain_with_rawconfig";

   function dds_get_parent (entity : dds_entity_t) return dds_entity_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:928
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_parent";

   function dds_get_participant (entity : dds_entity_t) return dds_entity_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:954
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_participant";

   function dds_get_children
     (entity : dds_entity_t;
      children : access dds_entity_t;
      size : size_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1000
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_children";

   function dds_get_domainid (entity : dds_entity_t; id : access CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_domainid_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1030
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_domainid";

   function dds_lookup_participant
     (domain_id : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_domainid_t;
      participants : access dds_entity_t;
      size : size_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1059
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lookup_participant";

   function dds_create_topic
     (participant : dds_entity_t;
      descriptor : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_topic_descriptor;
      name : Interfaces.C.Strings.chars_ptr;
      qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      listener : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_listener_h.dds_listener) return dds_entity_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1093
   with Import => True, 
        Convention => C, 
        External_Name => "dds_create_topic";

   function dds_create_topic_sertype
     (participant : dds_entity_t;
      name : Interfaces.C.Strings.chars_ptr;
      sertype : System.Address;
      qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      listener : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_listener_h.dds_listener;
      sedp_plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist) return dds_entity_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1137
   with Import => True, 
        Convention => C, 
        External_Name => "dds_create_topic_sertype";

   function dds_create_topic_generic
     (participant : dds_entity_t;
      sertopic : System.Address;
      qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      listener : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_listener_h.dds_listener;
      sedp_plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist) return dds_entity_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1181
   with Import => True, 
        Convention => C, 
        External_Name => "dds_create_topic_generic";

   function dds_create_topic_arbitrary
     (participant : dds_entity_t;
      sertopic : access CycloneDDS.Low_Level.dds_ddsi_ddsi_sertopic_h.ddsi_sertopic;
      qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      listener : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_listener_h.dds_listener;
      sedp_plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist) return dds_entity_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1189
   with Import => True, 
        Convention => C, 
        External_Name => "dds_create_topic_arbitrary";

   function dds_find_topic (participant : dds_entity_t; name : Interfaces.C.Strings.chars_ptr) return dds_entity_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1214
   with Import => True, 
        Convention => C, 
        External_Name => "dds_find_topic";

   function dds_find_topic_scoped
     (scope : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_find_scope_t;
      participant : dds_entity_t;
      name : Interfaces.C.Strings.chars_ptr;
      timeout : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t) return dds_entity_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1247
   with Import => True, 
        Convention => C, 
        External_Name => "dds_find_topic_scoped";

   function dds_get_name
     (topic : dds_entity_t;
      name : Interfaces.C.Strings.chars_ptr;
      size : size_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1261
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_name";

   function dds_get_type_name
     (topic : dds_entity_t;
      name : Interfaces.C.Strings.chars_ptr;
      size : size_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1275
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_type_name";

   type dds_topic_filter_sample_fn is access function (arg1 : System.Address) return Extensions.bool
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1298

   type dds_topic_filter_sample_arg_fn is access function (arg1 : System.Address; arg2 : System.Address) return Extensions.bool
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1299

   type dds_topic_filter_sampleinfo_arg_fn is access function (arg1 : access constant dds_sample_info_t; arg2 : System.Address) return Extensions.bool
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1300

   type dds_topic_filter_sample_sampleinfo_arg_fn is access function
        (arg1 : System.Address;
         arg2 : access constant dds_sample_info_t;
         arg3 : System.Address) return Extensions.bool
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1301

   subtype dds_topic_filter_fn is dds_topic_filter_sample_fn;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1302

   subtype dds_topic_filter_arg_fn is dds_topic_filter_sample_arg_fn;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1303

   type dds_topic_filter_mode is 
     (DDS_TOPIC_FILTER_NONE,
      DDS_TOPIC_FILTER_SAMPLE,
      DDS_TOPIC_FILTER_SAMPLE_ARG,
      DDS_TOPIC_FILTER_SAMPLEINFO_ARG,
      DDS_TOPIC_FILTER_SAMPLE_SAMPLEINFO_ARG)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1306

   type dds_topic_filter_function_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            sample : dds_topic_filter_sample_fn;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1316
         when 1 =>
            sample_arg : dds_topic_filter_sample_arg_fn;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1317
         when 2 =>
            sampleinfo_arg : dds_topic_filter_sampleinfo_arg_fn;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1318
         when others =>
            sample_sampleinfo_arg : dds_topic_filter_sample_sampleinfo_arg_fn;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1319
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1315

   type dds_topic_filter is record
      mode : aliased dds_topic_filter_mode;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1324
      f : aliased dds_topic_filter_function_union;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1325
      arg : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1326
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1323

   procedure dds_set_topic_filter (topic : dds_entity_t; filter : dds_topic_filter_fn)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1342
   with Import => True, 
        Convention => C, 
        External_Name => "dds_set_topic_filter";

   procedure dds_topic_set_filter (topic : dds_entity_t; filter : dds_topic_filter_fn)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1345
   with Import => True, 
        Convention => C, 
        External_Name => "dds_topic_set_filter";

   function dds_set_topic_filter_and_arg
     (topic : dds_entity_t;
      filter : dds_topic_filter_arg_fn;
      arg : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1367
   with Import => True, 
        Convention => C, 
        External_Name => "dds_set_topic_filter_and_arg";

   function dds_set_topic_filter_extended (topic : dds_entity_t; filter : access constant dds_topic_filter) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1391
   with Import => True, 
        Convention => C, 
        External_Name => "dds_set_topic_filter_extended";

   function dds_get_topic_filter (topic : dds_entity_t) return dds_topic_filter_fn  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1404
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_topic_filter";

   function dds_topic_get_filter (topic : dds_entity_t) return dds_topic_filter_fn  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1407
   with Import => True, 
        Convention => C, 
        External_Name => "dds_topic_get_filter";

   function dds_get_topic_filter_and_arg
     (topic : dds_entity_t;
      fn : System.Address;
      arg : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1422
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_topic_filter_and_arg";

   function dds_get_topic_filter_extended (topic : dds_entity_t; filter : access dds_topic_filter) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1438
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_topic_filter_extended";

   function dds_create_subscriber
     (participant : dds_entity_t;
      qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      listener : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_listener_h.dds_listener) return dds_entity_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1459
   with Import => True, 
        Convention => C, 
        External_Name => "dds_create_subscriber";

   function dds_create_publisher
     (participant : dds_entity_t;
      qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      listener : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_listener_h.dds_listener) return dds_entity_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1480
   with Import => True, 
        Convention => C, 
        External_Name => "dds_create_publisher";

   function dds_suspend (publisher : dds_entity_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1506
   with Import => True, 
        Convention => C, 
        External_Name => "dds_suspend";

   function dds_resume (publisher : dds_entity_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1531
   with Import => True, 
        Convention => C, 
        External_Name => "dds_resume";

   function dds_wait_for_acks (publisher_or_writer : dds_entity_t; timeout : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1555
   with Import => True, 
        Convention => C, 
        External_Name => "dds_wait_for_acks";

   function dds_create_reader
     (participant_or_subscriber : dds_entity_t;
      topic : dds_entity_t;
      qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      listener : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_listener_h.dds_listener) return dds_entity_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1578
   with Import => True, 
        Convention => C, 
        External_Name => "dds_create_reader";

   function dds_create_reader_rhc
     (participant_or_subscriber : dds_entity_t;
      topic : dds_entity_t;
      qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      listener : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_listener_h.dds_listener;
      rhc : access CycloneDDS.Low_Level.dds_ddsc_dds_rhc_h.dds_rhc) return dds_entity_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1606
   with Import => True, 
        Convention => C, 
        External_Name => "dds_create_reader_rhc";

   function dds_reader_wait_for_historical_data (reader : dds_entity_t; max_wait : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1628
   with Import => True, 
        Convention => C, 
        External_Name => "dds_reader_wait_for_historical_data";

   function dds_create_writer
     (participant_or_publisher : dds_entity_t;
      topic : dds_entity_t;
      qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      listener : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_listener_h.dds_listener) return dds_entity_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1653
   with Import => True, 
        Convention => C, 
        External_Name => "dds_create_writer";

   function dds_loan_sample (writer : dds_entity_t; sample : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1660
   with Import => True, 
        Convention => C, 
        External_Name => "dds_loan_sample";

   function dds_register_instance
     (writer : dds_entity_t;
      handle : access CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t;
      data : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1693
   with Import => True, 
        Convention => C, 
        External_Name => "dds_register_instance";

   function dds_unregister_instance (writer : dds_entity_t; data : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1717
   with Import => True, 
        Convention => C, 
        External_Name => "dds_unregister_instance";

   function dds_unregister_instance_ih (writer : dds_entity_t; handle : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1738
   with Import => True, 
        Convention => C, 
        External_Name => "dds_unregister_instance_ih";

   function dds_unregister_instance_ts
     (writer : dds_entity_t;
      data : System.Address;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1761
   with Import => True, 
        Convention => C, 
        External_Name => "dds_unregister_instance_ts";

   function dds_unregister_instance_ih_ts
     (writer : dds_entity_t;
      handle : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1787
   with Import => True, 
        Convention => C, 
        External_Name => "dds_unregister_instance_ih_ts";

   function dds_writedispose (writer : dds_entity_t; data : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1842
   with Import => True, 
        Convention => C, 
        External_Name => "dds_writedispose";

   function dds_writedispose_ts
     (writer : dds_entity_t;
      data : System.Address;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1879
   with Import => True, 
        Convention => C, 
        External_Name => "dds_writedispose_ts";

   function dds_dispose (writer : dds_entity_t; data : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1935
   with Import => True, 
        Convention => C, 
        External_Name => "dds_dispose";

   function dds_dispose_ts
     (writer : dds_entity_t;
      data : System.Address;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:1972
   with Import => True, 
        Convention => C, 
        External_Name => "dds_dispose_ts";

   function dds_dispose_ih (writer : dds_entity_t; handle : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2010
   with Import => True, 
        Convention => C, 
        External_Name => "dds_dispose_ih";

   function dds_dispose_ih_ts
     (writer : dds_entity_t;
      handle : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2040
   with Import => True, 
        Convention => C, 
        External_Name => "dds_dispose_ih_ts";

   function dds_write (writer : dds_entity_t; data : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2057
   with Import => True, 
        Convention => C, 
        External_Name => "dds_write";

   procedure dds_write_flush (writer : dds_entity_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2061
   with Import => True, 
        Convention => C, 
        External_Name => "dds_write_flush";

   function dds_writecdr (writer : dds_entity_t; serdata : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2089
   with Import => True, 
        Convention => C, 
        External_Name => "dds_writecdr";

   function dds_forwardcdr (writer : dds_entity_t; serdata : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2116
   with Import => True, 
        Convention => C, 
        External_Name => "dds_forwardcdr";

   function dds_write_ts
     (writer : dds_entity_t;
      data : System.Address;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2128
   with Import => True, 
        Convention => C, 
        External_Name => "dds_write_ts";

   function dds_create_readcondition (reader : dds_entity_t; mask : Interfaces.Unsigned_32) return dds_entity_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2171
   with Import => True, 
        Convention => C, 
        External_Name => "dds_create_readcondition";

   type dds_querycondition_filter_fn is access function (arg1 : System.Address) return Extensions.bool
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2173

   function dds_create_querycondition
     (reader : dds_entity_t;
      mask : Interfaces.Unsigned_32;
      filter : dds_querycondition_filter_fn) return dds_entity_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2219
   with Import => True, 
        Convention => C, 
        External_Name => "dds_create_querycondition";

   function dds_create_guardcondition (participant : dds_entity_t) return dds_entity_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2243
   with Import => True, 
        Convention => C, 
        External_Name => "dds_create_guardcondition";

   function dds_set_guardcondition (guardcond : dds_entity_t; triggered : Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2258
   with Import => True, 
        Convention => C, 
        External_Name => "dds_set_guardcondition";

   function dds_read_guardcondition (guardcond : dds_entity_t; triggered : access Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2273
   with Import => True, 
        Convention => C, 
        External_Name => "dds_read_guardcondition";

   function dds_take_guardcondition (guardcond : dds_entity_t; triggered : access Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2288
   with Import => True, 
        Convention => C, 
        External_Name => "dds_take_guardcondition";

   type Dds_Attach_T is access all Integer;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2298

   function dds_create_waitset (participant : dds_entity_t) return dds_entity_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2321
   with Import => True, 
        Convention => C, 
        External_Name => "dds_create_waitset";

   function dds_waitset_get_entities
     (waitset : dds_entity_t;
      entities : access dds_entity_t;
      size : size_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2353
   with Import => True, 
        Convention => C, 
        External_Name => "dds_waitset_get_entities";

   function dds_waitset_attach
     (waitset : dds_entity_t;
      entity : dds_entity_t;
      x : dds_attach_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2401
   with Import => True, 
        Convention => C, 
        External_Name => "dds_waitset_attach";

   function dds_waitset_detach (waitset : dds_entity_t; entity : dds_entity_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2428
   with Import => True, 
        Convention => C, 
        External_Name => "dds_waitset_detach";

   function dds_waitset_set_trigger (waitset : dds_entity_t; trigger : Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2463
   with Import => True, 
        Convention => C, 
        External_Name => "dds_waitset_set_trigger";

   function dds_waitset_wait
     (waitset : dds_entity_t;
      xs : access dds_attach_t;
      nxs : size_t;
      reltimeout : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2533
   with Import => True, 
        Convention => C, 
        External_Name => "dds_waitset_wait";

   function dds_waitset_wait_until
     (waitset : dds_entity_t;
      xs : access dds_attach_t;
      nxs : size_t;
      abstimeout : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2608
   with Import => True, 
        Convention => C, 
        External_Name => "dds_waitset_wait_until";

   function dds_read
     (reader_or_condition : dds_entity_t;
      buf : System.Address;
      si : access dds_sample_info_t;
      bufsz : size_t;
      maxs : Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2666
   with Import => True, 
        Convention => C, 
        External_Name => "dds_read";

   function dds_read_wl
     (reader_or_condition : dds_entity_t;
      buf : System.Address;
      si : access dds_sample_info_t;
      maxs : Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2697
   with Import => True, 
        Convention => C, 
        External_Name => "dds_read_wl";

   function dds_read_mask
     (reader_or_condition : dds_entity_t;
      buf : System.Address;
      si : access dds_sample_info_t;
      bufsz : size_t;
      maxs : Interfaces.Unsigned_32;
      mask : Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2730
   with Import => True, 
        Convention => C, 
        External_Name => "dds_read_mask";

   function dds_read_mask_wl
     (reader_or_condition : dds_entity_t;
      buf : System.Address;
      si : access dds_sample_info_t;
      maxs : Interfaces.Unsigned_32;
      mask : Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2766
   with Import => True, 
        Convention => C, 
        External_Name => "dds_read_mask_wl";

   function dds_read_instance
     (reader_or_condition : dds_entity_t;
      buf : System.Address;
      si : access dds_sample_info_t;
      bufsz : size_t;
      maxs : Interfaces.Unsigned_32;
      handle : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2803
   with Import => True, 
        Convention => C, 
        External_Name => "dds_read_instance";

   function dds_read_instance_wl
     (reader_or_condition : dds_entity_t;
      buf : System.Address;
      si : access dds_sample_info_t;
      maxs : Interfaces.Unsigned_32;
      handle : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2840
   with Import => True, 
        Convention => C, 
        External_Name => "dds_read_instance_wl";

   function dds_read_instance_mask
     (reader_or_condition : dds_entity_t;
      buf : System.Address;
      si : access dds_sample_info_t;
      bufsz : size_t;
      maxs : Interfaces.Unsigned_32;
      handle : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t;
      mask : Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2878
   with Import => True, 
        Convention => C, 
        External_Name => "dds_read_instance_mask";

   function dds_read_instance_mask_wl
     (reader_or_condition : dds_entity_t;
      buf : System.Address;
      si : access dds_sample_info_t;
      maxs : Interfaces.Unsigned_32;
      handle : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t;
      mask : Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2917
   with Import => True, 
        Convention => C, 
        External_Name => "dds_read_instance_mask_wl";

   function dds_take
     (reader_or_condition : dds_entity_t;
      buf : System.Address;
      si : access dds_sample_info_t;
      bufsz : size_t;
      maxs : Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2958
   with Import => True, 
        Convention => C, 
        External_Name => "dds_take";

   function dds_take_wl
     (reader_or_condition : dds_entity_t;
      buf : System.Address;
      si : access dds_sample_info_t;
      maxs : Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:2989
   with Import => True, 
        Convention => C, 
        External_Name => "dds_take_wl";

   function dds_take_mask
     (reader_or_condition : dds_entity_t;
      buf : System.Address;
      si : access dds_sample_info_t;
      bufsz : size_t;
      maxs : Interfaces.Unsigned_32;
      mask : Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3022
   with Import => True, 
        Convention => C, 
        External_Name => "dds_take_mask";

   function dds_take_mask_wl
     (reader_or_condition : dds_entity_t;
      buf : System.Address;
      si : access dds_sample_info_t;
      maxs : Interfaces.Unsigned_32;
      mask : Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3057
   with Import => True, 
        Convention => C, 
        External_Name => "dds_take_mask_wl";

   function dds_readcdr
     (reader_or_condition : dds_entity_t;
      buf : System.Address;
      maxs : Interfaces.Unsigned_32;
      si : access dds_sample_info_t;
      mask : Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3104
   with Import => True, 
        Convention => C, 
        External_Name => "dds_readcdr";

   function dds_readcdr_instance
     (reader_or_condition : dds_entity_t;
      buf : System.Address;
      maxs : Interfaces.Unsigned_32;
      si : access dds_sample_info_t;
      handle : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t;
      mask : Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3151
   with Import => True, 
        Convention => C, 
        External_Name => "dds_readcdr_instance";

   function dds_takecdr
     (reader_or_condition : dds_entity_t;
      buf : System.Address;
      maxs : Interfaces.Unsigned_32;
      si : access dds_sample_info_t;
      mask : Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3198
   with Import => True, 
        Convention => C, 
        External_Name => "dds_takecdr";

   function dds_takecdr_instance
     (reader_or_condition : dds_entity_t;
      buf : System.Address;
      maxs : Interfaces.Unsigned_32;
      si : access dds_sample_info_t;
      handle : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t;
      mask : Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3245
   with Import => True, 
        Convention => C, 
        External_Name => "dds_takecdr_instance";

   function dds_take_instance
     (reader_or_condition : dds_entity_t;
      buf : System.Address;
      si : access dds_sample_info_t;
      bufsz : size_t;
      maxs : Interfaces.Unsigned_32;
      handle : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3285
   with Import => True, 
        Convention => C, 
        External_Name => "dds_take_instance";

   function dds_take_instance_wl
     (reader_or_condition : dds_entity_t;
      buf : System.Address;
      si : access dds_sample_info_t;
      maxs : Interfaces.Unsigned_32;
      handle : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3322
   with Import => True, 
        Convention => C, 
        External_Name => "dds_take_instance_wl";

   function dds_take_instance_mask
     (reader_or_condition : dds_entity_t;
      buf : System.Address;
      si : access dds_sample_info_t;
      bufsz : size_t;
      maxs : Interfaces.Unsigned_32;
      handle : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t;
      mask : Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3361
   with Import => True, 
        Convention => C, 
        External_Name => "dds_take_instance_mask";

   function dds_take_instance_mask_wl
     (reader_or_condition : dds_entity_t;
      buf : System.Address;
      si : access dds_sample_info_t;
      maxs : Interfaces.Unsigned_32;
      handle : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t;
      mask : Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3400
   with Import => True, 
        Convention => C, 
        External_Name => "dds_take_instance_mask_wl";

   function dds_take_next
     (reader : dds_entity_t;
      buf : System.Address;
      si : access dds_sample_info_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3437
   with Import => True, 
        Convention => C, 
        External_Name => "dds_take_next";

   function dds_take_next_wl
     (reader : dds_entity_t;
      buf : System.Address;
      si : access dds_sample_info_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3468
   with Import => True, 
        Convention => C, 
        External_Name => "dds_take_next_wl";

   function dds_read_next
     (reader : dds_entity_t;
      buf : System.Address;
      si : access dds_sample_info_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3496
   with Import => True, 
        Convention => C, 
        External_Name => "dds_read_next";

   function dds_read_next_wl
     (reader : dds_entity_t;
      buf : System.Address;
      si : access dds_sample_info_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3527
   with Import => True, 
        Convention => C, 
        External_Name => "dds_read_next_wl";

   function dds_return_loan
     (entity : dds_entity_t;
      buf : System.Address;
      bufsz : Interfaces.Integer_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3569
   with Import => True, 
        Convention => C, 
        External_Name => "dds_return_loan";

   function dds_lookup_instance (entity : dds_entity_t; data : System.Address) return CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3595
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lookup_instance";

   function dds_instance_lookup (entity : dds_entity_t; data : System.Address) return CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3598
   with Import => True, 
        Convention => C, 
        External_Name => "dds_instance_lookup";

   function dds_instance_get_key
     (entity : dds_entity_t;
      inst : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t;
      data : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3619
   with Import => True, 
        Convention => C, 
        External_Name => "dds_instance_get_key";

   function dds_begin_coherent (entity : dds_entity_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3642
   with Import => True, 
        Convention => C, 
        External_Name => "dds_begin_coherent";

   function dds_end_coherent (entity : dds_entity_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3660
   with Import => True, 
        Convention => C, 
        External_Name => "dds_end_coherent";

   function dds_notify_readers (subscriber : dds_entity_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3679
   with Import => True, 
        Convention => C, 
        External_Name => "dds_notify_readers";

   function dds_triggered (entity : dds_entity_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3698
   with Import => True, 
        Convention => C, 
        External_Name => "dds_triggered";

   function dds_get_topic (entity : dds_entity_t) return dds_entity_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3723
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_topic";

   function dds_get_matched_subscriptions
     (writer : dds_entity_t;
      rds : access CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t;
      nrds : size_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3755
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_matched_subscriptions";

   function dds_get_matched_subscription_data (writer : dds_entity_t; ih : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t) return access dds_builtintopic_endpoint_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3788
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_matched_subscription_data";

   function dds_get_matched_publications
     (reader : dds_entity_t;
      wrs : access CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t;
      nwrs : size_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3822
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_matched_publications";

   function dds_get_matched_publication_data (reader : dds_entity_t; ih : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t) return access dds_builtintopic_endpoint_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3855
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_matched_publication_data";

   procedure dds_builtintopic_free_endpoint (builtintopic_endpoint : access dds_builtintopic_endpoint_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3887
   with Import => True, 
        Convention => C, 
        External_Name => "dds_builtintopic_free_endpoint";

   procedure dds_builtintopic_free_topic (builtintopic_topic : access dds_builtintopic_topic_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3900
   with Import => True, 
        Convention => C, 
        External_Name => "dds_builtintopic_free_topic";

   procedure dds_builtintopic_free_participant (builtintopic_participant : access dds_builtintopic_participant_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3913
   with Import => True, 
        Convention => C, 
        External_Name => "dds_builtintopic_free_participant";

   function dds_assert_liveliness (entity : dds_entity_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3936
   with Import => True, 
        Convention => C, 
        External_Name => "dds_assert_liveliness";

   function dds_domain_set_deafmute
     (entity : dds_entity_t;
      deaf : Extensions.bool;
      mute : Extensions.bool;
      reset_after : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/dds.h:3967
   with Import => True, 
        Convention => C, 
        External_Name => "dds_domain_set_deafmute";

end CycloneDDS.Low_Level.dds_dds_h;
