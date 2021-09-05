pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
with CycloneDDS.Low_Level.dds_ddsi_q_thread_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;
with System;
with Interfaces.C.Strings;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_entity_index_h is

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

   type anon15061_union15062 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            wr : aliased CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
         when 1 =>
            rd : aliased CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader;
         when 2 =>
            e : aliased CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_common;
         when others =>
            gpe : aliased CycloneDDS.Low_Level.dds_ddsi_q_entity_h
              .generic_proxy_endpoint;
      end case;
   end record with
      Convention      => C_Pass_By_Copy,
      Unchecked_Union => True;
   type match_entities_range_key is record
      entity : aliased anon15061_union15062;
      xqos   : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos_t;
   end record with
      Convention => C_Pass_By_Copy;

   type entidx_enum is record
      entidx : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .entity_index;
      kind  : aliased CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_kind;
      cur   : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_common;
      vtime : aliased CycloneDDS.Low_Level.dds_ddsi_q_thread_h.vtime_t;
   end record with
      Convention => C_Pass_By_Copy;

      -- Readers & writers are both in a GUID- and in a GID-keyed table. If
      --   they are in the GID-based one, they are also in the GUID-based one,
      --   but not the way around, for two reasons:
      --   - firstly, there are readers & writers that do not have a GID
      --     (built-in endpoints, fictitious transient data readers),
      --   - secondly, they are inserted first in the GUID-keyed one, and then
      --     in the GID-keyed one.
      --   The GID is used solely for the interface with the OpenSplice
      --   kernel, all internal state and protocol handling is done using the
      --   GUID. So all this means is that, e.g., a writer being deleted
      --   becomes invisible to the network reader slightly before it
      --   disappears in the protocol handling, or that a writer might exist
      --   at the protocol level slightly before the network reader can use it
      --   to transmit data.

   function entity_index_new
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)
      return access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
     .entity_index with
      Import        => True,
      Convention    => C,
      External_Name => "entity_index_new";

   procedure entity_index_free
     (ei : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .entity_index) with
      Import        => True,
      Convention    => C,
      External_Name => "entity_index_free";

   procedure entidx_insert_participant_guid
     (ei : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.entity_index;
      pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_insert_participant_guid";

   procedure entidx_insert_proxy_participant_guid
     (ei : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.entity_index;
      proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h
        .proxy_participant) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_insert_proxy_participant_guid";

   procedure entidx_insert_writer_guid
     (ei : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.entity_index;
      wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_insert_writer_guid";

   procedure entidx_insert_reader_guid
     (ei : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.entity_index;
      rd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_insert_reader_guid";

   procedure entidx_insert_proxy_writer_guid
     (ei  : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.entity_index;
      pwr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_writer) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_insert_proxy_writer_guid";

   procedure entidx_insert_proxy_reader_guid
     (ei  : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.entity_index;
      prd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_insert_proxy_reader_guid";

   procedure entidx_remove_participant_guid
     (ei : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.entity_index;
      pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_remove_participant_guid";

   procedure entidx_remove_proxy_participant_guid
     (ei : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.entity_index;
      proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h
        .proxy_participant) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_remove_proxy_participant_guid";

   procedure entidx_remove_writer_guid
     (ei : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.entity_index;
      wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_remove_writer_guid";

   procedure entidx_remove_reader_guid
     (ei : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.entity_index;
      rd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_remove_reader_guid";

   procedure entidx_remove_proxy_writer_guid
     (ei  : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.entity_index;
      pwr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_writer) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_remove_proxy_writer_guid";

   procedure entidx_remove_proxy_reader_guid
     (ei  : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.entity_index;
      prd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_remove_proxy_reader_guid";

   function entidx_lookup_guid_untyped
     (ei : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .entity_index;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_lookup_guid_untyped";

   function entidx_lookup_guid
     (ei : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .entity_index;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      kind : CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_kind)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_lookup_guid";

   function entidx_lookup_participant_guid
     (ei : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .entity_index;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t)
      return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_lookup_participant_guid";

   function entidx_lookup_proxy_participant_guid
     (ei : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .entity_index;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t)
      return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h
     .proxy_participant with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_lookup_proxy_participant_guid";

   function entidx_lookup_writer_guid
     (ei : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .entity_index;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t)
      return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_lookup_writer_guid";

   function entidx_lookup_reader_guid
     (ei : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .entity_index;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t)
      return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_lookup_reader_guid";

   function entidx_lookup_proxy_writer_guid
     (ei : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .entity_index;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t)
      return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_writer with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_lookup_proxy_writer_guid";

   function entidx_lookup_proxy_reader_guid
     (ei : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .entity_index;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t)
      return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_lookup_proxy_reader_guid";

      -- Enumeration of entries in the hash table:
      --   - "next" visits at least all entries that were in the hash table at
      --     the time of calling init and that have not subsequently been
      --     removed;
      --   - "next" may visit an entry more than once, but will do so only
      --     because of rare events (i.e., resize or so);
      --   - the order in which entries are visited is arbitrary;
      --   - the caller must call init() before it may call next(); it must
      --     call fini() before it may call init() again.

   type entidx_enum_participant is record
      st : aliased entidx_enum;
   end record with
      Convention => C_Pass_By_Copy;

   type entidx_enum_writer is record
      st : aliased entidx_enum;
   end record with
      Convention => C_Pass_By_Copy;

   type entidx_enum_reader is record
      st : aliased entidx_enum;
   end record with
      Convention => C_Pass_By_Copy;

   type entidx_enum_proxy_participant is record
      st : aliased entidx_enum;
   end record with
      Convention => C_Pass_By_Copy;

   type entidx_enum_proxy_writer is record
      st : aliased entidx_enum;
   end record with
      Convention => C_Pass_By_Copy;

   type entidx_enum_proxy_reader is record
      st : aliased entidx_enum;
   end record with
      Convention => C_Pass_By_Copy;

   procedure entidx_enum_init
     (st : access entidx_enum;
      ei : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .entity_index;
      kind : CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_kind) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_enum_init";

   procedure entidx_enum_init_topic
     (st : access entidx_enum;
      gh : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .entity_index;
      kind  : CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_kind;
      topic : Interfaces.C.Strings.chars_ptr;
      max   : access match_entities_range_key) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_enum_init_topic";

   procedure entidx_enum_init_topic_w_prefix
     (st : access entidx_enum;
      ei : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .entity_index;
      kind   : CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_kind;
      topic  : Interfaces.C.Strings.chars_ptr;
      prefix : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_prefix_t;
      max : access match_entities_range_key) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_enum_init_topic_w_prefix";

   function entidx_enum_next_max
     (st : access entidx_enum; max : access constant match_entities_range_key)
      return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_enum_next_max";

   function entidx_enum_next
     (st : access entidx_enum) return System.Address with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_enum_next";

   procedure entidx_enum_fini (st : access entidx_enum) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_enum_fini";

   procedure entidx_enum_writer_init
     (st : access entidx_enum_writer;
      ei : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .entity_index) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_enum_writer_init";

   procedure entidx_enum_reader_init
     (st : access entidx_enum_reader;
      ei : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .entity_index) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_enum_reader_init";

   procedure entidx_enum_proxy_writer_init
     (st : access entidx_enum_proxy_writer;
      ei : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .entity_index) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_enum_proxy_writer_init";

   procedure entidx_enum_proxy_reader_init
     (st : access entidx_enum_proxy_reader;
      ei : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .entity_index) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_enum_proxy_reader_init";

   procedure entidx_enum_participant_init
     (st : access entidx_enum_participant;
      ei : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .entity_index) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_enum_participant_init";

   procedure entidx_enum_proxy_participant_init
     (st : access entidx_enum_proxy_participant;
      ei : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .entity_index) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_enum_proxy_participant_init";

   function entidx_enum_writer_next
     (st : access entidx_enum_writer)
      return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_enum_writer_next";

   function entidx_enum_reader_next
     (st : access entidx_enum_reader)
      return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_enum_reader_next";

   function entidx_enum_proxy_writer_next
     (st : access entidx_enum_proxy_writer)
      return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_writer with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_enum_proxy_writer_next";

   function entidx_enum_proxy_reader_next
     (st : access entidx_enum_proxy_reader)
      return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_enum_proxy_reader_next";

   function entidx_enum_participant_next
     (st : access entidx_enum_participant)
      return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_enum_participant_next";

   function entidx_enum_proxy_participant_next
     (st : access entidx_enum_proxy_participant)
      return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h
     .proxy_participant with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_enum_proxy_participant_next";

   procedure entidx_enum_writer_fini (st : access entidx_enum_writer) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_enum_writer_fini";

   procedure entidx_enum_reader_fini (st : access entidx_enum_reader) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_enum_reader_fini";

   procedure entidx_enum_proxy_writer_fini
     (st : access entidx_enum_proxy_writer) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_enum_proxy_writer_fini";

   procedure entidx_enum_proxy_reader_fini
     (st : access entidx_enum_proxy_reader) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_enum_proxy_reader_fini";

   procedure entidx_enum_participant_fini
     (st : access entidx_enum_participant) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_enum_participant_fini";

   procedure entidx_enum_proxy_participant_fini
     (st : access entidx_enum_proxy_participant) with
      Import        => True,
      Convention    => C,
      External_Name => "entidx_enum_proxy_participant_fini";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_entity_index_h;
