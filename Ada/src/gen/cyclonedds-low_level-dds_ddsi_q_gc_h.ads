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
   type gcreq_cb_t is access procedure (arg1 : access gcreq)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/q_gc.h:31

   type idx_vtime is record
      idx : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/q_gc.h:34
      vtime : aliased CycloneDDS.Low_Level.dds_ddsi_q_thread_h.vtime_t;  -- /usr/gnat/include/dds/ddsi/q_gc.h:35
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/q_gc.h:33

   type anon6105_array6111 is array (0 .. 0) of aliased idx_vtime;
   type gcreq is record
      next : access gcreq;  -- /usr/gnat/include/dds/ddsi/q_gc.h:39
      queue : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.gcreq_queue;  -- /usr/gnat/include/dds/ddsi/q_gc.h:40
      cb : gcreq_cb_t;  -- /usr/gnat/include/dds/ddsi/q_gc.h:41
      arg : System.Address;  -- /usr/gnat/include/dds/ddsi/q_gc.h:42
      nvtimes : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/q_gc.h:43
      vtimes : aliased anon6105_array6111;  -- /usr/gnat/include/dds/ddsi/q_gc.h:44
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/q_gc.h:38

   function gcreq_queue_new (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv) return access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.gcreq_queue  -- /usr/gnat/include/dds/ddsi/q_gc.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "gcreq_queue_new";

   procedure gcreq_queue_drain (q : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.gcreq_queue)  -- /usr/gnat/include/dds/ddsi/q_gc.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "gcreq_queue_drain";

   procedure gcreq_queue_free (q : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.gcreq_queue)  -- /usr/gnat/include/dds/ddsi/q_gc.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "gcreq_queue_free";

   function gcreq_new (the_gcreq_queue : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.gcreq_queue; cb : gcreq_cb_t) return access gcreq  -- /usr/gnat/include/dds/ddsi/q_gc.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "gcreq_new";

   procedure gcreq_free (the_gcreq : access gcreq)  -- /usr/gnat/include/dds/ddsi/q_gc.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "gcreq_free";

   procedure gcreq_enqueue (the_gcreq : access gcreq)  -- /usr/gnat/include/dds/ddsi/q_gc.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "gcreq_enqueue";

   function gcreq_requeue (the_gcreq : access gcreq; cb : gcreq_cb_t) return int  -- /usr/gnat/include/dds/ddsi/q_gc.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "gcreq_requeue";

end CycloneDDS.Low_Level.dds_ddsi_q_gc_h;
