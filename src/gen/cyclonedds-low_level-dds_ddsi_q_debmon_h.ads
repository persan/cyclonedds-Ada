pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h;
with Interfaces.C.Strings;
with System;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;

package CycloneDDS.Low_Level.dds_ddsi_q_debmon_h is

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

   type debug_monitor_cpf_t is access function
     (arg1 : CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn_t;
      arg2 : Interfaces.C.Strings
        .chars_ptr  -- , ...
   ) return int with
      Convention => C;

   type debug_monitor_plugin_t is access function
     (arg1 : CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn_t;
      arg2 : debug_monitor_cpf_t; arg3 : System.Address) return int with
      Convention => C;

   function new_debug_monitor
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      port : int)
      return access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
     .debug_monitor with
      Import        => True,
      Convention    => C,
      External_Name => "new_debug_monitor";

   procedure add_debug_monitor_plugin
     (dm : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.debug_monitor;
      fn : debug_monitor_plugin_t; arg : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "add_debug_monitor_plugin";

   procedure free_debug_monitor
     (dm : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .debug_monitor) with
      Import        => True,
      Convention    => C,
      External_Name => "free_debug_monitor";

end CycloneDDS.Low_Level.dds_ddsi_q_debmon_h;
