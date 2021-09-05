pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;

with CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_generic_h;

limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_thread_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_radmin_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_pmd_h is

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

   type ParticipantMessageData_t is record
      participantGuidPrefix : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_prefix_t;
      kind  : aliased unsigned;
      value : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .ddsi_octetseq_t;
   end record with
      Convention => C_Pass_By_Copy;

      -- really 4 octets
      --  <>subtype ParticipantMessageData_t is ParticipantMessageData;

   participant_message_data_ops : aliased array
     (size_t) of aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_generic_h
     .pserop with
      Import        => True,
      Convention    => C,
      External_Name => "participant_message_data_ops";

   participant_message_data_nops : aliased unsigned_long with
      Import        => True,
      Convention    => C,
      External_Name => "participant_message_data_nops";

   participant_message_data_ops_key : aliased array
     (size_t) of aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_generic_h
     .pserop with
      Import        => True,
      Convention    => C,
      External_Name => "participant_message_data_ops_key";

   participant_message_data_nops_key : aliased unsigned_long with
      Import        => True,
      Convention    => C,
      External_Name => "participant_message_data_nops_key";

   procedure write_pmd_message_guid
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      pp_guid  : access CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      pmd_kind : unsigned) with
      Import        => True,
      Convention    => C,
      External_Name => "write_pmd_message_guid";

   procedure write_pmd_message
     (ts1      : access CycloneDDS.Low_Level.dds_ddsi_q_thread_h.thread_state1;
      xp       : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_xpack;
      pp       : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant;
      pmd_kind : unsigned) with
      Import        => True,
      Convention    => C,
      External_Name => "write_pmd_message";

   procedure handle_pmd_message
     (rst : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h
        .receiver_state;
      sample_common : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h
        .ddsi_serdata) with
      Import        => True,
      Convention    => C,
      External_Name => "handle_pmd_message";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_pmd_h;
