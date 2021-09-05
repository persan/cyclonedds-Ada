pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_security_dds_security_api_types_h;
limited with CycloneDDS.Low_Level
  .dds_security_dds_security_api_authentication_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;

package CycloneDDS.Low_Level.dds_security_dds_security_api_access_control_h is

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

   -- AccessControl Component
   type dds_security_access_control;
-- AccessControlListener Interface
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

   type dds_security_access_control_listener;
   type DDS_Security_access_control_listener_on_revoke_permissions is access function
     (arg1 : access constant dds_security_access_control;
      arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsHandle)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type dds_security_access_control_listener is record
      on_revoke_permissions : DDS_Security_access_control_listener_on_revoke_permissions;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_access_control_validate_local_permissions is access function
     (arg1 : access dds_security_access_control;
      arg2 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_authentication_h
        .dds_security_authentication;
      arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_IdentityHandle;
      arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_DomainId;
      arg5 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_Qos;
      arg6 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_PermissionsHandle with
      Convention => C;

   type DDS_Security_access_control_validate_remote_permissions is access function
     (arg1 : access dds_security_access_control;
      arg2 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_authentication_h
        .dds_security_authentication;
      arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_IdentityHandle;
      arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_IdentityHandle;
      arg5 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsToken;
      arg6 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_AuthenticatedPeerCredentialToken;
      arg7 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_PermissionsHandle with
      Convention => C;

   type DDS_Security_access_control_check_create_participant is access function
     (arg1 : access dds_security_access_control;
      arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsHandle;
      arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_DomainId;
      arg4 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_Qos;
      arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_check_create_datawriter is access function
     (arg1 : access dds_security_access_control;
      arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsHandle;
      arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_DomainId;
      arg4 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_char;
      arg5 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_Qos;
      arg6 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_PartitionQosPolicy;
      arg7 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_DataTags_t;
      arg8 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_check_create_datareader is access function
     (arg1 : access dds_security_access_control;
      arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsHandle;
      arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_DomainId;
      arg4 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_char;
      arg5 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_Qos;
      arg6 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_PartitionQosPolicy;
      arg7 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_DataTags_t;
      arg8 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_check_create_topic is access function
     (arg1 : access dds_security_access_control;
      arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsHandle;
      arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_DomainId;
      arg4 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_char;
      arg5 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_Qos;
      arg6 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_check_local_datawriter_register_instance is access function
     (arg1 : access dds_security_access_control;
      arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsHandle;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_Entity;
      arg4 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_DynamicData;
      arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_check_local_datawriter_dispose_instance is access function
     (arg1 : access dds_security_access_control;
      arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsHandle;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_Entity;
      arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_DynamicData;
      arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_check_remote_participant is access function
     (arg1 : access dds_security_access_control;
      arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsHandle;
      arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_DomainId;
      arg4 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_ParticipantBuiltinTopicDataSecure;
      arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_check_remote_datawriter is access function
     (arg1 : access dds_security_access_control;
      arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsHandle;
      arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_DomainId;
      arg4 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_PublicationBuiltinTopicDataSecure;
      arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_check_remote_datareader is access function
     (arg1 : access dds_security_access_control;
      arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsHandle;
      arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_DomainId;
      arg4 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_SubscriptionBuiltinTopicDataSecure;
      arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_boolean;
      arg6 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_check_remote_topic is access function
     (arg1 : access dds_security_access_control;
      arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsHandle;
      arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_DomainId;
      arg4 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_TopicBuiltinTopicData;
      arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_check_local_datawriter_match is access function
     (arg1 : access dds_security_access_control;
      arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsHandle;
      arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsHandle;
      arg4 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_PublicationBuiltinTopicDataSecure;
      arg5 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_SubscriptionBuiltinTopicDataSecure;
      arg6 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_check_local_datareader_match is access function
     (arg1 : access dds_security_access_control;
      arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsHandle;
      arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsHandle;
      arg4 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_SubscriptionBuiltinTopicDataSecure;
      arg5 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_PublicationBuiltinTopicDataSecure;
      arg6 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_check_remote_datawriter_register_instance is access function
     (arg1 : access dds_security_access_control;
      arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsHandle;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_Entity;
      arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_InstanceHandle;
      arg5 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_DynamicData;
      arg6 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_InstanceHandle;
      arg7 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_check_remote_datawriter_dispose_instance is access function
     (arg1 : access dds_security_access_control;
      arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsHandle;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_Entity;
      arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_InstanceHandle;
      arg5 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_DynamicData;
      arg6 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_get_permissions_token is access function
     (arg1 : access dds_security_access_control;
      arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsToken;
      arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsHandle;
      arg4 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_get_permissions_credential_token is access function
     (arg1 : access dds_security_access_control;
      arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsCredentialToken;
      arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsHandle;
      arg4 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_set_listener is access function
     (arg1 : access dds_security_access_control;
      arg2 : access constant dds_security_access_control_listener;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_return_permissions_token is access function
     (arg1 : access dds_security_access_control;
      arg2 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsToken;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_return_permissions_credential_token is access function
     (arg1 : access dds_security_access_control;
      arg2 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsCredentialToken;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_get_participant_sec_attributes is access function
     (arg1 : access dds_security_access_control;
      arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsHandle;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_ParticipantSecurityAttributes;
      arg4 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_get_topic_sec_attributes is access function
     (arg1 : access dds_security_access_control;
      arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsHandle;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_char;
      arg4 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_TopicSecurityAttributes;
      arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_get_datawriter_sec_attributes is access function
     (arg1 : access dds_security_access_control;
      arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsHandle;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_char;
      arg4 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_PartitionQosPolicy;
      arg5 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_DataTagQosPolicy;
      arg6 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_EndpointSecurityAttributes;
      arg7 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_get_datareader_sec_attributes is access function
     (arg1 : access dds_security_access_control;
      arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsHandle;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_char;
      arg4 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_PartitionQosPolicy;
      arg5 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_DataTagQosPolicy;
      arg6 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_EndpointSecurityAttributes;
      arg7 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_return_participant_sec_attributes is access function
     (arg1 : access dds_security_access_control;
      arg2 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_ParticipantSecurityAttributes;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_return_topic_sec_attributes is access function
     (arg1 : access dds_security_access_control;
      arg2 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_TopicSecurityAttributes;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_return_datawriter_sec_attributes is access function
     (arg1 : access dds_security_access_control;
      arg2 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_EndpointSecurityAttributes;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_return_datareader_sec_attributes is access function
     (arg1 : access dds_security_access_control;
      arg2 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_EndpointSecurityAttributes;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_access_control_return_permissions_handle is access function
     (arg1 : access dds_security_access_control;
      arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsHandle;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type dds_security_access_control is record
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      validate_local_permissions : DDS_Security_access_control_validate_local_permissions;
      validate_remote_permissions : DDS_Security_access_control_validate_remote_permissions;
      check_create_participant : DDS_Security_access_control_check_create_participant;
      check_create_datawriter : DDS_Security_access_control_check_create_datawriter;
      check_create_datareader : DDS_Security_access_control_check_create_datareader;
      check_create_topic : DDS_Security_access_control_check_create_topic;
      check_local_datawriter_register_instance : DDS_Security_access_control_check_local_datawriter_register_instance;
      check_local_datawriter_dispose_instance : DDS_Security_access_control_check_local_datawriter_dispose_instance;
      check_remote_participant : DDS_Security_access_control_check_remote_participant;
      check_remote_datawriter : DDS_Security_access_control_check_remote_datawriter;
      check_remote_datareader : DDS_Security_access_control_check_remote_datareader;
      check_remote_topic : DDS_Security_access_control_check_remote_topic;
      check_local_datawriter_match : DDS_Security_access_control_check_local_datawriter_match;
      check_local_datareader_match : DDS_Security_access_control_check_local_datareader_match;
      check_remote_datawriter_register_instance : DDS_Security_access_control_check_remote_datawriter_register_instance;
      check_remote_datawriter_dispose_instance : DDS_Security_access_control_check_remote_datawriter_dispose_instance;
      get_permissions_token : DDS_Security_access_control_get_permissions_token;
      get_permissions_credential_token : DDS_Security_access_control_get_permissions_credential_token;
      set_listener : DDS_Security_access_control_set_listener;
      return_permissions_token : DDS_Security_access_control_return_permissions_token;
      return_permissions_credential_token : DDS_Security_access_control_return_permissions_credential_token;
      get_participant_sec_attributes : DDS_Security_access_control_get_participant_sec_attributes;
      get_topic_sec_attributes : DDS_Security_access_control_get_topic_sec_attributes;
      get_datawriter_sec_attributes : DDS_Security_access_control_get_datawriter_sec_attributes;
      get_datareader_sec_attributes : DDS_Security_access_control_get_datareader_sec_attributes;
      return_participant_sec_attributes : DDS_Security_access_control_return_participant_sec_attributes;
      return_topic_sec_attributes : DDS_Security_access_control_return_topic_sec_attributes;
      return_datawriter_sec_attributes : DDS_Security_access_control_return_datawriter_sec_attributes;
      return_datareader_sec_attributes : DDS_Security_access_control_return_datareader_sec_attributes;
      return_permissions_handle : DDS_Security_access_control_return_permissions_handle;
   end record with
      Convention => C_Pass_By_Copy;

end CycloneDDS.Low_Level.dds_security_dds_security_api_access_control_h;
