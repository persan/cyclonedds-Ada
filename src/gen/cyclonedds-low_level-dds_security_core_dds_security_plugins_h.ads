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
limited with CycloneDDS.Low_Level
  .dds_security_dds_security_api_authentication_h;
limited with CycloneDDS.Low_Level.dds_security_dds_security_api_cryptography_h;
limited with CycloneDDS.Low_Level
  .dds_security_dds_security_api_access_control_h;

package CycloneDDS.Low_Level.dds_security_core_dds_security_plugins_h is

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

   type dds_security_plugin is record
      lib_handle : CycloneDDS.Low_Level.dds_ddsrt_dynlib_h.ddsrt_dynlib_t;
      func_init  : CycloneDDS.Low_Level.dds_security_dds_security_api_h
        .plugin_init;
      func_finalize : CycloneDDS.Low_Level.dds_security_dds_security_api_h
        .plugin_finalize;
      name : Interfaces.C.Strings.chars_ptr;
   end record with
      Convention => C_Pass_By_Copy;

      -- we are using our own security plugin configuration (not certificates etc)
      -- * because we do not want to depend on DDSI configuration data types.
      -- *
      -- * A configuration data type is needed because there are traverses to properties several times
      --

   type dds_security_plugin_config is record
      library_path     : Interfaces.C.Strings.chars_ptr;
      library_init     : Interfaces.C.Strings.chars_ptr;
      library_finalize : Interfaces.C.Strings.chars_ptr;
   end record with
      Convention => C_Pass_By_Copy;

   type dds_security_plugin_suite_config is record
      authentication : aliased dds_security_plugin_config;
      cryptography   : aliased dds_security_plugin_config;
      access_control : aliased dds_security_plugin_config;
   end record with
      Convention => C_Pass_By_Copy;

   function dds_security_plugin_release
     (security_plugin : access constant dds_security_plugin;
      context         : System.Address)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_security_plugin_release";

   function dds_security_check_plugin_configuration
     (security_suite_config : access constant dds_security_plugin_suite_config;
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_security_check_plugin_configuration";

   function dds_security_load_security_library
     (plugin_config           : access constant dds_security_plugin_config;
      security_plugin         : access dds_security_plugin;
      security_plugin_context : System.Address;
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_security_load_security_library";

   function dds_security_verify_plugin_functions
     (authentication_context : access CycloneDDS.Low_Level
        .dds_security_dds_security_api_authentication_h
        .dds_security_authentication;
      auth_plugin    : access dds_security_plugin;
      crypto_context : access CycloneDDS.Low_Level
        .dds_security_dds_security_api_cryptography_h
        .dds_security_cryptography;
      crypto_plugin          : access dds_security_plugin;
      access_control_context : access CycloneDDS.Low_Level
        .dds_security_dds_security_api_access_control_h
        .dds_security_access_control;
      ac_plugin : access dds_security_plugin;
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_security_verify_plugin_functions";

end CycloneDDS.Low_Level.dds_security_core_dds_security_plugins_h;
