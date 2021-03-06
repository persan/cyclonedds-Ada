pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;
with CycloneDDS.Low_Level.dds_ddsrt_fibheap_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_xevent_h;

limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_lifespan_h is

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

   type sample_expired_cb_t is access function
     (arg1 : System.Address;
      arg2 : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t)
      return CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t with
      Convention => C;

      -- heap for sample expiration (lifespan)
   type lifespan_adm is record
      ls_exp_heap : aliased CycloneDDS.Low_Level.dds_ddsrt_fibheap_h
        .ddsrt_fibheap_t;
      evt : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.xevent;
      sample_expired_cb : sample_expired_cb_t;
      fh_offset         : aliased unsigned_long;
      fhn_offset        : aliased unsigned_long;
   end record with
      Convention => C_Pass_By_Copy;

      -- xevent that triggers for sample with earliest expiration
      -- callback for expired sample; this cb can use lifespan_next_expired_locked to get next expired sample
      -- offset of lifespan_adm element in whc or rhc
      -- offset of lifespan_fhnode element in whc or rhc node (sample)
   type lifespan_fhnode is record
      heapnode : aliased CycloneDDS.Low_Level.dds_ddsrt_fibheap_h
        .ddsrt_fibheap_node_t;
      t_expire : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
   end record with
      Convention => C_Pass_By_Copy;

   procedure lifespan_init
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .ddsi_domaingv;
      the_lifespan_adm  : access lifespan_adm; fh_offset : unsigned_long;
      fh_node_offset    : unsigned_long;
      sample_expired_cb : sample_expired_cb_t) with
      Import        => True,
      Convention    => C,
      External_Name => "lifespan_init";

   procedure lifespan_fini
     (the_lifespan_adm : access constant lifespan_adm) with
      Import        => True,
      Convention    => C,
      External_Name => "lifespan_fini";

   function lifespan_next_expired_locked
     (the_lifespan_adm : access constant lifespan_adm;
      tnow             : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      sample           : System.Address)
      return CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t with
      Import        => True,
      Convention    => C,
      External_Name => "lifespan_next_expired_locked";

   procedure lifespan_register_sample_real
     (the_lifespan_adm : access lifespan_adm;
      node             : access lifespan_fhnode) with
      Import        => True,
      Convention    => C,
      External_Name => "lifespan_register_sample_real";

   procedure lifespan_unregister_sample_real
     (the_lifespan_adm : access lifespan_adm;
      node             : access lifespan_fhnode) with
      Import        => True,
      Convention    => C,
      External_Name => "lifespan_unregister_sample_real";

   procedure lifespan_register_sample_locked
     (the_lifespan_adm : access lifespan_adm;
      node             : access lifespan_fhnode) with
      Import        => True,
      Convention    => C,
      External_Name => "lifespan_register_sample_locked";

   procedure lifespan_unregister_sample_locked
     (the_lifespan_adm : access lifespan_adm;
      node             : access lifespan_fhnode) with
      Import        => True,
      Convention    => C,
      External_Name => "lifespan_unregister_sample_locked";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_lifespan_h;
