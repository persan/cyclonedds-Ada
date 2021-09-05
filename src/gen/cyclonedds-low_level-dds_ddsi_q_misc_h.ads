pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsi_q_protocol_h;
with CycloneDDS.Low_Level.dds_ddsi_q_rtps_h;
with Interfaces.C.Strings;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;
with Interfaces.C.Extensions;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h;

package CycloneDDS.Low_Level.dds_ddsi_q_misc_h is

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

   function fromSN
     (sn : CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_sequence_number_t)
      return CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t with
      Import        => True,
      Convention    => C,
      External_Name => "fromSN";

   function toSN
     (n : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t)
      return CycloneDDS.Low_Level.dds_ddsi_q_protocol_h
     .nn_sequence_number_t with
      Import        => True,
      Convention    => C,
      External_Name => "toSN";

   function normalize_data_datafrag_flags
     (smhdr : access constant CycloneDDS.Low_Level.dds_ddsi_q_protocol_h
        .SubmessageHeader_t)
      return unsigned_char with
      Import        => True,
      Convention    => C,
      External_Name => "normalize_data_datafrag_flags";

   function WildcardOverlap
     (p1 : Interfaces.C.Strings.chars_ptr; p2 : Interfaces.C.Strings.chars_ptr)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "WildcardOverlap";

   nullguid : aliased constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
     .ddsi_guid_t with
      Import        => True,
      Convention    => C,
      External_Name => "nullguid";

   function guid_prefix_zero
     (a : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_prefix_t)
      return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "guid_prefix_zero";

   function guid_prefix_eq
     (a : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_prefix_t;
      b : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_prefix_t)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "guid_prefix_eq";

   function guid_eq
     (a : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      b : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "guid_eq";

   function ddsi2_patmatch
     (pat : Interfaces.C.Strings.chars_ptr;
      str : Interfaces.C.Strings.chars_ptr) return int with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi2_patmatch";

   function find_partitionmapping
     (cfg : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h
        .ddsi_config;
      partition : Interfaces.C.Strings.chars_ptr;
      topic     : Interfaces.C.Strings.chars_ptr)
      return access CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h
     .ddsi_config_partitionmapping_listelem with
      Import        => True,
      Convention    => C,
      External_Name => "find_partitionmapping";

   function is_ignored_partition
     (cfg : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h
        .ddsi_config;
      partition : Interfaces.C.Strings.chars_ptr;
      topic     : Interfaces.C.Strings.chars_ptr) return int with
      Import        => True,
      Convention    => C,
      External_Name => "is_ignored_partition";

end CycloneDDS.Low_Level.dds_ddsi_q_misc_h;
