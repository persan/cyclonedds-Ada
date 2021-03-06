pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;
with CycloneDDS.Low_Level.dds_ddsrt_circlist_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_xevent_h;

limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_deadline_h is

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

   type deadline_missed_cb_t is access function
     (arg1 : System.Address;
      arg2 : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t)
      return CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t with
      Convention => C;

      -- linked list for deadline missed
   type deadline_adm is record
      list : aliased CycloneDDS.Low_Level.dds_ddsrt_circlist_h.ddsrt_circlist;
      evt : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.xevent;
      deadline_missed_cb : deadline_missed_cb_t;
      list_offset        : aliased unsigned_long;
      elem_offset        : aliased unsigned_long;
      dur : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;
   end record with
      Convention => C_Pass_By_Copy;

      -- xevent that triggers when deadline expires for an instance
      -- callback for deadline missed; this cb can use deadline_next_missed_locked to get next instance that has a missed deadline
      -- offset of deadline_adm element in whc or rhc
      -- offset of deadline_elem element in whc or rhc instance
      -- deadline duration
   type deadline_elem is record
      e : aliased CycloneDDS.Low_Level.dds_ddsrt_circlist_h
        .ddsrt_circlist_elem;
      t_deadline : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
   end record with
      Convention => C_Pass_By_Copy;

   procedure deadline_init
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .ddsi_domaingv;
      the_deadline_adm   : access deadline_adm; list_offset : unsigned_long;
      elem_offset        : unsigned_long;
      deadline_missed_cb : deadline_missed_cb_t) with
      Import        => True,
      Convention    => C,
      External_Name => "deadline_init";

   procedure deadline_stop
     (the_deadline_adm : access constant deadline_adm) with
      Import        => True,
      Convention    => C,
      External_Name => "deadline_stop";

   procedure deadline_clear (the_deadline_adm : access deadline_adm) with
      Import        => True,
      Convention    => C,
      External_Name => "deadline_clear";

   procedure deadline_fini
     (the_deadline_adm : access constant deadline_adm) with
      Import        => True,
      Convention    => C,
      External_Name => "deadline_fini";

   function deadline_next_missed_locked
     (the_deadline_adm : access deadline_adm;
      tnow             : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      instance         : System.Address)
      return CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t with
      Import        => True,
      Convention    => C,
      External_Name => "deadline_next_missed_locked";

   procedure deadline_register_instance_real
     (the_deadline_adm : access deadline_adm; elem : access deadline_elem;
      tprev            : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      tnow : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t) with
      Import        => True,
      Convention    => C,
      External_Name => "deadline_register_instance_real";

   procedure deadline_unregister_instance_real
     (the_deadline_adm : access deadline_adm; elem : access deadline_elem) with
      Import        => True,
      Convention    => C,
      External_Name => "deadline_unregister_instance_real";

   procedure deadline_renew_instance_real
     (the_deadline_adm : access deadline_adm; elem : access deadline_elem) with
      Import        => True,
      Convention    => C,
      External_Name => "deadline_renew_instance_real";

   procedure deadline_register_instance_locked
     (the_deadline_adm : access deadline_adm; elem : access deadline_elem;
      tnow : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t) with
      Import        => True,
      Convention    => C,
      External_Name => "deadline_register_instance_locked";

   procedure deadline_reregister_instance_locked
     (the_deadline_adm : access deadline_adm; elem : access deadline_elem;
      tnow : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t) with
      Import        => True,
      Convention    => C,
      External_Name => "deadline_reregister_instance_locked";

   procedure deadline_unregister_instance_locked
     (the_deadline_adm : access deadline_adm; elem : access deadline_elem) with
      Import        => True,
      Convention    => C,
      External_Name => "deadline_unregister_instance_locked";

   procedure deadline_renew_instance_locked
     (the_deadline_adm : access deadline_adm; elem : access deadline_elem) with
      Import        => True,
      Convention    => C,
      External_Name => "deadline_renew_instance_locked";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_deadline_h;
