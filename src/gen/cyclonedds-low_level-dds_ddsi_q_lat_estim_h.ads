pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

limited with CycloneDDS.Low_Level.dds_ddsrt_log_h;
with Interfaces.C.Strings;

package CycloneDDS.Low_Level.dds_ddsi_q_lat_estim_h is

   NN_LAT_ESTIM_MEDIAN_WINSZ : constant :=
     7;  --  /usr/gnat/include/dds/ddsi/q_lat_estim.h:21

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

   -- median filtering with a small window in an attempt to remove the
   --     worst outliers

   type anon6208_array6209 is array (0 .. 6) of aliased float;
   type nn_lat_estim is record
      index    : aliased int;
      window   : aliased anon6208_array6209;
      smoothed : aliased float;
   end record with
      Convention => C_Pass_By_Copy;

      -- simple alpha filtering for smoothing
   procedure nn_lat_estim_init (le : access nn_lat_estim) with
      Import        => True,
      Convention    => C,
      External_Name => "nn_lat_estim_init";

   procedure nn_lat_estim_fini (le : access nn_lat_estim) with
      Import        => True,
      Convention    => C,
      External_Name => "nn_lat_estim_fini";

   procedure nn_lat_estim_update (le : access nn_lat_estim; est : long) with
      Import        => True,
      Convention    => C,
      External_Name => "nn_lat_estim_update";

   function nn_lat_estim_current
     (le : access constant nn_lat_estim) return double with
      Import        => True,
      Convention    => C,
      External_Name => "nn_lat_estim_current";

   function nn_lat_estim_log
     (logcat : unsigned;
      logcfg : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h
        .ddsrt_log_cfg_t;
      tag : Interfaces.C.Strings.chars_ptr; le : access constant nn_lat_estim)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "nn_lat_estim_log";

end CycloneDDS.Low_Level.dds_ddsi_q_lat_estim_h;
