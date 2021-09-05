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
   type DDS_Security_authentication_listener_on_revoke_identity is access function
     (arg1 : access constant dds_security_authentication;
      arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_IdentityHandle)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_authentication_listener_on_status_changed is access function
     (arg1 : access dds_security_authentication_listener;
      arg2 : access constant dds_security_authentication;
      arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_IdentityHandle;
      arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h
        .DDS_Security_AuthStatusKind)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type dds_security_authentication_listener is record
      on_revoke_identity : DDS_Security_authentication_listener_on_revoke_identity;
      on_status_changed : DDS_Security_authentication_listener_on_status_changed;
   end record with
      Convention => C_Pass_By_Copy;

   type DDS_Security_authentication_validate_local_identity is access function
     (arg1 : access dds_security_authentication;
      arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_IdentityHandle;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_GUID_t;
      arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_DomainId;
      arg5 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_Qos;
      arg6 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_GUID_t;
      arg7 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h
     .DDS_Security_ValidationResult_t with
      Convention => C;

   type DDS_Security_authentication_get_identity_token is access function
     (arg1 : access dds_security_authentication;
      arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_IdentityToken;
      arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_IdentityHandle;
      arg4 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_authentication_get_identity_status_token is access function
     (arg1 : access dds_security_authentication;
      arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_IdentityStatusToken;
      arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_IdentityHandle;
      arg4 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_authentication_set_permissions_credential_and_token is access function
     (arg1 : access dds_security_authentication;
      arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_IdentityHandle;
      arg3 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsCredentialToken;
      arg4 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_PermissionsToken;
      arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_authentication_validate_remote_identity is access function
     (arg1 : access dds_security_authentication;
      arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_IdentityHandle;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_AuthRequestMessageToken;
      arg4 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_AuthRequestMessageToken;
      arg5 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_IdentityHandle;
      arg6 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_IdentityToken;
      arg7 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_GUID_t;
      arg8 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h
     .DDS_Security_ValidationResult_t with
      Convention => C;

   type DDS_Security_authentication_begin_handshake_request is access function
     (arg1 : access dds_security_authentication;
      arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_HandshakeHandle;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_HandshakeMessageToken;
      arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_IdentityHandle;
      arg5 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_IdentityHandle;
      arg6 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_OctetSeq;
      arg7 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h
     .DDS_Security_ValidationResult_t with
      Convention => C;

   type DDS_Security_authentication_begin_handshake_reply is access function
     (arg1 : access dds_security_authentication;
      arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_HandshakeHandle;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_HandshakeMessageToken;
      arg4 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_HandshakeMessageToken;
      arg5 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_IdentityHandle;
      arg6 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_IdentityHandle;
      arg7 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_OctetSeq;
      arg8 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h
     .DDS_Security_ValidationResult_t with
      Convention => C;

   type DDS_Security_authentication_process_handshake is access function
     (arg1 : access dds_security_authentication;
      arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_HandshakeMessageToken;
      arg3 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_HandshakeMessageToken;
      arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_HandshakeHandle;
      arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h
     .DDS_Security_ValidationResult_t with
      Convention => C;

   type DDS_Security_authentication_get_shared_secret is access function
     (arg1 : access dds_security_authentication;
      arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_HandshakeHandle;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_SharedSecretHandle with
      Convention => C;

   type DDS_Security_authentication_get_authenticated_peer_credential_token is access function
     (arg1 : access dds_security_authentication;
      arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_AuthenticatedPeerCredentialToken;
      arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_HandshakeHandle;
      arg4 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_authentication_set_listener is access function
     (arg1 : access dds_security_authentication;
      arg2 : access constant dds_security_authentication_listener;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_authentication_return_identity_token is access function
     (arg1 : access dds_security_authentication;
      arg2 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_IdentityToken;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_authentication_return_identity_status_token is access function
     (arg1 : access dds_security_authentication;
      arg2 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_IdentityStatusToken;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_authentication_return_authenticated_peer_credential_token is access function
     (arg1 : access dds_security_authentication;
      arg2 : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_AuthenticatedPeerCredentialToken;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_authentication_return_handshake_handle is access function
     (arg1 : access dds_security_authentication;
      arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_HandshakeHandle;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_authentication_return_identity_handle is access function
     (arg1 : access dds_security_authentication;
      arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_IdentityHandle;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type DDS_Security_authentication_return_sharedsecret_handle is access function
     (arg1 : access dds_security_authentication;
      arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SharedSecretHandle;
      arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SecurityException)
      return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
     .DDS_Security_boolean with
      Convention => C;

   type dds_security_authentication is record
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      validate_local_identity : DDS_Security_authentication_validate_local_identity;
      get_identity_token : DDS_Security_authentication_get_identity_token;
      get_identity_status_token : DDS_Security_authentication_get_identity_status_token;
      set_permissions_credential_and_token : DDS_Security_authentication_set_permissions_credential_and_token;
      validate_remote_identity : DDS_Security_authentication_validate_remote_identity;
      begin_handshake_request : DDS_Security_authentication_begin_handshake_request;
      begin_handshake_reply : DDS_Security_authentication_begin_handshake_reply;
      process_handshake : DDS_Security_authentication_process_handshake;
      get_shared_secret : DDS_Security_authentication_get_shared_secret;
      get_authenticated_peer_credential_token : DDS_Security_authentication_get_authenticated_peer_credential_token;
      set_listener : DDS_Security_authentication_set_listener;
      return_identity_token : DDS_Security_authentication_return_identity_token;
      return_identity_status_token : DDS_Security_authentication_return_identity_status_token;
      return_authenticated_peer_credential_token : DDS_Security_authentication_return_authenticated_peer_credential_token;
      return_handshake_handle : DDS_Security_authentication_return_handshake_handle;
      return_identity_handle : DDS_Security_authentication_return_identity_handle;
      return_sharedsecret_handle : DDS_Security_authentication_return_sharedsecret_handle;
   end record with
      Convention => C_Pass_By_Copy;

end CycloneDDS.Low_Level.dds_security_dds_security_api_authentication_h;
