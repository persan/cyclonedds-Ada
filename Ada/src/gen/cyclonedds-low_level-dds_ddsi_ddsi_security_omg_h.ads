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

limited with CycloneDDS.Low_Level.dds_ddsrt_iovec_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_radmin_h;
with CycloneDDS.Low_Level.dds_ddsi_q_xmsg_h;
with CycloneDDS.Low_Level.dds_ddsi_q_protocol_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_thread_h;

with CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h;
limited with CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_security_omg_h is

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

   type nn_rtps_msg_state_t is 
     (NN_RTPS_MSG_STATE_ERROR,
      NN_RTPS_MSG_STATE_PLAIN,
      NN_RTPS_MSG_STATE_ENCODED)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:42

   type nn_msg_sec_info is record
      encoded : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:54
      use_rtps_encoding : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:55
      src_pp_handle : aliased long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:56
      dst_pp_handle : aliased long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:57
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:53

   subtype nn_msg_sec_info_t is nn_msg_sec_info;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:58

   type pp_proxypp_match is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:66
      proxypp_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:67
      proxypp_crypto_handle : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantCryptoHandle;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:68
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:65

   type proxypp_pp_match is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:72
      pp_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:73
      pp_crypto_handle : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantCryptoHandle;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:74
      permissions_handle : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:75
      shared_secret : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SharedSecretHandle;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:76
      authenticated : aliased Extensions.bool;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:77
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:71

   type participant_sec_attributes is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:81
      pp_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:82
      attr : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantSecurityAttributes;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:83
      local_identity_handle : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityHandle;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:84
      permissions_handle : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:85
      crypto_handle : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantCryptoHandle;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:86
      plugin_attr : aliased Extensions.bool;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:87
      lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:88
      proxy_participants : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_ctree_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:89
      initialized : aliased Extensions.bool;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:90
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:80

   type proxy_participant_sec_attributes is record
      sc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.dds_security_context;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:94
      remote_identity_handle : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityHandle;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:95
      crypto_handle : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantCryptoHandle;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:96
      lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:97
      participants : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_tree_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:98
      initialized : aliased Extensions.bool;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:99
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:93

   type writer_sec_attributes is record
      attr : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_EndpointSecurityAttributes;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:103
      crypto_handle : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatawriterCryptoHandle;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:104
      plugin_attr : aliased Extensions.bool;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:105
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:102

   type reader_sec_attributes is record
      attr : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_EndpointSecurityAttributes;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:109
      crypto_handle : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatareaderCryptoHandle;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:110
      plugin_attr : aliased Extensions.bool;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:111
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:108

   function q_omg_participant_get_access_control (pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) return access CycloneDDS.Low_Level.dds_security_dds_security_api_access_control_h.dds_security_access_control  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_participant_get_access_control";

   function q_omg_participant_get_authentication (pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) return access CycloneDDS.Low_Level.dds_security_dds_security_api_authentication_h.dds_security_authentication  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_participant_get_authentication";

   function q_omg_participant_get_cryptography (pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) return access CycloneDDS.Low_Level.dds_security_dds_security_api_cryptography_h.dds_security_cryptography  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_participant_get_cryptography";

   procedure q_omg_vlog_exception
     (lc : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h.ddsrt_log_cfg;
      cat : unsigned;
      c_exception : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException;
      file : Interfaces.C.Strings.chars_ptr;
      line : unsigned;
      func : Interfaces.C.Strings.chars_ptr;
      fmt : Interfaces.C.Strings.chars_ptr;
      ap : access System.Address)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_vlog_exception";

   procedure q_omg_log_exception
     (lc : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h.ddsrt_log_cfg;
      cat : unsigned;
      c_exception : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException;
      file : Interfaces.C.Strings.chars_ptr;
      line : unsigned;
      func : Interfaces.C.Strings.chars_ptr;
      fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_log_exception";

  --*
  -- * @brief Check if access control is enabled for the participant.
  -- *
  -- * @param[in] pp  Participant to check.
  -- *
  -- * @returns bool  True if access control is enabled for participant
  --  

   function q_omg_participant_is_access_protected (pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_participant_is_access_protected";

  --*
  -- * @brief Check if protection at RTPS level is enabled for the participant.
  -- *
  -- * @param[in] pp  Participant to check.
  -- *
  -- * @returns bool  True if RTPS protection enabled for participant
  --  

   function q_omg_participant_is_rtps_protected (pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_participant_is_rtps_protected";

  --*
  -- * @brief Check if liveliness is protected for the participant.
  -- *
  -- * @param[in] pp  Participant to check.
  -- *
  -- * @returns bool  True  if liveliness data for participant is protected
  --  

   function q_omg_participant_is_liveliness_protected (pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_participant_is_liveliness_protected";

  --*
  -- * @brief Check if discovery is protected for the participant.
  -- *
  -- * @param[in] pp  Participant to check.
  -- *
  -- * @returns bool  True  if discovery data for participant is protected
  --  

   function q_omg_participant_is_discovery_protected (pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_participant_is_discovery_protected";

  --*
  -- * @brief Check if security is enabled for the participant.
  -- *
  -- * @param[in] pp  Participant to check if it is secure.
  -- *
  -- * @returns bool  True if participant is secure
  --  

   function q_omg_participant_is_secure (pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_participant_is_secure";

  --*
  -- * @brief Check if security is enabled for the proxy participant.
  -- *
  -- * @param[in] proxypp  Proxy participant to check if it is secure.
  -- *
  -- * @returns bool  True if proxy participant is secure
  --  

   function q_omg_proxy_participant_is_secure (proxypp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_proxy_participant_is_secure";

  --*
  -- * @brief Check security if it is allowed to create the participant.
  -- *
  -- * When security is enabled for this participant it is checked if the
  -- * participant is authenticated by checking the provided security
  -- * certificates. When that is ok the participant is registered with
  -- * access control and with cryptography. When that is all successful
  -- * this function return true;
  -- *
  -- * @param[in] pp         The participant to check if alloweed by security.
  -- * #param[in] domain_id  The domain_id
  -- *
  -- * @returns dds_return_t
  -- * @retval DDS_RETCODE_OK   Participant is allowed
  -- * @retval DDS_RETCODE_NOT_ALLOWED_BY_SECURITY
  -- *                          Participant is not allowed
  --  

   function q_omg_security_check_create_participant (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant; domain_id : unsigned) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:192
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_check_create_participant";

   procedure q_omg_security_participant_set_initialized (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:194
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_participant_set_initialized";

   function q_omg_security_participant_is_initialized (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_participant_is_initialized";

  --*
  -- * @brief Remove the participant from the security plugins.
  -- *
  -- * When the participant was registered with the security
  -- * plugins then this function will release the allocated
  -- * security resources.
  -- *
  -- * @param[in] pp  Participant to remove.
  --  

   procedure q_omg_security_deregister_participant (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:207
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_deregister_participant";

  --*
  -- * @brief Get the identity handle associate with this participant.
  -- *
  -- * This function returns the identity handle that was created
  -- * when the participant was authenticated. This handle corresponds
  -- * with the handle returned by calling validate_local_identity on
  -- * the authentication plugin.
  -- *
  -- * @param[in] pp  Participant to check if it is secure.
  -- *
  -- * @returns int64_t
  -- * @retval !0 Identity handle associated with the participant.
  -- * @retval 0  Invalid handle the participant was not registered
  --  

   function q_omg_security_get_local_participant_handle (pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) return long  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_get_local_participant_handle";

  --*
  -- * @brief Get security info flags of the given participant.
  -- *
  -- * @param[in]  pp    Participant to get the security info from.
  -- * @param[out] info  The security info.
  -- *
  -- * @returns bool
  -- * @retval true   Security info set.
  -- * @retval false  Security info not set.
  --  

   function q_omg_get_participant_security_info (pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant; info : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_security_info_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:235
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_get_participant_security_info";

  --*
  -- * @brief Get the is_rtps_protected flag of the given remote participant.
  -- *
  -- * @param[in] pp        The participant.
  -- * @param[in] entityid  ID of the entity to check.
  -- *
  -- * @returns bool
  -- * @retval true   RTPS protected is set.
  -- * @retval false  RTPS protected is not set.
  --  

  --*
  -- * @brief Check if the participant and the proxy participant
  -- *        have compatible security info settings.
  -- *
  -- * Associated with a secure participant is the ParticipantSecurityInfo parameter.
  -- * This parameter contains the setting of the security attributes and the associated
  -- * plugin security attributes of the secure participant.
  -- * This function will check if the received ParticipantSecurityInfo parameter is
  -- * compatible with the local ParticipantSecurityInfo parameter.
  -- *
  -- * @param[in] pp      The participant.
  -- * @param[in] proxypp The proxy participant.
  -- *
  -- * @returns bool
  -- * @retval true   The participant and the proxy participant have compatible
  -- *                security info settings.
  -- * @retval false  Otherwise.
  --  

   function q_omg_is_similar_participant_security_info (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant; proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:267
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_is_similar_participant_security_info";

  --*
  -- * @brief Check if the parameter list key hash is protected
  -- *
  -- * @param[in] plist        The parameter list
  -- *
  -- * @returns bool  True if the parameter list key hash is protected
  --  

   function q_omg_plist_keyhash_is_protected (plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:276
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_plist_keyhash_is_protected";

  --*
  -- * @brief Check if the endpoint is protected
  -- *
  -- * Checks whether the provided parameter list has the flag
  -- * ENDPOINT_SECURITY_ATTRIBUTES_FLAG_IS_VALID set. When this flag
  -- * is set, this implies that the remote endpoint has protection
  -- * enabled.
  -- *
  -- * @param[in] plist        The parameter list
  -- *
  -- * @returns bool  True if the endpoint is protected
  --  

   function q_omg_is_endpoint_protected (plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:290
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_is_endpoint_protected";

  --*
  -- * @brief Writes the security attributes and security plugin attributes to log (category discovery)
  -- *
  -- * @param[in] gv        Global variable
  -- * @param[in] plist     The parameter list
  --  

   procedure q_omg_log_endpoint_protection (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:298
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_log_endpoint_protection";

  --*
  -- * @brief Check if security allows to create the topic.
  -- *
  -- * This function checks with access control if is allowed to create
  -- * this topic for the specified domain.
  -- *
  -- * @param[in] gv          The domain global information.
  -- * @param[in] pp_guid     The participant guid.
  -- * @param[in] topic_name  The name of the  topic.
  -- * @param[in] qos         The topic QoS used.
  -- *
  -- * @returns bool
  -- * @retval true   Creation of the topic is allowed
  -- * @retval false  Otherwise.
  --  

   function q_omg_security_check_create_topic
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      pp_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      topic_name : Interfaces.C.Strings.chars_ptr;
      qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:315
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_check_create_topic";

  --*
  -- * @brief Get security info flags of the given writer.
  -- *
  -- * @param[in]  wr    Writer to get the security info from.
  -- * @param[out] info  The security info.
  -- *
  -- * @returns bool
  -- * @retval true   Security info set.
  -- * @retval false  Security info not set (probably unsecure writer).
  --  

   function q_omg_get_writer_security_info (wr : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer; info : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_security_info_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:327
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_get_writer_security_info";

  --*
  -- * @brief Return the builtin writer id for this writers' discovery.
  -- *
  -- * Return builtin entity id of the writer to use for the publication
  -- * discovery information.
  -- * Depending on whether the discovery is protected or not (for the
  -- * given writer), either the default writer or protected writer needs
  -- * to be used.
  -- *
  -- * @param[in] wr Writer to determine the publication writer from.
  -- *
  -- * @returns unsigned
  -- * @retval NN_ENTITYID_SEDP_BUILTIN_PUBLICATIONS_SECURE_WRITER
  -- * @retval NN_ENTITYID_SEDP_BUILTIN_PUBLICATIONS_WRITER
  --  

   function determine_publication_writer (wr : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer) return unsigned  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:344
   with Import => True, 
        Convention => C, 
        External_Name => "determine_publication_writer";

  --*
  -- * @brief Check if security allows to create the writer.
  -- *
  -- * This function checks with access control if is allowed to create
  -- * this writer for the specified domain.
  -- *
  -- * @param[in] pp          Participant on which the topic is being created.
  -- * @param[in] domain_id   The corresponding domain_id.
  -- * @param[in] topic_name  The name of the topic.
  -- * @param[in] writer_qos  The writer QoS used.
  -- *
  -- * @returns bool
  -- * @retval true   Creation of the writer is allowed
  -- * @retval false  Otherwise.
  --  

   function q_omg_security_check_create_writer
     (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant;
      domain_id : unsigned;
      topic_name : Interfaces.C.Strings.chars_ptr;
      writer_qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:361
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_check_create_writer";

  --*
  -- * @brief Register the writer with security.
  -- *
  -- * This function registers the writer with security
  -- * when the associated participant has security enabled.
  -- * The security settings associated with this writer are determined
  -- * and the writer is registered with cryptography when needed by
  -- * the security settings which indicate if payload protection and or
  -- * submessage protection is enabled for this writer.
  -- *
  -- * @param[in] wr  The writer to register.
  --  

   procedure q_omg_security_register_writer (wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:375
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_register_writer";

  --*
  -- * @brief Remove the writer from security.
  -- *
  -- * When the writer was registered with security then this function
  -- * will remove the writer from security which will free the allocated
  -- * security resource created for this writer.
  -- *
  -- * @param[in] wr  The writer to remove.
  --  

   procedure q_omg_security_deregister_writer (wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:386
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_deregister_writer";

  --*
  -- * @brief Get security info flags of the given reader.
  -- *
  -- * @param[in]  rd    Reader to get the security info from.
  -- * @param[out] info  The security info.
  -- *
  -- * @returns bool
  -- * @retval true   Security info set.
  -- * @retval false  Security info not set (probably unsecure reader).
  --  

   function q_omg_get_reader_security_info (rd : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader; info : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_security_info_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:398
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_get_reader_security_info";

  --*
  -- * @brief Return the builtin writer id for this readers' discovery.
  -- *
  -- * Return builtin entity id of the writer to use for the subscription
  -- * discovery information.
  -- * Depending on whether the discovery is protected or not (for the
  -- * given reader), either the default writer or protected writer needs
  -- * to be used.
  -- *
  -- * @param[in] rd Reader to determine the subscription writer from.
  -- *
  -- * @returns unsigned
  -- * @retval NN_ENTITYID_SEDP_BUILTIN_SUBSCRIPTIONS_SECURE_WRITER
  -- * @retval NN_ENTITYID_SEDP_BUILTIN_SUBSCRIPTIONS_WRITER
  --  

   function determine_subscription_writer (rd : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader) return unsigned  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:415
   with Import => True, 
        Convention => C, 
        External_Name => "determine_subscription_writer";

  --*
  -- * @brief Return the builtin writer id for topic discovery.
  -- *
  -- * Return builtin entity id of the writer to use for the topic
  -- * discovery information.
  -- *
  -- * @param[in] tp Topic to determine the writer from.
  -- *
  -- * @returns unsigned
  -- * @retval NN_ENTITYID_SEDP_BUILTIN_TOPIC_WRITER
  --  

  --*
  -- * @brief Check if security allows to create the reader.
  -- *
  -- * This function checks with access control if is allowed to create
  -- * this reader for the specified domain.
  -- *
  -- * @param[in] pp          Participant on which the topic is being created.
  -- * @param[in] domain_id   The corresponding domain_id.
  -- * @param[in] topic_name  The name of the topic.
  -- * @param[in] reader_qos  The reader QoS used.
  -- *
  -- * @returns bool
  -- * @retval true   Creation of the writer is allowed
  -- * @retval false  Otherwise.
  --  

   function q_omg_security_check_create_reader
     (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant;
      domain_id : unsigned;
      topic_name : Interfaces.C.Strings.chars_ptr;
      reader_qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:447
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_check_create_reader";

  --*
  -- * @brief Register the reader with security.
  -- *
  -- * This function registers the reader with security
  -- * when the associated participant has security enabled.
  -- * The security settings associated with this reader are determined
  -- * and the reader is registered with cryptography when needed by
  -- * the security settings which indicate if submessage protection is
  -- *  enabled for this reader.
  -- *
  -- * @param[in] rd  The reader to register.
  --  

   procedure q_omg_security_register_reader (rd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:461
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_register_reader";

  --*
  -- * @brief Remove the reader from security.
  -- *
  -- * When the reader was registered with security then this function
  -- * will remove the reader from security which will free the allocated
  -- * security resource created for this reader.
  -- *
  -- * @param[in] rd  The reader to remove.
  --  

   procedure q_omg_security_deregister_reader (rd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:472
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_deregister_reader";

  --*
  -- * @brief Determine if the proxy participant is allowed to be deleted
  -- *        by the given writer.
  -- *
  -- * If an proxy participant is authenticated, it is only allowed to
  -- * to deleted when a dispose is received from the proper protected
  -- * discovery writer.
  -- *
  -- * @param[in] gv           Used for tracing.
  -- * @param[in] guid         Guid of the proxy participant to be deleted.
  -- * @param[in] pwr_entityid Writer that send the dispose.
  -- *
  -- * @returns bool
  -- * @retval true   The proxy participant may be deleted.
  -- * @retval false  The proxy participant may not be deleted by this writer.
  --  

   function is_proxy_participant_deletion_allowed
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      pwr_entityid : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:490
   with Import => True, 
        Convention => C, 
        External_Name => "is_proxy_participant_deletion_allowed";

  --*
  -- * @brief Determine if the messages, related to the given remote
  -- * entity, are RTPS protected or not.
  -- *
  -- * @param[in] proxy_pp  Related proxy participant.
  -- * @param[in] entityid  ID of the entity to check.
  -- *
  -- * @returns bool
  -- * @retval true   The entity messages are RTPS protected.
  -- * @retval false  The entity messages are not RTPS protected.
  --  

   function q_omg_security_is_remote_rtps_protected (proxy_pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant; entityid : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:503
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_is_remote_rtps_protected";

  --*
  -- * @brief Set security information, depending on plist, into the given
  -- * proxy participant.
  -- *
  -- * @param[in] proxypp  Proxy participant to set security info on.
  -- * @param[in] plist    Paramater list, possibly contains security info.
  --  

   procedure set_proxy_participant_security_info (proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant; plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:512
   with Import => True, 
        Convention => C, 
        External_Name => "set_proxy_participant_security_info";

  --*
  -- * @brief Determine if the messages, related to the given remote
  -- * entity, are RTPS protected or not.
  -- *
  -- * @param[in] pp       The participant.
  -- * @param[in] entityid ID of the entity to check.
  -- *
  -- * @returns bool
  -- * @retval true   The entity messages are RTPS protected.
  -- * @retval false  The entity messages are not RTPS protected.
  --  

   function q_omg_security_is_local_rtps_protected (pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant; entityid : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:525
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_is_local_rtps_protected";

  --*
  -- * @brief Check if the participant allows communication with unauthenticated
  -- *        participants
  -- *
  -- * @param[in] pp  The participant.
  -- *
  -- * @returns bool
  -- * @retval true   The participant allows unauthenticated communication
  -- * @retval false  Otherwise.
  --  

   function q_omg_participant_allow_unauthenticated (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:537
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_participant_allow_unauthenticated";

  --*
  -- * @brief Initialize the proxy participant security attributes
  -- *
  -- * @param[in] proxypp  The proxy participant.
  -- *
  --  

   procedure q_omg_security_init_remote_participant (proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:545
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_init_remote_participant";

   procedure q_omg_security_remote_participant_set_initialized (proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:547
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_remote_participant_set_initialized";

   function q_omg_security_remote_participant_is_initialized (proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:549
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_remote_participant_is_initialized";

  --*
  -- * @brief Registers the matched proxy participant with the crypto plugin
  -- *
  -- * When the proxy participant is authenticated and allowed by access control then the match between the local and
  -- * the remote participant must be registered with the cypto factory provided by the crypto plugin. The
  -- * shared secret handle obtained from the authentication phase and the permission handle returned when validating
  -- * the proxy participant with access control plugin have to be provided.
  -- *
  -- *
  -- * @param[in] pp                 The participant.
  -- * @param[in] proxypp            The proxy participant.
  -- * @param[in] shared_secret      The shared_secret handle.
  -- *
  -- * @returns bool
  -- * @retval true    The proxy participant is allowed.
  -- * @retval false   The proxy participant is not allowed.
  --  

   function q_omg_security_register_remote_participant
     (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant;
      proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant;
      shared_secret : long) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:568
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_register_remote_participant";

  --*
  -- * @brief Sets the matching participant and proxy participant as authorized.
  -- *
  -- * When the authentication handshake has finished successfully and the
  -- * volatile secure readers and writers are matched then with this function
  -- * the matching local and remote participant are set to authenticated which
  -- * allows the crypto tokens to be exchanged and the corresponding entities
  -- * be matched.
  -- *
  -- * @param[in] pp                 The participant.
  -- * @param[in] proxypp            The proxy participant.
  --  

   procedure q_omg_security_set_remote_participant_authenticated (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant; proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:582
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_set_remote_participant_authenticated";

  --*
  -- * @brief Removes a registered proxy participant from administation of the authentication,
  -- *        access control and crypto plugins.
  -- *
  -- * @param[in] proxypp            The proxy participant.
  --  

   procedure q_omg_security_deregister_remote_participant (proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:590
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_deregister_remote_participant";

  --*
  -- * @brief Generate and send the crypto tokens needed for encoding RTPS messages.
  -- *
  -- * When the security settings indicate that RTPS message encoding or signing is
  -- * configured for the participant then this function will ask the cypto echange for
  -- * the corresponding cypto tokens and send these to the proxy participant.
  -- *
  -- * @param[in] pp                 The participant.
  -- * @param[in] proxypp            The proxy participant.
  --  

   procedure q_omg_security_participant_send_tokens (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant; proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:602
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_participant_send_tokens";

  --*
  -- * @brief Get the cypto handle associated with the proxy participant.
  -- *
  -- * This function returns the handle which is the association between
  -- * the proxy participant and the crypto plugin. This handle is created
  -- * when the proxy participant is registered with the crypto plugin.
  -- *
  -- * @param[in] proxypp            The proxy participant.
  -- *
  -- * @returns handle
  -- * @retval !0  Valid crypto handle associated with the proxy participant.
  -- * @retval 0   Otherwise.
  --  

   function q_omg_security_get_remote_participant_handle (proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant) return long  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:617
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_get_remote_participant_handle";

  --*
  -- * @brief Set the crypto tokens used for the encryption and decryption of RTPS messages.
  -- *
  -- * The remote participant  will send the crypto tokens when the security settings determine that the
  -- * communication between the participants must be secure. These tokens are used for the necryption and
  -- * decryption of complete RTPS messages. When these tokens are received this function will register these tokens
  -- * with the crypto plugin. The crypto plugin will return a crypto handle that will be used to associate the
  -- * stored tokens with the remote participant.
  -- *
  -- * @param[in] pp        The local participant.
  -- * @param[in] proxypp   The remote participant.
  -- * @param[in] tokens    The crypto token received from the remote participant for the local participant.
  --  

   procedure q_omg_security_set_participant_crypto_tokens
     (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant;
      proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant;
      tokens : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_dataholderseq_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:632
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_set_participant_crypto_tokens";

  --*
  -- * @brief Check if the writer has the is_discovery_protected flag set
  -- *
  -- * @param[in] wr        The local writer.
  -- *
  -- * @returns bool  True if the writer has the is_discovery_protected flag set
  --  

   function q_omg_writer_is_discovery_protected (wr : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:641
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_writer_is_discovery_protected";

  --*
  -- * @brief Check if the writer has the is_submessage_protected flag set
  -- *
  -- * @param[in] wr        The local writer.
  -- *
  -- * @returns bool  True if the writer has the is_submessage_protected flag set
  --  

   function q_omg_writer_is_submessage_protected (wr : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:650
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_writer_is_submessage_protected";

  --*
  -- * @brief Check if the writer has the is_payload_protected flag set
  -- *
  -- * @param[in] wr        The local writer.
  -- *
  -- * @returns bool  True if the writer has the is_payload_protected flag set
  --  

   function q_omg_writer_is_payload_protected (wr : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:659
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_writer_is_payload_protected";

  --*
  -- * @brief Check if the remote writer is allowed to communicate with endpoints of the
  -- *        local participant.
  -- *
  -- * This function will check with the access control plugin if the remote writer
  -- * is allowed to communicate with this participant.
  -- *
  -- * @param[in] pwr       The remote writer.
  -- * @param[in] domain_id The domain id.
  -- * @param[in] pp        The local participant.
  -- *
  -- * @returns bool
  -- * @retval true   The remote writer is allowed to communicate.
  -- * @retval false  Otherwise.
  --  

   function q_omg_security_check_remote_writer_permissions
     (pwr : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_writer;
      domain_id : unsigned;
      pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:676
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_check_remote_writer_permissions";

  --*
  -- * @brief Check it the remote writer is allowed to communicate with the local reader.
  -- *
  -- * When a remote writer is allowed by access control it has to be checked if the remote
  -- * writer is allowed to communicate with a particular local reader. This function will
  -- * check if the provided security end-point attributes are compatible, When the security
  -- * attributes are compatible then the function will register the reader and remote writer
  -- * match with the crypto factory and will also ask the crypto exchange to generate the
  -- * crypto tokens associate with the local reader which will be sent to the remote entity.
  -- * Note that the reader crypto tokens are used to encrypt the reader specific submessages
  -- * when submessage encoding or signing is configured.
  -- *
  -- * @param[in] rd   The local reader.
  -- * @param[in] pwr  The remote writer.
  -- * @param[out] crypto_handle  The crypto handle associated with the match.
  -- *
  -- * @returns bool
  -- * @retval true   The local reader and remote writer are allowed to communicate.
  -- * @retval false  Otherwise.
  --  

   function q_omg_security_match_remote_writer_enabled
     (rd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader;
      pwr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_writer;
      crypto_handle : access long) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:698
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_match_remote_writer_enabled";

  --*
  -- * @brief Release the security information associated with the match between a reader and
  -- * a remote writer.
  -- *
  -- * This function releases the security resources that were allocated for this reader and remote
  -- * writer match. For example it will release the security tokens that where associated with this
  -- * reader and the remote writer.
  -- *
  -- * @param[in] gv       The global parameters.
  -- * @param[in] rd_guid  The guid of the reader.
  -- * @param[in] match    The reader-proxy_writer match.
  --  

   procedure q_omg_security_deregister_remote_writer_match
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      rd_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      match : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.rd_pwr_match)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:712
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_deregister_remote_writer_match";

  --*
  -- * @brief Set the crypto tokens used for the secure communication from the remote writer to the reader.
  -- *
  -- * The remote writer instance will send the crypto tokens when the security settings determine that the
  -- * communication between the remote writer and the reader must be secure. When these tokens are received
  -- * this function will register these tokens with the crypto plugin and set the corresponding crypto handle returned
  -- * by the crypto plugin which is then used for decrypting messages received from that remote writer to the reader.
  -- *
  -- * @param[in] rd        The local reader.
  -- * @param[in] pwr_guid  The guid of the remote writer.
  -- * @param[in] tokens    The crypto token received from the remote writer for the reader.
  --  

   procedure q_omg_security_set_remote_writer_crypto_tokens
     (rd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader;
      pwr_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      tokens : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_dataholderseq_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:726
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_set_remote_writer_crypto_tokens";

  --*
  -- * @brief Release all the security resources associated with the remote writer.
  -- *
  -- * Cleanup security resource associated with the remote writer.
  -- *
  -- * @param[in] pwr       The remote writer.
  --  

   procedure q_omg_security_deregister_remote_writer (pwr : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_writer)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:735
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_deregister_remote_writer";

  --*
  -- * @brief Set security information, depending on plist and proxy participant,
  -- * into the given proxy reader.
  -- *
  -- * @param[in] prd      Proxy reader to set security info on.
  -- * @param[in] plist    Paramater list, possibly contains security info.
  --  

   procedure set_proxy_reader_security_info (prd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader; plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:744
   with Import => True, 
        Convention => C, 
        External_Name => "set_proxy_reader_security_info";

  --*
  -- * @brief Determine the security settings associated with the remote reader.
  -- *
  -- * From the security information contained in the parameter list from the remote reader
  -- * the corresponding security settings are determined and returned in the info parameter.
  -- *
  -- * @param[in] prd       The remote reader.
  -- * @param[in] plist     The parameter list from the remote reader.
  -- * @param[out] info     The security settings associated with the remote reader.
  --  

   procedure q_omg_get_proxy_reader_security_info
     (prd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader;
      plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist_t;
      info : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_security_info_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:756
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_get_proxy_reader_security_info";

  --*
  -- * @brief Check if the reader has the is_discovery_protected flag set
  -- *
  -- * @param[in] rd        The local reader.
  -- *
  -- * @returns bool  True if the reader has the is_discovery_protected flag set
  --  

   function q_omg_reader_is_discovery_protected (rd : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:765
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_reader_is_discovery_protected";

  --*
  -- * @brief Check if the reader has the is_submessage_protected flag set
  -- *
  -- * @param[in] rd        The local reader.
  -- *
  -- * @returns bool  True if the reader has the is_submessage_protected flag set
  --  

   function q_omg_reader_is_submessage_protected (rd : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:774
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_reader_is_submessage_protected";

  --*
  -- * @brief Check if the remote reader is allowed to communicate with endpoints of the
  -- *        local participant.
  -- *
  -- * This function will check with the access control plugin if the remote reader
  -- * is allowed to communicate with this participant.
  -- *
  -- * @param[in] prd         The remote reader.
  -- * @param[in] domain_id   The domain id.
  -- * @param[in] pp          The local participant.
  -- * @param[out] relay_only The "relay_only" value returned by the access control
  -- *                        operation check_remote_datareader()
  -- *
  -- * @returns bool
  -- * @retval true   The remote reader is allowed to communicate.
  -- * @retval false  Otherwise; relay_only is unspecified.
  --  

   function q_omg_security_check_remote_reader_permissions
     (prd : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader;
      domain_id : unsigned;
      pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant;
      relay_only : access Extensions.bool) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:793
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_check_remote_reader_permissions";

  --*
  -- * @brief Set security information, depending on plist and proxy participant,
  -- * into the given proxy endpoint.
  -- *
  -- * @param[in] entity            The endpoint common attributes.
  -- * @param[in] proxypp_sec_info  The security info of the proxy participant
  -- * @param[in] plist             Paramater list which may contain security info.
  -- * @param[in] info              The proxy endpoint security info to be set.
  --  

   procedure q_omg_get_proxy_endpoint_security_info
     (entity : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_common;
      proxypp_sec_info : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_security_info_t;
      plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist_t;
      info : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_security_info_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:805
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_get_proxy_endpoint_security_info";

  --*
  -- * @brief Check it the local writer is allowed to communicate with the remote reader.
  -- *
  -- * When a remote reader is allowed by accessstruct dds_security_garbage control it has to be checked if the local
  -- * writer is allowed to communicate with a particular local writer. This function will
  -- * check if the provided security end-point attributes are compatible, When the security
  -- * attributes are compatible then the function will register the writer and remote reader
  -- * match with the crypto factory and will also ask the crypto exchange to generate the
  -- * crypto tokens associate with the local writer which will be sent to the remote entity.
  -- * Note that the writer crypto tokens are used to encrypt the writer specific submessages
  -- * when submessage encoding or signing is configured and also the crypto tokens used
  -- * for encoding the payload of data or datafrag messages.
  -- *
  -- * @param[in] wr              The local writer.
  -- * @param[in] prd             The remote reader.
  -- * @param[in] relay_only      The "relay_only" returned by access control
  -- *                            operation check_remote_datareader()
  -- * @param[out] crypto_handle  The crypto handle associated with the match.
  -- *
  -- * @returns bool
  -- * @retval true   The local writer and remote reader are allowed to communicate.
  -- * @retval false  Otherwise.
  --  

   function q_omg_security_match_remote_reader_enabled
     (wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      prd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader;
      relay_only : Extensions.bool;
      crypto_handle : access long) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:830
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_match_remote_reader_enabled";

  --*
  -- * @brief Release the security information associated with the match between a writer and
  -- * a remote reader.
  -- *
  -- * This function releases the security resources that were allocated for this writer and remote
  -- * reader match. For example it will release the security tokens that where associated with this
  -- * writer and the remote reader.
  -- *
  -- * @param[in] gv       The global parameters.
  -- * @param[in] wr_guid  The guid of the writer.
  -- * @param[in] match    The writer-proxy_reader match.
  --  

   procedure q_omg_security_deregister_remote_reader_match
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      wr_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      match : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.wr_prd_match)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:844
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_deregister_remote_reader_match";

  --*
  -- * @brief Set the crypto tokens used for the secure communication from the remote reader to the writer.
  -- *
  -- * The remote reader instance will send the crypto tokens when the security settings determine that the
  -- * communication between the remote reader and the writer must be secure. When these tokens are received
  -- * this function will register these tokens with the crypto plugin and set the corresponding crypto handle returned
  -- * by the crypto plugin which is then used for decrypting messages received from that remote reader to the writer.
  -- *
  -- * @param[in] wr        The local writer.
  -- * @param[in] prd_guid  The guid of the remote reader.
  -- * @param[in] tokens    The crypto token received from the remote reader for the writer.
  --  

   procedure q_omg_security_set_remote_reader_crypto_tokens
     (wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      prd_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      tokens : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_dataholderseq_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:858
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_set_remote_reader_crypto_tokens";

  --*
  -- * @brief Release all the security resources associated with the remote reader.
  -- *
  -- * Cleanup security resource associated with the remote reader.
  -- *
  -- * @param[in] prd       The remote reader.
  --  

   procedure q_omg_security_deregister_remote_reader (prd : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:867
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_deregister_remote_reader";

  --*
  -- * @brief Encode RTPS message.
  -- *
  -- * @param[in]     src_handle  Security handle of data source.
  -- * @param[in]     src_guid    GUID of the entity data source.
  -- * @param[in]     src_buf     Original RTPS message.
  -- * @param[in]     src_len     Original RTPS message size.
  -- * @param[out]    dst_buf     Encoded RTPS message.
  -- * @param[out]    dst_len     Encoded RTPS message size.
  -- * @param[in]     dst_handle  Security handle of data destination.
  -- *
  -- * @returns bool
  -- * @retval true   Encoding succeeded.
  -- * @retval false  Encoding failed.
  --  

   function q_omg_security_encode_rtps_message
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      src_handle : long;
      src_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      src_buf : access unsigned_char;
      src_len : unsigned_long;
      dst_buf : System.Address;
      dst_len : access unsigned_long;
      dst_handle : long) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:885
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_encode_rtps_message";

  --*
  -- * @brief Encode payload when necessary.
  -- *
  -- * When encoding is necessary, *buf will be allocated and the vec contents
  -- * will change to point to that buffer.
  -- * It is expected that the vec contents is always aliased.
  -- *
  -- * If no encoding is necessary, nothing changes.
  -- *
  -- * encoding(    not needed) -> return( true), vec(untouched), buf(NULL)
  -- * encoding(needed&success) -> return( true), vec( buf(new))
  -- * encoding(needed&failure) -> return(false), vec(untouched), buf(NULL)
  -- *
  -- * @param[in]     wr   Writer that writes the payload.
  -- * @param[in,out] vec  An iovec that contains the payload.
  -- * @param[out]    buf  Buffer to contain the encoded payload.
  -- *
  -- * @returns bool
  -- * @retval true   Encoding succeeded or not necessary. Either way, vec
  -- *                contains the payload that should be send.
  -- * @retval false  Encoding was necessary, but failed.
  --  

   function encode_payload
     (wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      vec : access CycloneDDS.Low_Level.dds_ddsrt_iovec_h.ddsrt_iovec_t;
      buf : System.Address) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:917
   with Import => True, 
        Convention => C, 
        External_Name => "encode_payload";

  --*
  -- * @brief Decode the payload of a Data submessage.
  -- *
  -- * When decoding is necessary, the payloadp memory will be replaced
  -- * by the decoded payload. This means that the original submessage
  -- * now contains payload that can be deserialized.
  -- *
  -- * If no decoding is necessary, nothing changes.
  -- *
  -- * @param[in]     gv          Global information.
  -- * @param[in]     sampleinfo  Sample information.
  -- * @param[in,out] payloadp    Pointer to payload memory.
  -- * @param[in]     payloadsz   Size of payload.
  -- * @param[in,out] submsg_len  Size of submessage.
  -- *
  -- * @returns bool
  -- * @retval true   Decoding succeeded or not necessary. Either way, payloadp
  -- *                contains the data that should be deserialized.
  -- * @retval false  Decoding was necessary, but failed.
  --  

   function decode_Data
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      sampleinfo : access CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.nn_rsample_info;
      payloadp : access unsigned_char;
      payloadsz : unsigned;
      submsg_len : access unsigned_long) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:939
   with Import => True, 
        Convention => C, 
        External_Name => "decode_Data";

  --*
  -- * @brief Decode the payload of a DataFrag submessage.
  -- *
  -- * When decoding is necessary, the payloadp memory will be replaced
  -- * by the decoded payload. This means that the original submessage
  -- * now contains payload that can be deserialized.
  -- *
  -- * If no decoding is necessary, nothing changes.
  -- *
  -- * @param[in]     gv          Global information.
  -- * @param[in]     sampleinfo  Sample information.
  -- * @param[in,out] payloadp    Pointer to payload memory.
  -- * @param[in]     payloadsz   Size of payload.
  -- * @param[in,out] submsg_len  Size of submessage.
  -- *
  -- * @returns bool
  -- * @retval true   Decoding succeeded or not necessary. Either way, payloadp
  -- *                contains the data that should be deserialized.
  -- * @retval false  Decoding was necessary, but failed.
  --  

   function decode_DataFrag
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      sampleinfo : access CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.nn_rsample_info;
      payloadp : access unsigned_char;
      payloadsz : unsigned;
      submsg_len : access unsigned_long) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:961
   with Import => True, 
        Convention => C, 
        External_Name => "decode_DataFrag";

  --*
  -- * @brief Encode datareader submessage when necessary.
  -- *
  -- * When encoding is necessary, the original submessage will be replaced
  -- * by a new encoded submessage.
  -- * If the encoding fails, the original submessage will be removed.
  -- *
  -- * If no encoding is necessary, nothing changes.
  -- *
  -- * @param[in,out] msg       Complete message.
  -- * @param[in,out] sm_marker Submessage location within message.
  -- * @param[in]     pwr       Writer for which the message is intended.
  -- * @param[in]     rd_guid   Origin reader guid.
  --  

   procedure encode_datareader_submsg
     (msg : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg;
      sm_marker : CycloneDDS.Low_Level.dds_ddsi_q_xmsg_h.nn_xmsg_marker;
      pwr : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_writer;
      rd_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:977
   with Import => True, 
        Convention => C, 
        External_Name => "encode_datareader_submsg";

  --*
  -- * @brief Encode datawriter submessage when necessary.
  -- *
  -- * When encoding is necessary, the original submessage will be replaced
  -- * by a new encoded submessage.
  -- * If the encoding fails, the original submessage will be removed.
  -- *
  -- * If no encoding is necessary, nothing changes.
  -- *
  -- * @param[in,out] msg       Complete message.
  -- * @param[in,out] sm_marker Submessage location within message.
  -- * @param[in]     wr        Origin writer guid.
  --  

   procedure encode_datawriter_submsg
     (msg : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg;
      sm_marker : CycloneDDS.Low_Level.dds_ddsi_q_xmsg_h.nn_xmsg_marker;
      wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:992
   with Import => True, 
        Convention => C, 
        External_Name => "encode_datawriter_submsg";

  --*
  -- * @brief Check if given submessage is properly decoded.
  -- *
  -- * When decoding is necessary, it should be checked if a plain submessage was
  -- * actually decoded. Otherwise data can be injected just by inserting a plain
  -- * submessage directly.
  -- *
  -- * @param[in] e         Entity information.
  -- * @param[in] c         Proxy endpoint information.
  -- * @param[in] proxypp   Related proxy participant.
  -- * @param[in] rst       Receiver information.
  -- * @param[in] prev_smid Previously handled submessage ID.
  -- *
  -- * @returns bool
  -- * @retval true   Decoding succeeded or was not necessary.
  -- * @retval false  Decoding was necessary, but not detected.
  --  

   function validate_msg_decoding
     (e : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_common;
      c : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_endpoint_common;
      proxypp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant;
      rst : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.receiver_state;
      prev_smid : CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.SubmessageKind_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:1012
   with Import => True, 
        Convention => C, 
        External_Name => "validate_msg_decoding";

  --*
  -- * @brief Decode not only SecPrefix, but also the SecBody and SecPostfix
  -- * sub-messages.
  -- *
  -- * When encrypted, the original SecBody will be replaced by the decrypted
  -- * submessage. Then the normal sequence can continue as if there was no
  -- * encrypted data.
  -- *
  -- * @param[in]     rst         Receiver information.
  -- * @param[in,out] submsg      Pointer to SecPrefix/(SecBody|Submsg)/SecPostfix.
  -- * @param[in]     submsg_size Size of SecPrefix submessage.
  -- * @param[in]     msg_end     End of the complete message.
  -- * @param[in]     src_prefix  Prefix of the source entity.
  -- * @param[in]     dst_prefix  Prefix of the destination entity.
  -- * @param[in]     byteswap    Do the bytes need swapping?
  -- *
  -- * @returns bool
  -- * @retval true   Decoding succeeded.
  -- * @retval false  Decoding failed.
  --  

   function decode_SecPrefix
     (rst : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.receiver_state;
      submsg : access unsigned_char;
      submsg_size : unsigned_long;
      msg_end : access unsigned_char;
      src_prefix : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_prefix_t;
      dst_prefix : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_prefix_t;
      byteswap : int) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:1040
   with Import => True, 
        Convention => C, 
        External_Name => "decode_SecPrefix";

  --*
  -- * @brief Decode the RTPS message.
  -- *
  -- * When encrypted, the original buffers and information will be replaced
  -- * by the decrypted RTPS message. Then the normal sequence can continue
  -- * as if there was no encrypted data.
  -- *
  -- * @param[in]     ts1         Thread information.
  -- * @param[in]     gv          Global information.
  -- * @param[in,out] rmsg        Message information.
  -- * @param[in,out] hdr         Message header.
  -- * @param[in,out] buff        Message buffer.
  -- * @param[in,out] sz          Message size.
  -- * @param[in]     rbpool      Buffers pool.
  -- * @param[in]     isstream    Is message a stream variant?
  -- *
  -- * @returns nn_rtps_msg_state_t
  -- * @retval NN_RTPS_MSG_STATE_PLAIN    No decoding was necessary.
  -- * @retval NN_RTPS_MSG_STATE_ENCODED  Decoding succeeded.
  -- * @retval NN_RTPS_MSG_STATE_ERROR    Decoding failed.
  --  

   function decode_rtps_message
     (ts1 : access CycloneDDS.Low_Level.dds_ddsi_q_thread_h.thread_state1;
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      rmsg : System.Address;
      hdr : System.Address;
      buff : System.Address;
      sz : access CycloneDDS.Low_Level.unistd_h.ssize_t;
      rbpool : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_rbufpool;
      isstream : Extensions.bool) return nn_rtps_msg_state_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:1070
   with Import => True, 
        Convention => C, 
        External_Name => "decode_rtps_message";

  --*
  -- * @brief Send the RTPS message securely.
  -- *
  -- * @param[in]     conn          Connection to use.
  -- * @param[in]     dst           Possible destination information.
  -- * @param[in]     niov          Number of io vectors.
  -- * @param[in]     iov           Array of io vectors.
  -- * @param[in]     flags         Connection write flags.
  -- * @param[in,out] msg_len       Submessage containing length.
  -- * @param[in]     dst_one       Is there only one specific destination?
  -- * @param[in]     sec_info      Security information for handles.
  -- * @param[in]     conn_write_cb Function to call to do the actual writing.
  -- *
  -- * @returns ssize_t
  -- * @retval negative/zero    Something went wrong.
  -- * @retval positive         Secure writing succeeded.
  --  

   function secure_conn_write
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      conn : CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn_t;
      dst : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
      niov : unsigned_long;
      iov : access constant CycloneDDS.Low_Level.dds_ddsrt_iovec_h.ddsrt_iovec_t;
      flags : unsigned;
      msg_len : access CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.MsgLen_t;
      dst_one : Extensions.bool;
      sec_info : access nn_msg_sec_info_t;
      conn_write_cb : CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_write_fn_t) return CycloneDDS.Low_Level.unistd_h.ssize_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:1090
   with Import => True, 
        Convention => C, 
        External_Name => "secure_conn_write";

  --*
  -- * @brief Loads the security plugins with the given configuration.
  -- *        This function tries to load the plugins only once. Returns the same
  -- *        result on subsequent calls.
  -- *        It logs the reason and returns error if can not load a plugin.
  -- *
  -- * @param[in] qos   Participant qos which owns the Property list
  -- *                             that contains security configurations and
  -- *                             plugin properties that are required for loading libraries
  -- * @returns dds_return_t
  -- * @retval DDS_RETCODE_OK   All plugins are successfully loaded
  -- * @retval DDS_RETCODE_ERROR  One or more security plugins are not loaded.
  --  

   function q_omg_security_load
     (security_context : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.dds_security_context;
      qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:1116
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_load";

   procedure q_omg_security_init (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:1119
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_init";

   procedure q_omg_security_stop (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:1121
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_stop";

   procedure q_omg_security_deinit (sc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.dds_security_context)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:1123
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_deinit";

   procedure q_omg_security_free (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:1125
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_free";

   function q_omg_is_security_loaded (sc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.dds_security_context) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_security_omg.h:1127
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_is_security_loaded";

  -- Just let the parsing ignore the security sub-messages.  
end CycloneDDS.Low_Level.dds_ddsi_ddsi_security_omg_h;
