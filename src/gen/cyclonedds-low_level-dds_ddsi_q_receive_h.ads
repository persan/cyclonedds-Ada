pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;
with System;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_radmin_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;
with CycloneDDS.Low_Level.dds_ddsi_q_rtps_h;

package CycloneDDS.Low_Level.dds_ddsi_q_receive_h is

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

   type anon6964_array3700 is array (0 .. 7) of aliased unsigned;
   type nn_gap_info is record
      gapstart   : aliased long;
      gapend     : aliased long;
      gapnumbits : aliased unsigned;
      gapbits    : aliased anon6964_array3700;
   end record with
      Convention => C_Pass_By_Copy;

   procedure nn_gap_info_init (gi : access nn_gap_info) with
      Import        => True,
      Convention    => C,
      External_Name => "nn_gap_info_init";

   procedure nn_gap_info_update
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      gi : access nn_gap_info; seqnr : long) with
      Import        => True,
      Convention    => C,
      External_Name => "nn_gap_info_update";

   function nn_gap_info_create_gap
     (wr  : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      prd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader;
      gi  : access nn_gap_info)
      return access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg with
      Import        => True,
      Convention    => C,
      External_Name => "nn_gap_info_create_gap";

   procedure trigger_recv_threads
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .ddsi_domaingv) with
      Import        => True,
      Convention    => C,
      External_Name => "trigger_recv_threads";

   function recv_thread
     (vrecv_thread_arg : System.Address) return unsigned with
      Import        => True,
      Convention    => C,
      External_Name => "recv_thread";

   function listen_thread
     (listener : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h
        .ddsi_tran_listener_t)
      return unsigned with
      Import        => True,
      Convention    => C,
      External_Name => "listen_thread";

   function user_dqueue_handler
     (sampleinfo : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h
        .nn_rsample_info;
      fragchain : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h
        .nn_rdata;
      rdguid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      qarg : System.Address) return int with
      Import        => True,
      Convention    => C,
      External_Name => "user_dqueue_handler";

   function add_Gap
     (msg     : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg;
      wr      : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      prd     : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader;
      start   : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      base    : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      numbits : unsigned; bits : access unsigned) return int with
      Import        => True,
      Convention    => C,
      External_Name => "add_Gap";

end CycloneDDS.Low_Level.dds_ddsi_q_receive_h;
