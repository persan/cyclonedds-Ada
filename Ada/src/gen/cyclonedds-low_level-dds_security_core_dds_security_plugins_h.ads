pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsrt_dynlib_h;
with CycloneDDS.Low_Level.dds_security_dds_security_api_h;
with Interfaces.C.Strings;
with System;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
limited with CycloneDDS.Low_Level.dds_security_dds_security_api_authentication_h;
limited with CycloneDDS.Low_Level.dds_security_dds_security_api_cryptography_h;
limited with CycloneDDS.Low_Level.dds_security_dds_security_api_access_control_h;

package CycloneDDS.Low_Level.dds_security_core_dds_security_plugins_h is

   type dds_security_plugin is record
      lib_handle : CycloneDDS.Low_Level.dds_ddsrt_dynlib_h.ddsrt_dynlib_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_plugins.h:27
      func_init : CycloneDDS.Low_Level.dds_security_dds_security_api_h.plugin_init;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_plugins.h:28
      func_finalize : CycloneDDS.Low_Level.dds_security_dds_security_api_h.plugin_finalize;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_plugins.h:29
      name : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_plugins.h:30
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_plugins.h:26

   type dds_security_plugin_config is record
      library_path : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_plugins.h:40
      library_init : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_plugins.h:41
      library_finalize : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_plugins.h:42
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_plugins.h:39

   type dds_security_plugin_suite_config is record
      authentication : aliased dds_security_plugin_config;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_plugins.h:46
      cryptography : aliased dds_security_plugin_config;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_plugins.h:47
      access_control : aliased dds_security_plugin_config;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_plugins.h:48
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_plugins.h:45

   function dds_security_plugin_release (security_plugin : access constant dds_security_plugin; context : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_plugins.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_plugin_release";

   function dds_security_check_plugin_configuration (security_suite_config : access constant dds_security_plugin_suite_config; gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_plugins.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_check_plugin_configuration";

   function dds_security_load_security_library
     (plugin_config : access constant dds_security_plugin_config;
      security_plugin : access dds_security_plugin;
      security_plugin_context : System.Address;
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_plugins.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_load_security_library";

   function dds_security_verify_plugin_functions
     (authentication_context : access CycloneDDS.Low_Level.dds_security_dds_security_api_authentication_h.dds_security_authentication;
      auth_plugin : access dds_security_plugin;
      crypto_context : access CycloneDDS.Low_Level.dds_security_dds_security_api_cryptography_h.dds_security_cryptography;
      crypto_plugin : access dds_security_plugin;
      access_control_context : access CycloneDDS.Low_Level.dds_security_dds_security_api_access_control_h.dds_security_access_control;
      ac_plugin : access dds_security_plugin;
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/core/dds_security_plugins.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "dds_security_verify_plugin_functions";

end CycloneDDS.Low_Level.dds_security_core_dds_security_plugins_h;
