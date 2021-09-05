pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_q_thread_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h;
with CycloneDDS.Low_Level.dds_ddsi_q_rtps_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h;

with System;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_whc_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;

package CycloneDDS.Low_Level.dds_ddsi_q_transmit_h is

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

   -- for nn_entityid_t
   -- Writing new data; serdata_twrite (serdata) is assumed to be really
   --   recentish; serdata is unref'd.  If xp == NULL, data is queued, else
   --   packed.
   --   "nogc": no GC may occur, so it may not block to throttle the writer if the high water mark of the WHC is reached, which implies true KEEP_LAST behaviour.  This is true for all the DDSI built-in writers.
   --   "gc": GC may occur, which means the writer history and watermarks can be anything.  This must be used for all application data.
   --

   function write_sample_gc
     (ts1     : access CycloneDDS.Low_Level.dds_ddsi_q_thread_h.thread_state1;
      xp      : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_xpack;
      wr      : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      serdata : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h
        .ddsi_serdata;
      tk : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h
        .ddsi_tkmap_instance)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "write_sample_gc";

   function write_sample_nogc
     (ts1     : access CycloneDDS.Low_Level.dds_ddsi_q_thread_h.thread_state1;
      xp      : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_xpack;
      wr      : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      serdata : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h
        .ddsi_serdata;
      tk : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h
        .ddsi_tkmap_instance)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "write_sample_nogc";

   function write_sample_gc_notk
     (ts1     : access CycloneDDS.Low_Level.dds_ddsi_q_thread_h.thread_state1;
      xp      : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_xpack;
      wr      : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      serdata : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h
        .ddsi_serdata)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "write_sample_gc_notk";

   function write_sample_nogc_notk
     (ts1     : access CycloneDDS.Low_Level.dds_ddsi_q_thread_h.thread_state1;
      xp      : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_xpack;
      wr      : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      serdata : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h
        .ddsi_serdata)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "write_sample_nogc_notk";

      -- When calling the following functions, wr->lock must be held
   function create_fragment_message
     (wr    : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      seq   : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h
        .ddsi_plist_t;
      serdata : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h
        .ddsi_serdata;
      fragnum : unsigned; nfrags : unsigned_short;
      prd     : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader;
      msg     : System.Address; isnew : int; advertised_fragnum : unsigned)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "create_fragment_message";

   function enqueue_sample_wrlock_held
     (wr    : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      seq   : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h
        .ddsi_plist_t;
      serdata : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h
        .ddsi_serdata;
      prd   : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader;
      isnew : int) return int with
      Import        => True,
      Convention    => C,
      External_Name => "enqueue_sample_wrlock_held";

   procedure enqueue_spdp_sample_wrlock_held
     (wr      : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      seq     : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      serdata : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h
        .ddsi_serdata;
      prd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader) with
      Import        => True,
      Convention    => C,
      External_Name => "enqueue_spdp_sample_wrlock_held";

   procedure add_Heartbeat
     (msg      : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg;
      wr       : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      whcst : access constant CycloneDDS.Low_Level.dds_ddsi_q_whc_h.whc_state;
      hbansreq : int; hbliveliness : int;
      dst      : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t;
      issync   : int) with
      Import        => True,
      Convention    => C,
      External_Name => "add_Heartbeat";

   function write_hb_liveliness
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      wr_guid : access CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      xp      : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_xpack)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "write_hb_liveliness";

   function write_sample_p2p_wrlock_held
     (wr      : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      seq     : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      plist   : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist_t;
      serdata : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h
        .ddsi_serdata;
      tk : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h
        .ddsi_tkmap_instance;
      prd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "write_sample_p2p_wrlock_held";

end CycloneDDS.Low_Level.dds_ddsi_q_transmit_h;
