pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_security_dds_security_api_types_h;
with CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;

package CycloneDDS.Low_Level.dds_security_dds_security_api_authentication_h is

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

  -- Authentication Component  
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

   type dds_security_authentication;
   type dds_security_authentication_listener;
   type DDS_Security_authentication_listener_on_revoke_identity is access function (arg1 : access constant dds_security_authentication; arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityHandle) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:31

   type DDS_Security_authentication_listener_on_status_changed is access function
        (arg1 : access dds_security_authentication_listener;
         arg2 : access constant dds_security_authentication;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityHandle;
         arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h.DDS_Security_AuthStatusKind) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:35

   type dds_security_authentication_listener is record
      on_revoke_identity : DDS_Security_authentication_listener_on_revoke_identity;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:43
      on_status_changed : DDS_Security_authentication_listener_on_status_changed;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:44
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:41

   type DDS_Security_authentication_validate_local_identity is access function
        (arg1 : access dds_security_authentication;
         arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityHandle;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_GUID_t;
         arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DomainId;
         arg5 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_Qos;
         arg6 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_GUID_t;
         arg7 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h.DDS_Security_ValidationResult_t
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:47

   type DDS_Security_authentication_get_identity_token is access function
        (arg1 : access dds_security_authentication;
         arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityToken;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityHandle;
         arg4 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:56

   type DDS_Security_authentication_get_identity_status_token is access function
        (arg1 : access dds_security_authentication;
         arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityStatusToken;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityHandle;
         arg4 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:62

   type DDS_Security_authentication_set_permissions_credential_and_token is access function
        (arg1 : access dds_security_authentication;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityHandle;
         arg3 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsCredentialToken;
         arg4 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsToken;
         arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:68

   type DDS_Security_authentication_validate_remote_identity is access function
        (arg1 : access dds_security_authentication;
         arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityHandle;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_AuthRequestMessageToken;
         arg4 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_AuthRequestMessageToken;
         arg5 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityHandle;
         arg6 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityToken;
         arg7 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_GUID_t;
         arg8 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h.DDS_Security_ValidationResult_t
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:75

   type DDS_Security_authentication_begin_handshake_request is access function
        (arg1 : access dds_security_authentication;
         arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_HandshakeHandle;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_HandshakeMessageToken;
         arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityHandle;
         arg5 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityHandle;
         arg6 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;
         arg7 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h.DDS_Security_ValidationResult_t
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:85

   type DDS_Security_authentication_begin_handshake_reply is access function
        (arg1 : access dds_security_authentication;
         arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_HandshakeHandle;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_HandshakeMessageToken;
         arg4 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_HandshakeMessageToken;
         arg5 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityHandle;
         arg6 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityHandle;
         arg7 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;
         arg8 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h.DDS_Security_ValidationResult_t
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:94

   type DDS_Security_authentication_process_handshake is access function
        (arg1 : access dds_security_authentication;
         arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_HandshakeMessageToken;
         arg3 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_HandshakeMessageToken;
         arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_HandshakeHandle;
         arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h.DDS_Security_ValidationResult_t
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:104

   type DDS_Security_authentication_get_shared_secret is access function
        (arg1 : access dds_security_authentication;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_HandshakeHandle;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SharedSecretHandle
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:111

   type DDS_Security_authentication_get_authenticated_peer_credential_token is access function
        (arg1 : access dds_security_authentication;
         arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_AuthenticatedPeerCredentialToken;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_HandshakeHandle;
         arg4 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:116

   type DDS_Security_authentication_set_listener is access function
        (arg1 : access dds_security_authentication;
         arg2 : access constant dds_security_authentication_listener;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:122

   type DDS_Security_authentication_return_identity_token is access function
        (arg1 : access dds_security_authentication;
         arg2 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityToken;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:127

   type DDS_Security_authentication_return_identity_status_token is access function
        (arg1 : access dds_security_authentication;
         arg2 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityStatusToken;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:132

   type DDS_Security_authentication_return_authenticated_peer_credential_token is access function
        (arg1 : access dds_security_authentication;
         arg2 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_AuthenticatedPeerCredentialToken;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:137

   type DDS_Security_authentication_return_handshake_handle is access function
        (arg1 : access dds_security_authentication;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_HandshakeHandle;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:142

   type DDS_Security_authentication_return_identity_handle is access function
        (arg1 : access dds_security_authentication;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityHandle;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:147

   type DDS_Security_authentication_return_sharedsecret_handle is access function
        (arg1 : access dds_security_authentication;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SharedSecretHandle;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:152

   type dds_security_authentication is record
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:159
      validate_local_identity : DDS_Security_authentication_validate_local_identity;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:161
      get_identity_token : DDS_Security_authentication_get_identity_token;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:162
      get_identity_status_token : DDS_Security_authentication_get_identity_status_token;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:163
      set_permissions_credential_and_token : DDS_Security_authentication_set_permissions_credential_and_token;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:164
      validate_remote_identity : DDS_Security_authentication_validate_remote_identity;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:165
      begin_handshake_request : DDS_Security_authentication_begin_handshake_request;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:166
      begin_handshake_reply : DDS_Security_authentication_begin_handshake_reply;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:167
      process_handshake : DDS_Security_authentication_process_handshake;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:168
      get_shared_secret : DDS_Security_authentication_get_shared_secret;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:169
      get_authenticated_peer_credential_token : DDS_Security_authentication_get_authenticated_peer_credential_token;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:170
      set_listener : DDS_Security_authentication_set_listener;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:171
      return_identity_token : DDS_Security_authentication_return_identity_token;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:172
      return_identity_status_token : DDS_Security_authentication_return_identity_status_token;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:173
      return_authenticated_peer_credential_token : DDS_Security_authentication_return_authenticated_peer_credential_token;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:174
      return_handshake_handle : DDS_Security_authentication_return_handshake_handle;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:175
      return_identity_handle : DDS_Security_authentication_return_identity_handle;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:176
      return_sharedsecret_handle : DDS_Security_authentication_return_sharedsecret_handle;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:177
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/security/dds_security_api_authentication.h:157

end CycloneDDS.Low_Level.dds_security_dds_security_api_authentication_h;
