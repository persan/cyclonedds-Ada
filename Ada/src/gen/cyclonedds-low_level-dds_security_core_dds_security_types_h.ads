pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_security_dds_security_api_types_h;


package CycloneDDS.Low_Level.dds_security_core_dds_security_types_h is

   type DDS_Security_CryptoTransformKind is array (0 .. 3) of aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_octet;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_types.h:18

   type DDS_Security_CryptoTransformKeyId is array (0 .. 3) of aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_octet;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_types.h:19

   subtype DDS_Security_CryptoTransformKind_Enum is unsigned;
   DDS_Security_CryptoTransformKind_Enum_CRYPTO_TRANSFORMATION_KIND_NONE : constant DDS_Security_CryptoTransformKind_Enum := 0;
   DDS_Security_CryptoTransformKind_Enum_CRYPTO_TRANSFORMATION_KIND_AES128_GMAC : constant DDS_Security_CryptoTransformKind_Enum := 1;
   DDS_Security_CryptoTransformKind_Enum_CRYPTO_TRANSFORMATION_KIND_AES128_GCM : constant DDS_Security_CryptoTransformKind_Enum := 2;
   DDS_Security_CryptoTransformKind_Enum_CRYPTO_TRANSFORMATION_KIND_AES256_GMAC : constant DDS_Security_CryptoTransformKind_Enum := 3;
   DDS_Security_CryptoTransformKind_Enum_CRYPTO_TRANSFORMATION_KIND_AES256_GCM : constant DDS_Security_CryptoTransformKind_Enum := 4;
   DDS_Security_CryptoTransformKind_Enum_CRYPTO_TRANSFORMATION_KIND_INVALID : constant DDS_Security_CryptoTransformKind_Enum := 127;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_types.h:49

   type DDS_Security_KeyMaterial_AES_GCM_GMAC is record
      transformation_kind : aliased DDS_Security_CryptoTransformKind;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_types.h:52
      master_salt : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_types.h:53
      sender_key_id : aliased DDS_Security_CryptoTransformKeyId;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_types.h:54
      master_sender_key : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_types.h:55
      receiver_specific_key_id : aliased DDS_Security_CryptoTransformKeyId;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_types.h:56
      master_receiver_specific_key : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_OctetSeq;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_types.h:57
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_types.h:51

   type CryptoTransformIdentifier is record
      transformation_kind : aliased DDS_Security_CryptoTransformKind;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_types.h:61
      transformation_key_id : aliased DDS_Security_CryptoTransformKeyId;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_types.h:62
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_types.h:60

   subtype ddsrt_address is access Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_types.h:66

end CycloneDDS.Low_Level.dds_security_core_dds_security_types_h;
