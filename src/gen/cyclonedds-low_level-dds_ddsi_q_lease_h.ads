pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsrt_fibheap_h;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;
with CycloneDDS.Low_Level.dds_ddsrt_atomics_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
with System;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;

package CycloneDDS.Low_Level.dds_ddsi_q_lease_h is

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

   -- FIXME: make a special for the lease admin
   type lease is record
      heapnode : aliased CycloneDDS.Low_Level.dds_ddsrt_fibheap_h
        .ddsrt_fibheap_node_t;
      pp_heapnode : aliased CycloneDDS.Low_Level.dds_ddsrt_fibheap_h
        .ddsrt_fibheap_node_t;
      tsched : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_etime_t;
      tend   : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h
        .ddsrt_atomic_uint64_t;
      tdur   : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;
      entity : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_common;
   end record with
      Convention => C_Pass_By_Copy;

      -- access guarded by leaseheap_lock
      -- really an ddsrt_etime_t
      -- constant (renew depends on it)
      -- constant
   function compare_lease_tsched
     (va : System.Address; vb : System.Address) return int with
      Import        => True,
      Convention    => C,
      External_Name => "compare_lease_tsched";

   function compare_lease_tdur
     (va : System.Address; vb : System.Address) return int with
      Import        => True,
      Convention    => C,
      External_Name => "compare_lease_tdur";

   procedure lease_management_init
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .ddsi_domaingv) with
      Import        => True,
      Convention    => C,
      External_Name => "lease_management_init";

   procedure lease_management_term
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .ddsi_domaingv) with
      Import        => True,
      Convention    => C,
      External_Name => "lease_management_term";

   function lease_new
     (texpire : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_etime_t;
      tdur    : long;
      e       : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_common)
      return access lease with
      Import        => True,
      Convention    => C,
      External_Name => "lease_new";

   function lease_clone (l : access constant lease) return access lease with
      Import        => True,
      Convention    => C,
      External_Name => "lease_clone";

   procedure lease_register (l : access lease) with
      Import        => True,
      Convention    => C,
      External_Name => "lease_register";

   procedure lease_unregister (l : access lease) with
      Import        => True,
      Convention    => C,
      External_Name => "lease_unregister";

   procedure lease_free (l : access lease) with
      Import        => True,
      Convention    => C,
      External_Name => "lease_free";

   procedure lease_renew
     (l    : access lease;
      tnow : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_etime_t) with
      Import        => True,
      Convention    => C,
      External_Name => "lease_renew";

   procedure lease_set_expiry
     (l      : access lease;
      c_when : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_etime_t) with
      Import        => True,
      Convention    => C,
      External_Name => "lease_set_expiry";

   function check_and_handle_lease_expiration
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      tnow : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_etime_t)
      return long with
      Import        => True,
      Convention    => C,
      External_Name => "check_and_handle_lease_expiration";

end CycloneDDS.Low_Level.dds_ddsi_q_lease_h;
