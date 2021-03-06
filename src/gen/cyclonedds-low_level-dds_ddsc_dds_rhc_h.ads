pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
with Interfaces.C.Extensions;
with System;
limited with CycloneDDS.Low_Level.dds_dds_h;

with CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h;

with CycloneDDS.Low_Level.dds_ddsi_ddsi_rhc_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;

package CycloneDDS.Low_Level.dds_ddsc_dds_rhc_h is

   --  unsupported macro: NO_STATE_MASK_SET (DDS_ANY_STATE + 1)
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

   type dds_readcond is null record;   -- incomplete struct

   type dds_reader is null record;   -- incomplete struct

   type ddsi_tkmap is null record;   -- incomplete struct

   type dds_rhc;
   type dds_rhc_associate_t is access function
     (arg1 : access dds_rhc; arg2 : access dds_reader;
      arg3 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h
        .ddsi_sertype;
      arg4 : access ddsi_tkmap)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Convention => C;

   type dds_rhc_read_take_t is access function
     (arg1 : access dds_rhc; arg2 : Extensions.bool; arg3 : System.Address;
      arg4 : access CycloneDDS.Low_Level.dds_dds_h.dds_sample_info_t;
      arg5 : unsigned; arg6 : unsigned;
      arg7 : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h
        .dds_instance_handle_t;
      arg8 : access dds_readcond) return int with
      Convention => C;

   type dds_rhc_read_take_cdr_t is access function
     (arg1 : access dds_rhc; arg2 : Extensions.bool; arg3 : System.Address;
      arg4 : access CycloneDDS.Low_Level.dds_dds_h.dds_sample_info_t;
      arg5 : unsigned; arg6 : unsigned; arg7 : unsigned; arg8 : unsigned;
      arg9 : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h
        .dds_instance_handle_t)
      return int with
      Convention => C;

   type dds_rhc_add_readcondition_t is access function
     (arg1 : access dds_rhc; arg2 : access dds_readcond)
      return Extensions.bool with
      Convention => C;

   type dds_rhc_remove_readcondition_t is access procedure
     (arg1 : access dds_rhc; arg2 : access dds_readcond) with
      Convention => C;

   type dds_rhc_lock_samples_t is access function
     (arg1 : access dds_rhc) return unsigned with
      Convention => C;

   -- A copy of DDSI rhc ops comes first so we can use either interface without
      --     additional indirections

   type dds_rhc_ops is record
      rhc_ops : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_rhc_h.ddsi_rhc_ops;
      read                 : dds_rhc_read_take_t;
      take                 : dds_rhc_read_take_t;
      readcdr              : dds_rhc_read_take_cdr_t;
      takecdr              : dds_rhc_read_take_cdr_t;
      add_readcondition    : dds_rhc_add_readcondition_t;
      remove_readcondition : dds_rhc_remove_readcondition_t;
      lock_samples         : dds_rhc_lock_samples_t;
      associate            : dds_rhc_associate_t;
   end record with
      Convention => C_Pass_By_Copy;

   type anon1785_union4165 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ops : access constant dds_rhc_ops;
         when others =>
            rhc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_rhc_h.ddsi_rhc;
      end case;
   end record with
      Convention      => C_Pass_By_Copy,
      Unchecked_Union => True;
   type dds_rhc is record
      common : aliased anon1785_union4165;
   end record with
      Convention => C_Pass_By_Copy;

   subtype anon4168_array1135 is Interfaces.C.char_array (0 .. 0);
   type static_assert_59 is record
      cond : aliased anon4168_array1135;
   end record with
      Convention => C_Pass_By_Copy;

   function dds_rhc_associate
     (rhc    : access dds_rhc; reader : access dds_reader;
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h
        .ddsi_sertype;
      tkmap : access ddsi_tkmap)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_rhc_associate";

   function dds_rhc_store
     (rhc    : access dds_rhc;
      wrinfo : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_rhc_h
        .ddsi_writer_info;
      sample : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h
        .ddsi_serdata;
      tk : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h
        .ddsi_tkmap_instance)
      return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "dds_rhc_store";

   procedure dds_rhc_unregister_wr
     (rhc    : access dds_rhc;
      wrinfo : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_rhc_h
        .ddsi_writer_info) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_rhc_unregister_wr";

   procedure dds_rhc_relinquish_ownership
     (rhc : access dds_rhc; wr_iid : unsigned_long) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_rhc_relinquish_ownership";

   procedure dds_rhc_set_qos
     (rhc : access dds_rhc;
      qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_qos_t) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_rhc_set_qos";

   procedure dds_rhc_free (rhc : access dds_rhc) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_rhc_free";

   function dds_rhc_read
     (rhc : access dds_rhc; lock : Extensions.bool; values : System.Address;
      info_seq    : access CycloneDDS.Low_Level.dds_dds_h.dds_sample_info_t;
      max_samples : unsigned; mask : unsigned;
      handle      : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h
        .dds_instance_handle_t;
      cond : access dds_readcond) return int with
      Import        => True,
      Convention    => C,
      External_Name => "dds_rhc_read";

   function dds_rhc_take
     (rhc : access dds_rhc; lock : Extensions.bool; values : System.Address;
      info_seq    : access CycloneDDS.Low_Level.dds_dds_h.dds_sample_info_t;
      max_samples : unsigned; mask : unsigned;
      handle      : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h
        .dds_instance_handle_t;
      cond : access dds_readcond) return int with
      Import        => True,
      Convention    => C,
      External_Name => "dds_rhc_take";

   function dds_rhc_readcdr
     (rhc : access dds_rhc; lock : Extensions.bool; values : System.Address;
      info_seq : access CycloneDDS.Low_Level.dds_dds_h.dds_sample_info_t;
      max_samples : unsigned; sample_states : unsigned; view_states : unsigned;
      instance_states : unsigned;
      handle          : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h
        .dds_instance_handle_t)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "dds_rhc_readcdr";

   function dds_rhc_takecdr
     (rhc : access dds_rhc; lock : Extensions.bool; values : System.Address;
      info_seq : access CycloneDDS.Low_Level.dds_dds_h.dds_sample_info_t;
      max_samples : unsigned; sample_states : unsigned; view_states : unsigned;
      instance_states : unsigned;
      handle          : CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h
        .dds_instance_handle_t)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "dds_rhc_takecdr";

   function dds_rhc_add_readcondition
     (rhc : access dds_rhc; cond : access dds_readcond)
      return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "dds_rhc_add_readcondition";

   procedure dds_rhc_remove_readcondition
     (rhc : access dds_rhc; cond : access dds_readcond) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_rhc_remove_readcondition";

   function dds_rhc_lock_samples (rhc : access dds_rhc) return unsigned with
      Import        => True,
      Convention    => C,
      External_Name => "dds_rhc_lock_samples";

   procedure dds_reader_data_available_cb (rd : access dds_reader) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_reader_data_available_cb";

end CycloneDDS.Low_Level.dds_ddsc_dds_rhc_h;
