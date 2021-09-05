pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;

with Interfaces.C.Strings;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;
with System;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;

package CycloneDDS.Low_Level.dds_ddsi_q_xevent_h is

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

   -- NOTE: xevents scheduled with the same tsched used to always be
   --   executed in the order of scheduling, but that is no longer true.
   --   With the messages now via the "untimed" path, that should not
   --   introduce any issues.

   type xevent is null record;   -- incomplete struct

   function xeventq_new
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      max_queued_rexmit_bytes   : unsigned_long;
      max_queued_rexmit_msgs    : unsigned_long;
      auxiliary_bandwidth_limit : unsigned)
      return access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.xeventq with
      Import        => True,
      Convention    => C,
      External_Name => "xeventq_new";

      -- xeventq_free calls callback handlers with t = NEVER, at which point they are required to free
      --   whatever memory is claimed for the argument and call delete_xevent.

   procedure xeventq_free
     (evq : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.xeventq) with
      Import        => True,
      Convention    => C,
      External_Name => "xeventq_free";

      -- <0 => error, =0 => ok
   function xeventq_start
     (evq  : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.xeventq;
      name : Interfaces.C.Strings.chars_ptr)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "xeventq_start";

   procedure xeventq_stop
     (evq : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.xeventq) with
      Import        => True,
      Convention    => C,
      External_Name => "xeventq_stop";

   procedure qxev_msg
     (evq : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.xeventq;
      msg : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg) with
      Import        => True,
      Convention    => C,
      External_Name => "qxev_msg";

   procedure qxev_pwr_entityid
     (pwr  : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_writer;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t) with
      Import        => True,
      Convention    => C,
      External_Name => "qxev_pwr_entityid";

   procedure qxev_prd_entityid
     (prd  : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t) with
      Import        => True,
      Convention    => C,
      External_Name => "qxev_prd_entityid";

   procedure qxev_nt_callback
     (evq : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.xeventq;
      cb : access procedure (arg1 : System.Address); arg : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "qxev_nt_callback";

      -- Returns 1 if queued, 0 otherwise (no point in returning the
      --   event, you can't do anything with it anyway)

   function qxev_msg_rexmit_wrlock_held
     (evq   : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.xeventq;
      msg   : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg;
      force : int) return int with
      Import        => True,
      Convention    => C,
      External_Name => "qxev_msg_rexmit_wrlock_held";

      -- All of the following lock EVQ for the duration of the operation
   procedure delete_xevent (ev : access xevent) with
      Import        => True,
      Convention    => C,
      External_Name => "delete_xevent";

   procedure delete_xevent_callback (ev : access xevent) with
      Import        => True,
      Convention    => C,
      External_Name => "delete_xevent_callback";

   function resched_xevent_if_earlier
     (ev     : access xevent;
      tsched : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "resched_xevent_if_earlier";

   function qxev_heartbeat
     (evq     : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.xeventq;
      tsched  : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      wr_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t)
      return access xevent with
      Import        => True,
      Convention    => C,
      External_Name => "qxev_heartbeat";

   function qxev_acknack
     (evq      : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.xeventq;
      tsched   : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      pwr_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      rd_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t)
      return access xevent with
      Import        => True,
      Convention    => C,
      External_Name => "qxev_acknack";

   function qxev_spdp
     (evq     : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.xeventq;
      tsched  : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      pp_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      proxypp_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t)
      return access xevent with
      Import        => True,
      Convention    => C,
      External_Name => "qxev_spdp";

   function qxev_pmd_update
     (evq     : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.xeventq;
      tsched  : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      pp_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t)
      return access xevent with
      Import        => True,
      Convention    => C,
      External_Name => "qxev_pmd_update";

   function qxev_delete_writer
     (evq    : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.xeventq;
      tsched : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      guid   : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t)
      return access xevent with
      Import        => True,
      Convention    => C,
      External_Name => "qxev_delete_writer";

      -- cb will be called with now = NEVER if the event is still enqueued when when xeventq_free starts cleaning up
   function qxev_callback
     (evq    : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.xeventq;
      tsched : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      cb     : access procedure
        (arg1 : access xevent; arg2 : System.Address;
         arg3 : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t);
      arg : System.Address) return access xevent with
      Import        => True,
      Convention    => C,
      External_Name => "qxev_callback";

end CycloneDDS.Low_Level.dds_ddsi_q_xevent_h;
