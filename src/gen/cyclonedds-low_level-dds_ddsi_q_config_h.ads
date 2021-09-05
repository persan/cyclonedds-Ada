pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h;

limited with CycloneDDS.Low_Level.dds_ddsi_q_rtps_h;
limited with CycloneDDS.Low_Level.dds_ddsrt_log_h;

package CycloneDDS.Low_Level.dds_ddsi_q_config_h is

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

   function config_init
     (config : Interfaces.C.Strings.chars_ptr;
      cfg    : access CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h.ddsi_config;
      domid  : unsigned)
      return access CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.cfgst with
      Import        => True,
      Convention    => C,
      External_Name => "config_init";

   procedure config_print_cfgst
     (the_cfgst : access CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.cfgst;
      logcfg    : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h
        .ddsrt_log_cfg_t) with
      Import        => True,
      Convention    => C,
      External_Name => "config_print_cfgst";

   procedure config_print_rawconfig
     (cfg : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h
        .ddsi_config;
      logcfg : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h
        .ddsrt_log_cfg_t) with
      Import        => True,
      Convention    => C,
      External_Name => "config_print_rawconfig";

   procedure config_free_source_info
     (the_cfgst : access CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.cfgst) with
      Import        => True,
      Convention    => C,
      External_Name => "config_free_source_info";

   procedure config_fini
     (the_cfgst : access CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.cfgst) with
      Import        => True,
      Convention    => C,
      External_Name => "config_fini";

end CycloneDDS.Low_Level.dds_ddsi_q_config_h;
