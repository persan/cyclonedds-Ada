pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Extensions;
with Interfaces.C.Strings;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_threadmon_h is

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

   type ddsi_threadmon is null record;   -- incomplete struct

   function ddsi_threadmon_new
     (liveliness_monitoring_interval : long;
      noprogress_log_stacktraces     : Extensions.bool)
      return access ddsi_threadmon with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_threadmon_new";

   function ddsi_threadmon_start
     (sl : access ddsi_threadmon; name : Interfaces.C.Strings.chars_ptr)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_threadmon_start";

   procedure ddsi_threadmon_register_domain
     (sl : access ddsi_threadmon;
      gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .ddsi_domaingv) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_threadmon_register_domain";

   procedure ddsi_threadmon_unregister_domain
     (sl : access ddsi_threadmon;
      gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .ddsi_domaingv) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_threadmon_unregister_domain";

   procedure ddsi_threadmon_stop (sl : access ddsi_threadmon) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_threadmon_stop";

   procedure ddsi_threadmon_free (sl : access ddsi_threadmon) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_threadmon_free";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_threadmon_h;
