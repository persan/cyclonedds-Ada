pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_security_dds_security_api_types_h;
limited with CycloneDDS.Low_Level.dds_security_dds_security_api_authentication_h;
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
   type DDS_Security_access_control_listener_on_revoke_permissions is access function (arg1 : access constant dds_security_access_control; arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:33

   type dds_security_access_control_listener is record
      on_revoke_permissions : DDS_Security_access_control_listener_on_revoke_permissions;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:39
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:37

   type DDS_Security_access_control_validate_local_permissions is access function
        (arg1 : access dds_security_access_control;
         arg2 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_authentication_h.dds_security_authentication;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityHandle;
         arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DomainId;
         arg5 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_Qos;
         arg6 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:43

   type DDS_Security_access_control_validate_remote_permissions is access function
        (arg1 : access dds_security_access_control;
         arg2 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_authentication_h.dds_security_authentication;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityHandle;
         arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityHandle;
         arg5 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsToken;
         arg6 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_AuthenticatedPeerCredentialToken;
         arg7 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:51

   type DDS_Security_access_control_check_create_participant is access function
        (arg1 : access dds_security_access_control;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DomainId;
         arg4 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_Qos;
         arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:60

   type DDS_Security_access_control_check_create_datawriter is access function
        (arg1 : access dds_security_access_control;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DomainId;
         arg4 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_char;
         arg5 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_Qos;
         arg6 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PartitionQosPolicy;
         arg7 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DataTags;
         arg8 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:67

   type DDS_Security_access_control_check_create_datareader is access function
        (arg1 : access dds_security_access_control;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DomainId;
         arg4 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_char;
         arg5 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_Qos;
         arg6 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PartitionQosPolicy;
         arg7 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DataTags;
         arg8 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:77

   type DDS_Security_access_control_check_create_topic is access function
        (arg1 : access dds_security_access_control;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DomainId;
         arg4 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_char;
         arg5 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_Qos;
         arg6 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:87

   type DDS_Security_access_control_check_local_datawriter_register_instance is access function
        (arg1 : access dds_security_access_control;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_Entity;
         arg4 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DynamicData;
         arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:95

   type DDS_Security_access_control_check_local_datawriter_dispose_instance is access function
        (arg1 : access dds_security_access_control;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_Entity;
         arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DynamicData;
         arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:102

   type DDS_Security_access_control_check_remote_participant is access function
        (arg1 : access dds_security_access_control;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DomainId;
         arg4 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantBuiltinTopicDataSecure;
         arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:109

   type DDS_Security_access_control_check_remote_datawriter is access function
        (arg1 : access dds_security_access_control;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DomainId;
         arg4 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PublicationBuiltinTopicDataSecure;
         arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:116

   type DDS_Security_access_control_check_remote_datareader is access function
        (arg1 : access dds_security_access_control;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DomainId;
         arg4 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SubscriptionBuiltinTopicDataSecure;
         arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean;
         arg6 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:123

   type DDS_Security_access_control_check_remote_topic is access function
        (arg1 : access dds_security_access_control;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DomainId;
         arg4 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_TopicBuiltinTopicData;
         arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:131

   type DDS_Security_access_control_check_local_datawriter_match is access function
        (arg1 : access dds_security_access_control;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;
         arg4 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PublicationBuiltinTopicDataSecure;
         arg5 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SubscriptionBuiltinTopicDataSecure;
         arg6 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:138

   type DDS_Security_access_control_check_local_datareader_match is access function
        (arg1 : access dds_security_access_control;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;
         arg4 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SubscriptionBuiltinTopicDataSecure;
         arg5 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PublicationBuiltinTopicDataSecure;
         arg6 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:146

   type DDS_Security_access_control_check_remote_datawriter_register_instance is access function
        (arg1 : access dds_security_access_control;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_Entity;
         arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_InstanceHandle;
         arg5 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DynamicData;
         arg6 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_InstanceHandle;
         arg7 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:154

   type DDS_Security_access_control_check_remote_datawriter_dispose_instance is access function
        (arg1 : access dds_security_access_control;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_Entity;
         arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_InstanceHandle;
         arg5 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DynamicData;
         arg6 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:163

   type DDS_Security_access_control_get_permissions_token is access function
        (arg1 : access dds_security_access_control;
         arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsToken;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;
         arg4 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:171

   type DDS_Security_access_control_get_permissions_credential_token is access function
        (arg1 : access dds_security_access_control;
         arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsCredentialToken;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;
         arg4 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:177

   type DDS_Security_access_control_set_listener is access function
        (arg1 : access dds_security_access_control;
         arg2 : access constant dds_security_access_control_listener;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:183

   type DDS_Security_access_control_return_permissions_token is access function
        (arg1 : access dds_security_access_control;
         arg2 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsToken;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:188

   type DDS_Security_access_control_return_permissions_credential_token is access function
        (arg1 : access dds_security_access_control;
         arg2 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsCredentialToken;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:193

   type DDS_Security_access_control_get_participant_sec_attributes is access function
        (arg1 : access dds_security_access_control;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantSecurityAttributes;
         arg4 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:198

   type DDS_Security_access_control_get_topic_sec_attributes is access function
        (arg1 : access dds_security_access_control;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_char;
         arg4 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_TopicSecurityAttributes;
         arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:204

   type DDS_Security_access_control_get_datawriter_sec_attributes is access function
        (arg1 : access dds_security_access_control;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_char;
         arg4 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PartitionQosPolicy;
         arg5 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DataTagQosPolicy;
         arg6 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_EndpointSecurityAttributes;
         arg7 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:211

   type DDS_Security_access_control_get_datareader_sec_attributes is access function
        (arg1 : access dds_security_access_control;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_char;
         arg4 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PartitionQosPolicy;
         arg5 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DataTagQosPolicy;
         arg6 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_EndpointSecurityAttributes;
         arg7 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:220

   type DDS_Security_access_control_return_participant_sec_attributes is access function
        (arg1 : access dds_security_access_control;
         arg2 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantSecurityAttributes;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:229

   type DDS_Security_access_control_return_topic_sec_attributes is access function
        (arg1 : access dds_security_access_control;
         arg2 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_TopicSecurityAttributes;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:234

   type DDS_Security_access_control_return_datawriter_sec_attributes is access function
        (arg1 : access dds_security_access_control;
         arg2 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_EndpointSecurityAttributes;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:239

   type DDS_Security_access_control_return_datareader_sec_attributes is access function
        (arg1 : access dds_security_access_control;
         arg2 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_EndpointSecurityAttributes;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:244

   type DDS_Security_access_control_return_permissions_handle is access function
        (arg1 : access dds_security_access_control;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:249

   type dds_security_access_control is record
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:256
      validate_local_permissions : DDS_Security_access_control_validate_local_permissions;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:258
      validate_remote_permissions : DDS_Security_access_control_validate_remote_permissions;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:259
      check_create_participant : DDS_Security_access_control_check_create_participant;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:260
      check_create_datawriter : DDS_Security_access_control_check_create_datawriter;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:261
      check_create_datareader : DDS_Security_access_control_check_create_datareader;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:262
      check_create_topic : DDS_Security_access_control_check_create_topic;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:263
      check_local_datawriter_register_instance : DDS_Security_access_control_check_local_datawriter_register_instance;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:264
      check_local_datawriter_dispose_instance : DDS_Security_access_control_check_local_datawriter_dispose_instance;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:265
      check_remote_participant : DDS_Security_access_control_check_remote_participant;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:266
      check_remote_datawriter : DDS_Security_access_control_check_remote_datawriter;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:267
      check_remote_datareader : DDS_Security_access_control_check_remote_datareader;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:268
      check_remote_topic : DDS_Security_access_control_check_remote_topic;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:269
      check_local_datawriter_match : DDS_Security_access_control_check_local_datawriter_match;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:270
      check_local_datareader_match : DDS_Security_access_control_check_local_datareader_match;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:271
      check_remote_datawriter_register_instance : DDS_Security_access_control_check_remote_datawriter_register_instance;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:272
      check_remote_datawriter_dispose_instance : DDS_Security_access_control_check_remote_datawriter_dispose_instance;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:273
      get_permissions_token : DDS_Security_access_control_get_permissions_token;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:274
      get_permissions_credential_token : DDS_Security_access_control_get_permissions_credential_token;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:275
      set_listener : DDS_Security_access_control_set_listener;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:276
      return_permissions_token : DDS_Security_access_control_return_permissions_token;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:277
      return_permissions_credential_token : DDS_Security_access_control_return_permissions_credential_token;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:278
      get_participant_sec_attributes : DDS_Security_access_control_get_participant_sec_attributes;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:279
      get_topic_sec_attributes : DDS_Security_access_control_get_topic_sec_attributes;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:280
      get_datawriter_sec_attributes : DDS_Security_access_control_get_datawriter_sec_attributes;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:281
      get_datareader_sec_attributes : DDS_Security_access_control_get_datareader_sec_attributes;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:282
      return_participant_sec_attributes : DDS_Security_access_control_return_participant_sec_attributes;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:283
      return_topic_sec_attributes : DDS_Security_access_control_return_topic_sec_attributes;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:284
      return_datawriter_sec_attributes : DDS_Security_access_control_return_datawriter_sec_attributes;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:285
      return_datareader_sec_attributes : DDS_Security_access_control_return_datareader_sec_attributes;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:286
      return_permissions_handle : DDS_Security_access_control_return_permissions_handle;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:287
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_access_control.h:254

end CycloneDDS.Low_Level.dds_security_dds_security_api_access_control_h;
