pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with CycloneDDS.Low_Level.dds_ddsi_q_thread_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
with System;

package CycloneDDS.Low_Level.dds_ddsi_q_gc_h is

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

   type gcreq;
   type gcreq_cb_t is access procedure (arg1 : access gcreq) with
      Convention => C;

   type idx_vtime is record
      idx   : aliased unsigned;
      vtime : aliased CycloneDDS.Low_Level.dds_ddsi_q_thread_h.vtime_t;
   end record with
      Convention => C_Pass_By_Copy;

   type anon6105_array6111 is array (0 .. 0) of aliased idx_vtime;
   type gcreq is record
      next    : access gcreq;
      queue : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.gcreq_queue;
      cb      : gcreq_cb_t;
      arg     : System.Address;
      nvtimes : aliased unsigned;
      vtimes  : aliased anon6105_array6111;
   end record with
      Convention => C_Pass_By_Copy;

   function gcreq_queue_new
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)
      return access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
     .gcreq_queue with
      Import        => True,
      Convention    => C,
      External_Name => "gcreq_queue_new";

   procedure gcreq_queue_drain
     (q : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .gcreq_queue) with
      Import        => True,
      Convention    => C,
      External_Name => "gcreq_queue_drain";

   procedure gcreq_queue_free
     (q : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .gcreq_queue) with
      Import        => True,
      Convention    => C,
      External_Name => "gcreq_queue_free";

   function gcreq_new
     (the_gcreq_queue : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .gcreq_queue;
      cb : gcreq_cb_t) return access gcreq with
      Import        => True,
      Convention    => C,
      External_Name => "gcreq_new";

   procedure gcreq_free (the_gcreq : access gcreq) with
      Import        => True,
      Convention    => C,
      External_Name => "gcreq_free";

   procedure gcreq_enqueue (the_gcreq : access gcreq) with
      Import        => True,
      Convention    => C,
      External_Name => "gcreq_enqueue";

   function gcreq_requeue
     (the_gcreq : access gcreq; cb : gcreq_cb_t) return int with
      Import        => True,
      Convention    => C,
      External_Name => "gcreq_requeue";

end CycloneDDS.Low_Level.dds_ddsi_q_gc_h;
