pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_security_dds_security_api_types_h;
with CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;

package CycloneDDS.Low_Level.dds_security_dds_security_api_cryptography_h is

   type dds_security_crypto_key_factory;
   type dds_security_crypto_key_exchange;
   type dds_security_crypto_transform;
   type DDS_Security_crypto_key_factory_register_local_participant is access function
        (arg1 : access dds_security_crypto_key_factory;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityHandle;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;
         arg4 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PropertySeq;
         arg5 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantSecurityAttributes;
         arg6 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantCryptoHandle
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:34

   type DDS_Security_crypto_key_factory_register_matched_remote_participant is access function
        (arg1 : access dds_security_crypto_key_factory;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantCryptoHandle;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_IdentityHandle;
         arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PermissionsHandle;
         arg5 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SharedSecretHandle;
         arg6 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantCryptoHandle
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:42

   type DDS_Security_crypto_key_factory_register_local_datawriter is access function
        (arg1 : access dds_security_crypto_key_factory;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantCryptoHandle;
         arg3 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PropertySeq;
         arg4 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_EndpointSecurityAttributes;
         arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatawriterCryptoHandle
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:50

   type DDS_Security_crypto_key_factory_register_matched_remote_datareader is access function
        (arg1 : access dds_security_crypto_key_factory;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatawriterCryptoHandle;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantCryptoHandle;
         arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SharedSecretHandle;
         arg5 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean;
         arg6 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatareaderCryptoHandle
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:57

   type DDS_Security_crypto_key_factory_register_local_datareader is access function
        (arg1 : access dds_security_crypto_key_factory;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantCryptoHandle;
         arg3 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PropertySeq;
         arg4 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_EndpointSecurityAttributes;
         arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatareaderCryptoHandle
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:65

   type DDS_Security_crypto_key_factory_register_matched_remote_datawriter is access function
        (arg1 : access dds_security_crypto_key_factory;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatareaderCryptoHandle;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantCryptoHandle;
         arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SharedSecretHandle;
         arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatawriterCryptoHandle
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:72

   type DDS_Security_crypto_key_factory_unregister_participant is access function
        (arg1 : access dds_security_crypto_key_factory;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantCryptoHandle;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:79

   type DDS_Security_crypto_key_factory_unregister_datawriter is access function
        (arg1 : access dds_security_crypto_key_factory;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatawriterCryptoHandle;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:84

   type DDS_Security_crypto_key_factory_unregister_datareader is access function
        (arg1 : access dds_security_crypto_key_factory;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatareaderCryptoHandle;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:89

   type dds_security_crypto_key_factory is record
      register_local_participant : DDS_Security_crypto_key_factory_register_local_participant;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:96
      register_matched_remote_participant : DDS_Security_crypto_key_factory_register_matched_remote_participant;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:97
      register_local_datawriter : DDS_Security_crypto_key_factory_register_local_datawriter;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:98
      register_matched_remote_datareader : DDS_Security_crypto_key_factory_register_matched_remote_datareader;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:99
      register_local_datareader : DDS_Security_crypto_key_factory_register_local_datareader;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:100
      register_matched_remote_datawriter : DDS_Security_crypto_key_factory_register_matched_remote_datawriter;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:101
      unregister_participant : DDS_Security_crypto_key_factory_unregister_participant;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:102
      unregister_datawriter : DDS_Security_crypto_key_factory_unregister_datawriter;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:103
      unregister_datareader : DDS_Security_crypto_key_factory_unregister_datareader;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:104
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:94

   type DDS_Security_crypto_key_exchange_create_local_participant_crypto_tokens is access function
        (arg1 : access dds_security_crypto_key_exchange;
         arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_CryptoTokenSeq;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantCryptoHandle;
         arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantCryptoHandle;
         arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:108

   type DDS_Security_crypto_key_exchange_set_remote_participant_crypto_tokens is access function
        (arg1 : access dds_security_crypto_key_exchange;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantCryptoHandle;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantCryptoHandle;
         arg4 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_CryptoTokenSeq;
         arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:115

   type DDS_Security_crypto_key_exchange_create_local_datawriter_crypto_tokens is access function
        (arg1 : access dds_security_crypto_key_exchange;
         arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_CryptoTokenSeq;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatawriterCryptoHandle;
         arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatareaderCryptoHandle;
         arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:122

   type DDS_Security_crypto_key_exchange_set_remote_datawriter_crypto_tokens is access function
        (arg1 : access dds_security_crypto_key_exchange;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatareaderCryptoHandle;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatawriterCryptoHandle;
         arg4 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_CryptoTokenSeq;
         arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:129

   type DDS_Security_crypto_key_exchange_create_local_datareader_crypto_tokens is access function
        (arg1 : access dds_security_crypto_key_exchange;
         arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_CryptoTokenSeq;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatareaderCryptoHandle;
         arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatawriterCryptoHandle;
         arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:136

   type DDS_Security_crypto_key_exchange_set_remote_datareader_crypto_tokens is access function
        (arg1 : access dds_security_crypto_key_exchange;
         arg2 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatawriterCryptoHandle;
         arg3 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatareaderCryptoHandle;
         arg4 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_CryptoTokenSeq;
         arg5 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:143

   type DDS_Security_crypto_key_exchange_return_crypto_tokens is access function
        (arg1 : access dds_security_crypto_key_exchange;
         arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DataHolderSeq;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:150

   type dds_security_crypto_key_exchange is record
      create_local_participant_crypto_tokens : DDS_Security_crypto_key_exchange_create_local_participant_crypto_tokens;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:157
      set_remote_participant_crypto_tokens : DDS_Security_crypto_key_exchange_set_remote_participant_crypto_tokens;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:158
      create_local_datawriter_crypto_tokens : DDS_Security_crypto_key_exchange_create_local_datawriter_crypto_tokens;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:159
      set_remote_datawriter_crypto_tokens : DDS_Security_crypto_key_exchange_set_remote_datawriter_crypto_tokens;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:160
      create_local_datareader_crypto_tokens : DDS_Security_crypto_key_exchange_create_local_datareader_crypto_tokens;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:161
      set_remote_datareader_crypto_tokens : DDS_Security_crypto_key_exchange_set_remote_datareader_crypto_tokens;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:162
      return_crypto_tokens : DDS_Security_crypto_key_exchange_return_crypto_tokens;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:163
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:155

   type DDS_Security_crypto_transform_encode_serialized_payload is access function
        (arg1 : access dds_security_crypto_transform;
         arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;
         arg4 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;
         arg5 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatawriterCryptoHandle;
         arg6 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:167

   type DDS_Security_crypto_transform_encode_datawriter_submessage is access function
        (arg1 : access dds_security_crypto_transform;
         arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;
         arg3 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;
         arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatawriterCryptoHandle;
         arg5 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_LongLongSeq;
         arg6 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_long;
         arg7 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:175

   type DDS_Security_crypto_transform_encode_datareader_submessage is access function
        (arg1 : access dds_security_crypto_transform;
         arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;
         arg3 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;
         arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatareaderCryptoHandle;
         arg5 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_LongLongSeq;
         arg6 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:184

   type DDS_Security_crypto_transform_encode_rtps_message is access function
        (arg1 : access dds_security_crypto_transform;
         arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;
         arg3 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;
         arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantCryptoHandle;
         arg5 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_LongLongSeq;
         arg6 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_long;
         arg7 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:192

   type DDS_Security_crypto_transform_decode_rtps_message is access function
        (arg1 : access dds_security_crypto_transform;
         arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;
         arg3 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;
         arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantCryptoHandle;
         arg5 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantCryptoHandle;
         arg6 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:201

   type DDS_Security_crypto_transform_preprocess_secure_submsg is access function
        (arg1 : access dds_security_crypto_transform;
         arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatawriterCryptoHandle;
         arg3 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatareaderCryptoHandle;
         arg4 : access CycloneDDS.Low_Level.dds_security_dds_security_api_defs_h.DDS_Security_SecureSubmessageCategory_t;
         arg5 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;
         arg6 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantCryptoHandle;
         arg7 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantCryptoHandle;
         arg8 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:209

   type DDS_Security_crypto_transform_decode_datawriter_submessage is access function
        (arg1 : access dds_security_crypto_transform;
         arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;
         arg3 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;
         arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatareaderCryptoHandle;
         arg5 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatawriterCryptoHandle;
         arg6 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:219

   type DDS_Security_crypto_transform_decode_datareader_submessage is access function
        (arg1 : access dds_security_crypto_transform;
         arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;
         arg3 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;
         arg4 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatawriterCryptoHandle;
         arg5 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatareaderCryptoHandle;
         arg6 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:227

   type DDS_Security_crypto_transform_decode_serialized_payload is access function
        (arg1 : access dds_security_crypto_transform;
         arg2 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;
         arg3 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;
         arg4 : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;
         arg5 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatareaderCryptoHandle;
         arg6 : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DatawriterCryptoHandle;
         arg7 : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SecurityException) return CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_boolean
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:235

   type dds_security_crypto_transform is record
      encode_serialized_payload : DDS_Security_crypto_transform_encode_serialized_payload;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:246
      encode_datawriter_submessage : DDS_Security_crypto_transform_encode_datawriter_submessage;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:247
      encode_datareader_submessage : DDS_Security_crypto_transform_encode_datareader_submessage;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:248
      encode_rtps_message : DDS_Security_crypto_transform_encode_rtps_message;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:249
      decode_rtps_message : DDS_Security_crypto_transform_decode_rtps_message;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:250
      preprocess_secure_submsg : DDS_Security_crypto_transform_preprocess_secure_submsg;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:251
      decode_datawriter_submessage : DDS_Security_crypto_transform_decode_datawriter_submessage;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:252
      decode_datareader_submessage : DDS_Security_crypto_transform_decode_datareader_submessage;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:253
      decode_serialized_payload : DDS_Security_crypto_transform_decode_serialized_payload;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:254
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:244

   type dds_security_cryptography is record
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:259
      crypto_transform : access dds_security_crypto_transform;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:261
      crypto_key_factory : access dds_security_crypto_key_factory;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:262
      crypto_key_exchange : access dds_security_crypto_key_exchange;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:263
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api_cryptography.h:257

end CycloneDDS.Low_Level.dds_security_dds_security_api_cryptography_h;
