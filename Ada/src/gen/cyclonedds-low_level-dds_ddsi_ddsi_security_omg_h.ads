pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

with CycloneDDS.Low_Level.dds_ddsrt_avl_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;
with CycloneDDS.Low_Level.dds_security_dds_security_api_types_h;
with CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
limited with CycloneDDS.Low_Level.dds_security_dds_security_api_access_control_h;
limited with CycloneDDS.Low_Level.dds_security_dds_security_api_authentication_h;
limited with CycloneDDS.Low_Level.dds_security_dds_security_api_cryptography_h;
limited with CycloneDDS.Low_Level.dds_ddsrt_log_h;

with Interfaces.C.Strings;
with System;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;


limited with CycloneDDS.Low_Level.dds_ddsi_q_radmin_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_xevent_h;
with CycloneDDS.Low_Level.dds_ddsi_q_xmsg_h;
with CycloneDDS.Low_Level.dds_ddsi_q_protocol_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_thread_h;

with CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_security_omg_h is

   type nn_rtps_msg_state_t is 
     (NN_RTPS_MSG_STATE_ERROR,
      NN_RTPS_MSG_STATE_PLAIN,
      NN_RTPS_MSG_STATE_ENCODED)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:42

   type nn_msg_sec_info is record
      encoded : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:54
      use_rtps_encoding : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:55
      src_pp_handle : aliased Interfaces.Integer_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:56
      dst_pp_handle : aliased Interfaces.Integer_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:57
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:53

   subtype nn_msg_sec_info_t is nn_msg_sec_info;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:58

   type pp_proxypp_match is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:66
      proxypp_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:67
      proxypp_crypto_handle : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantCryptoHandle;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:68
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:65

   type proxypp_pp_match is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:72
      pp_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:73
      pp_crypto_handle : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantCryptoHandle;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:74
      permissions_handle : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:75
      shared_secret : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SharedSecretHandle;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:76
      authenticated : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:77
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:71

   type participant_sec_attributes is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:81
      pp_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:82
      attr : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantSecurityAttributes;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:83
      local_identity_handle : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityHandle;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:84
      permissions_handle : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:85
      crypto_handle : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantCryptoHandle;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:86
      plugin_attr : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:87
      lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:88
      proxy_participants : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_ctree_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:89
      initialized : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:90
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:80

   type proxy_participant_sec_attributes is record
      sc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.dds_security_context;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:94
      remote_identity_handle : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityHandle;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:95
      crypto_handle : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantCryptoHandle;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:96
      lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:97
      participants : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_tree_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:98
      initialized : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:99
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:93

   type writer_sec_attributes is record
      attr : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_EndpointSecurityAttributes;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:103
      crypto_handle : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatawriterCryptoHandle;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:104
      plugin_attr : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:105
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:102

   type reader_sec_attributes is record
      attr : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_EndpointSecurityAttributes;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:109
      crypto_handle : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatareaderCryptoHandle;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:110
      plugin_attr : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:111
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:108

   function q_omg_participant_get_access_control (pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) return access CycloneDDS.Low_Level.dds_security_dds_security_api_access_control_h.dds_security_access_control  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_participant_get_access_control";

   function q_omg_participant_get_authentication (pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) return access CycloneDDS.Low_Level.dds_security_dds_security_api_authentication_h.dds_security_authentication  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_participant_get_authentication";

   function q_omg_participant_get_cryptography (pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) return access CycloneDDS.Low_Level.dds_security_dds_security_api_cryptography_h.dds_security_cryptography  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_participant_get_cryptography";

   procedure q_omg_vlog_exception
     (lc : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h.ddsrt_log_cfg;
      cat : Interfaces.Unsigned_32;
      c_exception : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException;
      file : Interfaces.C.Strings.chars_ptr;
      line : Interfaces.Unsigned_32;
      func : Interfaces.C.Strings.chars_ptr;
      fmt : Interfaces.C.Strings.chars_ptr;
      ap : access System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_vlog_exception";

   procedure q_omg_log_exception
     (lc : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h.ddsrt_log_cfg;
      cat : Interfaces.Unsigned_32;
      c_exception : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException;
      file : Interfaces.C.Strings.chars_ptr;
      line : Interfaces.Unsigned_32;
      func : Interfaces.C.Strings.chars_ptr;
      fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_log_exception";

   function q_omg_participant_is_access_protected (pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_participant_is_access_protected";

   function q_omg_participant_is_rtps_protected (pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_participant_is_rtps_protected";

   function q_omg_participant_is_liveliness_protected (pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_participant_is_liveliness_protected";

   function q_omg_participant_is_discovery_protected (pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_participant_is_discovery_protected";

   function q_omg_participant_is_secure (pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_participant_is_secure";

   function q_omg_proxy_participant_is_secure (proxypp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_proxy_participant_is_secure";

   function q_omg_security_check_create_participant (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant; domain_id : Interfaces.Unsigned_32) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:192
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_check_create_participant";

   procedure q_omg_security_participant_set_initialized (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:194
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_participant_set_initialized";

   function q_omg_security_participant_is_initialized (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_participant_is_initialized";

   procedure q_omg_security_deregister_participant (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:207
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_deregister_participant";

   function q_omg_security_get_local_participant_handle (pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) return Interfaces.Integer_64  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_get_local_participant_handle";

   function q_omg_get_participant_security_info (pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant; info : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_security_info) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:235
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_get_participant_security_info";

   function q_omg_is_similar_participant_security_info (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant; proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:267
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_is_similar_participant_security_info";

   function q_omg_plist_keyhash_is_protected (plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:276
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_plist_keyhash_is_protected";

   function q_omg_is_endpoint_protected (plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:290
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_is_endpoint_protected";

   procedure q_omg_log_endpoint_protection (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:298
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_log_endpoint_protection";

   function q_omg_security_check_create_topic
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      pp_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      topic_name : Interfaces.C.Strings.chars_ptr;
      qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:315
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_check_create_topic";

   function q_omg_get_writer_security_info (wr : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer; info : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_security_info) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:327
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_get_writer_security_info";

   function determine_publication_writer (wr : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer) return unsigned  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:344
   with Import => True, 
        Convention => C, 
        External_Name => "determine_publication_writer";

   function q_omg_security_check_create_writer
     (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant;
      domain_id : Interfaces.Unsigned_32;
      topic_name : Interfaces.C.Strings.chars_ptr;
      writer_qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:361
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_check_create_writer";

   procedure q_omg_security_register_writer (wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:375
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_register_writer";

   procedure q_omg_security_deregister_writer (wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:386
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_deregister_writer";

   function q_omg_get_reader_security_info (rd : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader; info : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_security_info) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:398
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_get_reader_security_info";

   function determine_subscription_writer (rd : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader) return unsigned  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:415
   with Import => True, 
        Convention => C, 
        External_Name => "determine_subscription_writer";

   function q_omg_security_check_create_reader
     (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant;
      domain_id : Interfaces.Unsigned_32;
      topic_name : Interfaces.C.Strings.chars_ptr;
      reader_qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:447
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_check_create_reader";

   procedure q_omg_security_register_reader (rd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:461
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_register_reader";

   procedure q_omg_security_deregister_reader (rd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:472
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_deregister_reader";

   function is_proxy_participant_deletion_allowed
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      pwr_entityid : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:490
   with Import => True, 
        Convention => C, 
        External_Name => "is_proxy_participant_deletion_allowed";

   function q_omg_security_is_remote_rtps_protected (proxy_pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant; entityid : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:503
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_is_remote_rtps_protected";

   procedure set_proxy_participant_security_info (proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant; plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:512
   with Import => True, 
        Convention => C, 
        External_Name => "set_proxy_participant_security_info";

   function q_omg_security_is_local_rtps_protected (pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant; entityid : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:525
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_is_local_rtps_protected";

   function q_omg_participant_allow_unauthenticated (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:537
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_participant_allow_unauthenticated";

   procedure q_omg_security_init_remote_participant (proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:545
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_init_remote_participant";

   procedure q_omg_security_remote_participant_set_initialized (proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:547
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_remote_participant_set_initialized";

   function q_omg_security_remote_participant_is_initialized (proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:549
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_remote_participant_is_initialized";

   function q_omg_security_register_remote_participant
     (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant;
      proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant;
      shared_secret : Interfaces.Integer_64) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:568
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_register_remote_participant";

   procedure q_omg_security_set_remote_participant_authenticated (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant; proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:582
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_set_remote_participant_authenticated";

   procedure q_omg_security_deregister_remote_participant (proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:590
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_deregister_remote_participant";

   procedure q_omg_security_participant_send_tokens (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant; proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:602
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_participant_send_tokens";

   function q_omg_security_get_remote_participant_handle (proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant) return Interfaces.Integer_64  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:617
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_get_remote_participant_handle";

   procedure q_omg_security_set_participant_crypto_tokens
     (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant;
      proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant;
      tokens : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_dataholderseq)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:632
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_set_participant_crypto_tokens";

   function q_omg_writer_is_discovery_protected (wr : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:641
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_writer_is_discovery_protected";

   function q_omg_writer_is_submessage_protected (wr : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:650
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_writer_is_submessage_protected";

   function q_omg_writer_is_payload_protected (wr : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:659
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_writer_is_payload_protected";

   function q_omg_security_check_remote_writer_permissions
     (pwr : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_writer;
      domain_id : Interfaces.Unsigned_32;
      pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:676
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_check_remote_writer_permissions";

   function q_omg_security_match_remote_writer_enabled
     (rd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader;
      pwr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_writer;
      crypto_handle : access Interfaces.Integer_64) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:698
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_match_remote_writer_enabled";

   procedure q_omg_security_deregister_remote_writer_match
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      rd_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      match : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.rd_pwr_match)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:712
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_deregister_remote_writer_match";

   procedure q_omg_security_set_remote_writer_crypto_tokens
     (rd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader;
      pwr_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      tokens : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_dataholderseq)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:726
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_set_remote_writer_crypto_tokens";

   procedure q_omg_security_deregister_remote_writer (pwr : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_writer)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:735
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_deregister_remote_writer";

   procedure set_proxy_reader_security_info (prd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader; plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:744
   with Import => True, 
        Convention => C, 
        External_Name => "set_proxy_reader_security_info";

   procedure q_omg_get_proxy_reader_security_info
     (prd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader;
      plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist;
      info : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_security_info)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:756
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_get_proxy_reader_security_info";

   function q_omg_reader_is_discovery_protected (rd : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:765
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_reader_is_discovery_protected";

   function q_omg_reader_is_submessage_protected (rd : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:774
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_reader_is_submessage_protected";

   function q_omg_security_check_remote_reader_permissions
     (prd : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader;
      domain_id : Interfaces.Unsigned_32;
      pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant;
      relay_only : access Extensions.bool) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:793
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_check_remote_reader_permissions";

   procedure q_omg_get_proxy_endpoint_security_info
     (entity : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_common;
      proxypp_sec_info : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_security_info;
      plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist;
      info : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_security_info)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:805
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_get_proxy_endpoint_security_info";

   function q_omg_security_match_remote_reader_enabled
     (wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      prd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader;
      relay_only : Extensions.bool;
      crypto_handle : access Interfaces.Integer_64) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:830
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_match_remote_reader_enabled";

   procedure q_omg_security_deregister_remote_reader_match
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      wr_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      match : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.wr_prd_match)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:844
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_deregister_remote_reader_match";

   procedure q_omg_security_set_remote_reader_crypto_tokens
     (wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      prd_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      tokens : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_dataholderseq)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:858
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_set_remote_reader_crypto_tokens";

   procedure q_omg_security_deregister_remote_reader (prd : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:867
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_deregister_remote_reader";

   function q_omg_security_encode_rtps_message
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      src_handle : Interfaces.Integer_64;
      src_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      src_buf : access unsigned_char;
      src_len : size_t;
      dst_buf : System.Address;
      dst_len : access size_t;
      dst_handle : Interfaces.Integer_64) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:885
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_encode_rtps_message";

   function encode_payload
     (wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      vec : access CycloneDDS.Low_Level.x86_64_linux_gnu_bits_types_struct_iovec_h.iovec;
      buf : System.Address) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:917
   with Import => True, 
        Convention => C, 
        External_Name => "encode_payload";

   function decode_Data
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      sampleinfo : access CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.nn_rsample_info;
      payloadp : access unsigned_char;
      payloadsz : Interfaces.Unsigned_32;
      submsg_len : access size_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:939
   with Import => True, 
        Convention => C, 
        External_Name => "decode_Data";

   function decode_DataFrag
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      sampleinfo : access CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.nn_rsample_info;
      payloadp : access unsigned_char;
      payloadsz : Interfaces.Unsigned_32;
      submsg_len : access size_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:961
   with Import => True, 
        Convention => C, 
        External_Name => "decode_DataFrag";

   procedure encode_datareader_submsg
     (msg : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.nn_xmsg;
      sm_marker : CycloneDDS.Low_Level.dds_ddsi_q_xmsg_h.nn_xmsg_marker;
      pwr : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_writer;
      rd_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:977
   with Import => True, 
        Convention => C, 
        External_Name => "encode_datareader_submsg";

   procedure encode_datawriter_submsg
     (msg : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.nn_xmsg;
      sm_marker : CycloneDDS.Low_Level.dds_ddsi_q_xmsg_h.nn_xmsg_marker;
      wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:992
   with Import => True, 
        Convention => C, 
        External_Name => "encode_datawriter_submsg";

   function validate_msg_decoding
     (e : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_common;
      c : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_endpoint_common;
      proxypp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant;
      rst : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.receiver_state;
      prev_smid : CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.SubmessageKind_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:1012
   with Import => True, 
        Convention => C, 
        External_Name => "validate_msg_decoding";

   function decode_SecPrefix
     (rst : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.receiver_state;
      submsg : access unsigned_char;
      submsg_size : size_t;
      msg_end : access unsigned_char;
      src_prefix : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_prefix;
      dst_prefix : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_prefix;
      byteswap : int) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:1040
   with Import => True, 
        Convention => C, 
        External_Name => "decode_SecPrefix";

   function decode_rtps_message
     (ts1 : access CycloneDDS.Low_Level.dds_ddsi_q_thread_h.thread_state1;
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      rmsg : System.Address;
      hdr : System.Address;
      buff : System.Address;
      sz : access CycloneDDS.Low_Level.unistd_h.ssize_t;
      rbpool : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_rbufpool;
      isstream : Extensions.bool) return nn_rtps_msg_state_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:1070
   with Import => True, 
        Convention => C, 
        External_Name => "decode_rtps_message";

   function secure_conn_write
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      conn : CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn_t;
      dst : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
      niov : size_t;
      iov : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_types_struct_iovec_h.iovec;
      flags : Interfaces.Unsigned_32;
      msg_len : access CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.MsgLen;
      dst_one : Extensions.bool;
      sec_info : access nn_msg_sec_info_t;
      conn_write_cb : CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_write_fn_t) return CycloneDDS.Low_Level.unistd_h.ssize_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:1090
   with Import => True, 
        Convention => C, 
        External_Name => "secure_conn_write";

   function q_omg_security_load
     (security_context : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.dds_security_context;
      qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:1116
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_load";

   procedure q_omg_security_init (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:1119
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_init";

   procedure q_omg_security_stop (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:1121
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_stop";

   procedure q_omg_security_deinit (sc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.dds_security_context)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:1123
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_deinit";

   procedure q_omg_security_free (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:1125
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_free";

   function q_omg_is_security_loaded (sc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.dds_security_context) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:1127
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_is_security_loaded";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_security_omg_h;
