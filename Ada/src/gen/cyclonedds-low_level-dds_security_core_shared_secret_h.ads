pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_security_dds_security_api_types_h;


package CycloneDDS.Low_Level.dds_security_core_shared_secret_h is

   type anon_array14770 is array (0 .. 31) of aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_octet;
   type DDS_Security_SharedSecretHandleImpl is record
      shared_secret : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_octet;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/shared_secret.h:22
      shared_secret_size : aliased CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_long;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/shared_secret.h:23
      challenge1 : aliased anon_array14770;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/shared_secret.h:24
      challenge2 : aliased anon_array14770;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/shared_secret.h:25
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/shared_secret.h:21

   function get_challenge1_from_secret_handle (handle : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SharedSecretHandle) return access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_octet  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/shared_secret.h:28
   with Import => True, 
        Convention => C, 
        External_Name => "get_challenge1_from_secret_handle";

   function get_challenge2_from_secret_handle (handle : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SharedSecretHandle) return access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_octet  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/shared_secret.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "get_challenge2_from_secret_handle";

   function get_secret_from_secret_handle (handle : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SharedSecretHandle) return access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_octet  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/shared_secret.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "get_secret_from_secret_handle";

   function get_secret_size_from_secret_handle (handle : CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SharedSecretHandle) return size_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/shared_secret.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "get_secret_size_from_secret_handle";

end CycloneDDS.Low_Level.dds_security_core_shared_secret_h;
