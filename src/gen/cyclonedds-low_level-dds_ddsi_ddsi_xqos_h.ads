pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Strings;
with CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h;

with CycloneDDS.Low_Level.dds_ddsrt_time_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h;
with System;
with Interfaces.C.Extensions;
limited with CycloneDDS.Low_Level.dds_ddsrt_log_h;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;

limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h is

   --  unsupported macro: QP_TOPIC_NAME ((uint64_t)1 << 0)
   --  unsupported macro: QP_TYPE_NAME ((uint64_t)1 << 1)
   --  unsupported macro: QP_PRESENTATION ((uint64_t)1 << 2)
   --  unsupported macro: QP_PARTITION ((uint64_t)1 << 3)
   --  unsupported macro: QP_GROUP_DATA ((uint64_t)1 << 4)
   --  unsupported macro: QP_TOPIC_DATA ((uint64_t)1 << 5)
   --  unsupported macro: QP_DURABILITY ((uint64_t)1 << 6)
   --  unsupported macro: QP_DURABILITY_SERVICE ((uint64_t)1 << 7)
   --  unsupported macro: QP_DEADLINE ((uint64_t)1 << 8)
   --  unsupported macro: QP_LATENCY_BUDGET ((uint64_t)1 << 9)
   --  unsupported macro: QP_LIVELINESS ((uint64_t)1 << 10)
   --  unsupported macro: QP_RELIABILITY ((uint64_t)1 << 11)
   --  unsupported macro: QP_DESTINATION_ORDER ((uint64_t)1 << 12)
   --  unsupported macro: QP_HISTORY ((uint64_t)1 << 13)
   --  unsupported macro: QP_RESOURCE_LIMITS ((uint64_t)1 << 14)
   --  unsupported macro: QP_TRANSPORT_PRIORITY ((uint64_t)1 << 15)
   --  unsupported macro: QP_LIFESPAN ((uint64_t)1 << 16)
   --  unsupported macro: QP_USER_DATA ((uint64_t)1 << 17)
   --  unsupported macro: QP_OWNERSHIP ((uint64_t)1 << 18)
   --  unsupported macro: QP_OWNERSHIP_STRENGTH ((uint64_t)1 << 19)
   --  unsupported macro: QP_TIME_BASED_FILTER ((uint64_t)1 << 20)
   --  unsupported macro: QP_ADLINK_WRITER_DATA_LIFECYCLE ((uint64_t)1 << 21)
   --  unsupported macro: QP_ADLINK_READER_DATA_LIFECYCLE ((uint64_t)1 << 22)
   --  unsupported macro: QP_ADLINK_READER_LIFESPAN ((uint64_t)1 << 24)
   --  unsupported macro: QP_ADLINK_SUBSCRIPTION_KEYS ((uint64_t)1 << 25)
   --  unsupported macro: QP_ADLINK_ENTITY_FACTORY ((uint64_t)1 << 27)
   --  unsupported macro: QP_CYCLONE_IGNORELOCAL ((uint64_t)1 << 30)
   --  unsupported macro: QP_PROPERTY_LIST ((uint64_t)1 << 31)
   --  unsupported macro: QP_TYPE_CONSISTENCY_ENFORCEMENT ((uint64_t)1 << 32)
   --  unsupported macro: QP_CYCLONE_TYPE_INFORMATION ((uint64_t)1 << 33)
   --  unsupported macro: QP_LOCATOR_MASK ((uint64_t)1 << 34)
   --  unsupported macro: QP_RXO_MASK (QP_DURABILITY | QP_PRESENTATION | QP_DEADLINE | QP_LATENCY_BUDGET | QP_OWNERSHIP | QP_LIVELINESS | QP_RELIABILITY | QP_DESTINATION_ORDER)
   --  unsupported macro: QP_CHANGEABLE_MASK (QP_USER_DATA | QP_TOPIC_DATA | QP_GROUP_DATA | QP_DEADLINE | QP_LATENCY_BUDGET | QP_OWNERSHIP_STRENGTH | QP_TIME_BASED_FILTER | QP_PARTITION | QP_TRANSPORT_PRIORITY | QP_LIFESPAN | QP_ADLINK_ENTITY_FACTORY | QP_ADLINK_WRITER_DATA_LIFECYCLE | QP_ADLINK_READER_DATA_LIFECYCLE)
   --  unsupported macro: QP_UNRECOGNIZED_INCOMPATIBLE_MASK ((uint64_t) 0)
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

   --XXX
   --XXX
   type ddsi_octetseq_t is record
      length : aliased unsigned;
      value  : access unsigned_char;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype ddsi_octetseq_t is ddsi_octetseq;

   subtype dds_userdata_qospolicy_t is ddsi_octetseq_t;

   subtype dds_topicdata_qospolicy_t is ddsi_octetseq_t;

   subtype dds_groupdata_qospolicy_t is ddsi_octetseq_t;

   -- The propagate boolean will not be send over the wire.
   --   * When the value is 'false', the complete struct shouldn't be send.
   --   * It has to be the first variable within the structure because it
   --   * is mapped to XbPROP in the serialiser.

   type dds_property_t is record
      propagate : aliased unsigned_char;
      name      : Interfaces.C.Strings.chars_ptr;
      value     : Interfaces.C.Strings.chars_ptr;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_property_t is dds_property;

   type dds_propertyseq_t is record
      n     : aliased unsigned;
      props : access dds_property_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_propertyseq_t is dds_propertyseq;

      -- The propagate boolean will not be send over the wire.
      --   * When the value is 'false', the complete struct shouldn't be send.
      --   * It has to be the first variable within the structure because it
      --   * is mapped to XbPROP in the serialiser.

   type dds_binaryproperty_t is record
      propagate : aliased unsigned_char;
      name      : Interfaces.C.Strings.chars_ptr;
      value     : aliased ddsi_octetseq_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_binaryproperty_t is dds_binaryproperty;

   type dds_binarypropertyseq_t is record
      n     : aliased unsigned;
      props : access dds_binaryproperty_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_binarypropertyseq_t is dds_binarypropertyseq;

   type dds_property_qospolicy_t is record
      value        : aliased dds_propertyseq_t;
      binary_value : aliased dds_binarypropertyseq_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_property_qospolicy_t is dds_property_qospolicy;

   type dds_durability_qospolicy_t is record
      kind : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h
        .dds_durability_kind_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_durability_qospolicy_t is dds_durability_qospolicy;

   type dds_history_qospolicy_t is record
      kind : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h
        .dds_history_kind_t;
      depth : aliased int;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_history_qospolicy_t is dds_history_qospolicy;

   type dds_resource_limits_qospolicy_t is record
      max_samples              : aliased int;
      max_instances            : aliased int;
      max_samples_per_instance : aliased int;
   end record with
      Convention => C_Pass_By_Copy;

--  <>subtype dds_resource_limits_qospolicy_t is dds_resource_limits_qospolicy;

   type dds_durability_service_qospolicy_t is record
      service_cleanup_delay : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h
        .dds_duration_t;
      history         : aliased dds_history_qospolicy_t;
      resource_limits : aliased dds_resource_limits_qospolicy_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_durability_service_qospolicy_t is dds_durability_service_qospolicy;

   type dds_external_durability_service_qospolicy_t is record
      service_cleanup_delay : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h
        .ddsi_duration_t;
      history         : aliased dds_history_qospolicy_t;
      resource_limits : aliased dds_resource_limits_qospolicy_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_external_durability_service_qospolicy_t is dds_external_durability_service_qospolicy;

   type dds_presentation_qospolicy_t is record
      access_scope : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h
        .dds_presentation_access_scope_kind_t;
      coherent_access : aliased unsigned_char;
      ordered_access  : aliased unsigned_char;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_presentation_qospolicy_t is dds_presentation_qospolicy;

   type dds_deadline_qospolicy_t is record
      deadline : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_deadline_qospolicy_t is dds_deadline_qospolicy;

   type dds_external_deadline_qospolicy_t is record
      deadline : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h
        .ddsi_duration_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_external_deadline_qospolicy_t is dds_external_deadline_qospolicy;

   type dds_latency_budget_qospolicy_t is record
      duration : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;
   end record with
      Convention => C_Pass_By_Copy;

--  <>subtype dds_latency_budget_qospolicy_t is dds_latency_budget_qospolicy;

   type dds_external_latency_budget_qospolicy_t is record
      duration : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h
        .ddsi_duration_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_external_latency_budget_qospolicy_t is dds_external_latency_budget_qospolicy;

   type dds_ownership_qospolicy_t is record
      kind : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h
        .dds_ownership_kind_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_ownership_qospolicy_t is dds_ownership_qospolicy;

   type dds_ownership_strength_qospolicy_t is record
      value : aliased int;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_ownership_strength_qospolicy_t is dds_ownership_strength_qospolicy;

   type dds_liveliness_qospolicy_t is record
      kind : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h
        .dds_liveliness_kind_t;
      lease_duration : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h
        .dds_duration_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_liveliness_qospolicy_t is dds_liveliness_qospolicy;

   type dds_external_liveliness_qospolicy_t is record
      kind : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h
        .dds_liveliness_kind_t;
      lease_duration : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h
        .ddsi_duration_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_external_liveliness_qospolicy_t is dds_external_liveliness_qospolicy;

   type dds_time_based_filter_qospolicy_t is record
      minimum_separation : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h
        .dds_duration_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_time_based_filter_qospolicy_t is dds_time_based_filter_qospolicy;

   type dds_external_time_based_filter_qospolicy_t is record
      minimum_separation : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h
        .ddsi_duration_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_external_time_based_filter_qospolicy_t is dds_external_time_based_filter_qospolicy;

   type ddsi_stringseq_t is record
      n    : aliased unsigned;
      strs : System.Address;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype ddsi_stringseq_t is ddsi_stringseq;

   subtype dds_partition_qospolicy_t is ddsi_stringseq_t;

   type dds_reliability_qospolicy_t is record
      kind : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h
        .dds_reliability_kind_t;
      max_blocking_time : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h
        .dds_duration_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_reliability_qospolicy_t is dds_reliability_qospolicy;

   subtype dds_external_reliability_kind is unsigned;
   DDS_EXTERNAL_RELIABILITY_BEST_EFFORT : constant dds_external_reliability_kind :=
     1;
   DDS_EXTERNAL_RELIABILITY_RELIABLE : constant dds_external_reliability_kind :=
     2;

   subtype dds_external_reliability_kind_t is dds_external_reliability_kind;

   type dds_external_reliability_qospolicy_t is record
      kind              : aliased dds_external_reliability_kind_t;
      max_blocking_time : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h
        .ddsi_duration_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_external_reliability_qospolicy_t is dds_external_reliability_qospolicy;

   type dds_transport_priority_qospolicy_t is record
      value : aliased int;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_transport_priority_qospolicy_t is dds_transport_priority_qospolicy;

   type dds_lifespan_qospolicy_t is record
      duration : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_lifespan_qospolicy_t is dds_lifespan_qospolicy;

   type dds_external_lifespan_qospolicy_t is record
      duration : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h
        .ddsi_duration_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_external_lifespan_qospolicy_t is dds_external_lifespan_qospolicy;

   type dds_destination_order_qospolicy_t is record
      kind : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h
        .dds_destination_order_kind_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_destination_order_qospolicy_t is dds_destination_order_qospolicy;

   type dds_entity_factory_qospolicy_t is record
      autoenable_created_entities : aliased unsigned_char;
   end record with
      Convention => C_Pass_By_Copy;

--  <>subtype dds_entity_factory_qospolicy_t is dds_entity_factory_qospolicy;

   type dds_writer_data_lifecycle_qospolicy_t is record
      autodispose_unregistered_instances : aliased unsigned_char;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_writer_data_lifecycle_qospolicy_t is dds_writer_data_lifecycle_qospolicy;

   type dds_reader_data_lifecycle_qospolicy_t is record
      autopurge_nowriter_samples_delay : aliased CycloneDDS.Low_Level
        .dds_ddsrt_time_h
        .dds_duration_t;
      autopurge_disposed_samples_delay : aliased CycloneDDS.Low_Level
        .dds_ddsrt_time_h
        .dds_duration_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_reader_data_lifecycle_qospolicy_t is dds_reader_data_lifecycle_qospolicy;

   type dds_external_reader_data_lifecycle_qospolicy_t is record
      autopurge_nowriter_samples_delay : aliased CycloneDDS.Low_Level
        .dds_ddsi_ddsi_time_h
        .ddsi_duration_t;
      autopurge_disposed_samples_delay : aliased CycloneDDS.Low_Level
        .dds_ddsi_ddsi_time_h
        .ddsi_duration_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_external_reader_data_lifecycle_qospolicy_t is dds_external_reader_data_lifecycle_qospolicy;

   type dds_subscription_keys_qospolicy_t is record
      use_key_list : aliased unsigned_char;
      key_list     : aliased ddsi_stringseq_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_subscription_keys_qospolicy_t is dds_subscription_keys_qospolicy;

   type dds_reader_lifespan_qospolicy_t is record
      use_lifespan : aliased unsigned_char;
      duration : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;
   end record with
      Convention => C_Pass_By_Copy;

--  <>subtype dds_reader_lifespan_qospolicy_t is dds_reader_lifespan_qospolicy;

   type dds_external_reader_lifespan_qospolicy_t is record
      use_lifespan : aliased unsigned_char;
      duration     : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h
        .ddsi_duration_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_external_reader_lifespan_qospolicy_t is dds_external_reader_lifespan_qospolicy;

   type dds_ignorelocal_qospolicy_t is record
      value : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h
        .dds_ignorelocal_kind_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_ignorelocal_qospolicy_t is dds_ignorelocal_qospolicy;

   type dds_type_consistency_enforcement_qospolicy_t is record
      kind : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h
        .dds_type_consistency_kind_t;
      ignore_sequence_bounds : aliased Extensions.bool;
      ignore_string_bounds   : aliased Extensions.bool;
      ignore_member_names    : aliased Extensions.bool;
      prevent_type_widening  : aliased Extensions.bool;
      force_type_validation  : aliased Extensions.bool;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_type_consistency_enforcement_qospolicy_t is dds_type_consistency_enforcement_qospolicy;

   subtype dds_locator_mask_t is unsigned;

   --*
   -- Qos Present bit indices
   -- Partition QoS is not RxO according to the specification (DDS 1.2,
   --   section 7.1.3), but communication will not take place unless it
   --   matches. Same for topic and type.  Relaxed qos matching is a bit of
   --   a weird one, but it affects matching, so ...

   -- readers & writers have an extended qos, hence why it is a separate
   --   type

   -- Entries present, for sparse QoS
   type dds_qos_t is record
      present               : aliased unsigned_long;
      c_aliased             : aliased unsigned_long;
      topic_name            : Interfaces.C.Strings.chars_ptr;
      type_name             : Interfaces.C.Strings.chars_ptr;
      presentation          : aliased dds_presentation_qospolicy_t;
      partition             : aliased dds_partition_qospolicy_t;
      group_data            : aliased dds_groupdata_qospolicy_t;
      entity_factory        : aliased dds_entity_factory_qospolicy_t;
      topic_data            : aliased dds_topicdata_qospolicy_t;
      durability            : aliased dds_durability_qospolicy_t;
      durability_service    : aliased dds_durability_service_qospolicy_t;
      deadline              : aliased dds_deadline_qospolicy_t;
      latency_budget        : aliased dds_latency_budget_qospolicy_t;
      liveliness            : aliased dds_liveliness_qospolicy_t;
      reliability           : aliased dds_reliability_qospolicy_t;
      destination_order     : aliased dds_destination_order_qospolicy_t;
      history               : aliased dds_history_qospolicy_t;
      resource_limits       : aliased dds_resource_limits_qospolicy_t;
      transport_priority    : aliased dds_transport_priority_qospolicy_t;
      lifespan              : aliased dds_lifespan_qospolicy_t;
      user_data             : aliased dds_userdata_qospolicy_t;
      ownership             : aliased dds_ownership_qospolicy_t;
      ownership_strength    : aliased dds_ownership_strength_qospolicy_t;
      time_based_filter     : aliased dds_time_based_filter_qospolicy_t;
      writer_data_lifecycle : aliased dds_writer_data_lifecycle_qospolicy_t;
      reader_data_lifecycle : aliased dds_reader_data_lifecycle_qospolicy_t;
      subscription_keys     : aliased dds_subscription_keys_qospolicy_t;
      reader_lifespan       : aliased dds_reader_lifespan_qospolicy_t;
      ignorelocal           : aliased dds_ignorelocal_qospolicy_t;
      property              : aliased dds_property_qospolicy_t;
      type_consistency : aliased dds_type_consistency_enforcement_qospolicy_t;
      ignore_locator_type   : aliased dds_locator_mask_t;
   end record with
      Convention => C_Pass_By_Copy;

      --v---- in ...Qos
      --     v--- in ...BuiltinTopicData
      --      v-- mapped in DDSI
      --       v- reader/writer/publisher/subscriber/participant specific

      --      Extras:
      -- xx
      -- xx
      -- xx
      --      PublisherQos, SubscriberQos:
      --xxx
      --xxx
      --xxx
      --x xX
      --      TopicQos:
      --xxx
      --      DataWriterQos, DataReaderQos:
      --xxx
      --xxx
      --xxx
      --xxx
      --xxx
      --xxx
      --xxx
      --x x
      --x x
      --x x
      --xxx
      --xxx
      --xxx
      --xxxW
      --xxxR
      --x  W
      --x xR
      --x xR
      --x xR
      -- x
      --xxx
      --xxxR
      --xxxX
   type nn_xmsg is null record;   -- incomplete struct

   ddsi_default_qos_reader : aliased constant CycloneDDS.Low_Level
     .dds_ddsi_ddsi_xqos_h
     .dds_qos_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_default_qos_reader";

   ddsi_default_qos_writer : aliased constant CycloneDDS.Low_Level
     .dds_ddsi_ddsi_xqos_h
     .dds_qos_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_default_qos_writer";

   ddsi_default_qos_topic : aliased constant CycloneDDS.Low_Level
     .dds_ddsi_ddsi_xqos_h
     .dds_qos_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_default_qos_topic";

   ddsi_default_qos_publisher_subscriber : aliased constant CycloneDDS
     .Low_Level
     .dds_ddsi_ddsi_xqos_h
     .dds_qos_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_default_qos_publisher_subscriber";

      --*
      -- * @brief Initialize a new empty dds_qos_t as an empty object
      -- *
      -- * In principle, this only clears the "present" and "aliased" bitmasks.  A debug build
      -- * additionally initializes all other bytes to 0x55.
      -- *
      -- * @param[out] xqos  qos object to be initialized.
      --

   procedure ddsi_xqos_init_empty
     (xqos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_xqos_init_empty";

      --*
      -- * @brief Copy "src" to "dst"
      -- *
      -- * @param[out]    dst     destination, any contents are overwritten
      -- * @param[in]     src     source dds_qos_t
      --

   procedure ddsi_xqos_copy
     (dst : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos_t;
      src : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_qos_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_xqos_copy";

      --*
      -- * @brief Replace any memory "xqos" aliases by copies it owns
      -- *
      -- * A dds_qos_t may can reference other memory without owning it.  This functions allows
      -- * one to replace any such aliased memory by copies, allowing one to free the original
      -- * copy.
      -- *
      -- * @param[in,out] xqos   qos object for which to replace all aliased memory by owned
      -- *                       copies
      --

   procedure ddsi_xqos_unalias
     (xqos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_xqos_unalias";

      --*
      -- * @brief Free memory owned by "xqos"
      -- *
      -- * A dds_qos_t may own other allocated blocks of memory, depending on which fields are
      -- * set, their types and whether they are marked as "aliased".  This function releases any
      -- * such memory owned by "xqos", but not "xqos" itself.  Afterward, the content of "xqos"
      -- * is undefined and must not be used again without initialising it.
      -- *
      -- * @param[in] xqos   dds_qos_t for which to free memory
      --

   procedure ddsi_xqos_fini
     (xqos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_xqos_fini";

      --*
      -- * @brief Free memory owned by "xqos" for a subset of the entries
      -- *
      -- * A dds_qos_t may own other allocated blocks of memory, depending on which fields are
      -- * set, their types and whether they are marked as "aliased".  This function releases any
      -- * such memory owned by "xqos" for entries included in "mask".  The "present" and
      -- * "aliased" bits are cleared accordingly.
      -- *
      -- * @param[in,out] xqos   dds_qos_t for which to free memory
      -- * @param[in]     mask   entries to free (if QP_X is set, free X if present)
      --

   procedure ddsi_xqos_fini_mask
     (xqos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos_t;
      mask : unsigned_long) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_xqos_fini_mask";

      --*
      -- * @brief Check whether xqos is valid according to the validation rules in the spec
      -- *
      -- * The checks concern the values for the individual fields as well as a few combinations
      -- * of fields.  Only those that are set are checked (the defaults are all valid anyway),
      -- * and where a combination of fields must be checked and some but not all fields are
      -- * specified, it uses the defaults for the missing ones.
      -- *
      -- * Invalid values get logged as category "plist" according to the specified logging
      -- * configuration.
      -- *
      -- * @param[in] logcfg  logging configuration
      -- * @param[in] xqos    qos object to check
      -- *
      -- * @returns DDS_RETCODE_OK or DDS_RETCODE_BAD_PARAMETER
      --

   function ddsi_xqos_valid
     (logcfg : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h
        .ddsrt_log_cfg_t;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_qos_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_xqos_valid";

      --*
      -- * @brief Extend "a" with selected entries present in "b"
      -- *
      -- * This copies into "a" any entries present in "b" that are included in "mask" and missing
      -- * in "a".  It doesn't touch any entries already present in "a".  Calling this on an empty
      -- * "a" with all bits set in "mask" is equivalent to copying "b" into "a"; calling this
      -- * with "mask" 0 copies nothing.
      -- *
      -- * @param[in,out] a       dds_qos_t to be extended
      -- * @param[in]     b       dds_qos_t from which to copy entries
      -- * @param[in]     mask    which to include (if QP_X is set, include X)
      --

   procedure ddsi_xqos_mergein_missing
     (a    : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos_t;
      b : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos_t;
      mask : unsigned_long) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_xqos_mergein_missing";

      --*
      -- * @brief Determine the set of entries in which "x" differs from "y"
      -- *
      -- * This computes the entries set in "x" but not set in "y", not set in "x" but set in "y",
      -- * or set in both "x" and "y" but to a different value.  It returns this set reduced to
      -- * only those included in "mask", that is, if bit X is clear in "mask", bit X will be
      -- * clear in the result.
      -- *
      -- * @param[in]  a         one of the two plists to compare
      -- * @param[in]  b         other plist to compare
      -- * @param[in]  mask      subset of entries to be compared
      -- *
      -- * @returns Bitmask of differences
      --

   function ddsi_xqos_delta
     (a : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos_t;
      b : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos_t;
      mask : unsigned_long) return unsigned_long with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_xqos_delta";

      --*
      -- * @brief Add selected entries in "xqos" to a message in native endianness.
      -- *
      -- * This functions appends to "xqos" a serialized copy of the the entries selected by
      -- * "wanted" and present in "xqos".  Each copy is preceded by a 4-byte header with a
      -- * parameter id and length (conform the PL_CDR representation).  It does *not* add a
      -- * sentinel to allow adding additional data to the parameter list.  A sentinel can be
      -- * added using `nn_xmsg_addpar_sentinel`.
      -- *
      -- * @param[in,out] m        message to append the parameters to
      -- * @param[in]     xqos     source
      -- * @param[in]     wanted   subset to be added (if QP_X is set, add X if present)
      --

   procedure ddsi_xqos_addtomsg
     (m    : access nn_xmsg;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_qos_t;
      wanted : unsigned_long) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_xqos_addtomsg";

      --*
   -- * @brief Formats xqos using `ddsi_xqos_print` and writes it to the trace.
   -- *
   -- * @param[in] cat        log category to use
   -- * @param[in] logcfg     logging configuration
   -- * @param[in] xqos       qos object to be logged
      --

   procedure ddsi_xqos_log
     (cat    : unsigned;
      logcfg : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h
        .ddsrt_log_cfg_t;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_qos_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_xqos_log";

      --*
      -- * @brief Formats xqos into a buffer
      -- *
      -- * The representation is somewhat cryptic as all enumerated types are dumped as numbers
      -- * and timestamps are durations as nanoseconds with "infinite" represented as
      -- * 9223372036854775807 (INT64_MAX).
      -- *
      -- * @param[out] buf       buffer to store the formatted representation in
      -- * @param[in]  bufsize   size of buffer, if > 0, there will be a terminating 0 in buf on
      -- *                       return
      -- * @param[in]  xqos      parameter list to be formatted as a string
      -- *
      -- * @returns number of bytes written to buf, excluding a terminating 0.
      --

   function ddsi_xqos_print
     (buf  : Interfaces.C.Strings.chars_ptr; bufsize : unsigned_long;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_qos_t)
      return unsigned_long with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_xqos_print";

      --*
      -- * @brief Duplicate "src"
      -- *
      -- * @param[in]  src       dds_qos_t to be duplicated
      -- *
      -- * @returns a new (allocated using ddsrt_malloc) dds_qos_t containing a copy of "src".
      --

   function ddsi_xqos_dup
     (src : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_qos_t)
      return access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos_t with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_xqos_dup";

      --*
      -- * @brief Check if "xqos" includes properties with a name starting with "nameprefix"
      -- *
      -- * That is, if xqos.present has QP_PROPERTY_LIST set, and at least one of them has a name
      -- * starting with "nameprefix".
      -- *
      -- * @param[in]  xqos        qos object to check
      -- * @param[in]  nameprefix  prefix to check for
      -- *
      -- * @returns true iff xqos contains a matching property
      --

   function ddsi_xqos_has_prop_prefix
     (xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_qos_t;
      nameprefix : Interfaces.C.Strings.chars_ptr) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_xqos_has_prop_prefix";

      --*
      -- * @brief Lookup property "name" in "xqos" and return a pointer to its value
      -- *
      -- * The value pointer is left unchanged if the property doesn't exist.  The returned
      -- * address points into the memory owned by the QoS object and must not be freed.
      -- *
      -- * @param[in]  xqos        qos object to check
      -- * @param[in]  name        name to look for
      -- * @param[out] value       pointer to set to the value of the property if it exists
      -- *
      -- * @returns true iff xqos contains the property
      --

   function ddsi_xqos_find_prop
     (xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_qos_t;
      name : Interfaces.C.Strings.chars_ptr; value : System.Address)
      return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_xqos_find_prop";

   procedure ddsi_xqos_mergein_security_config
     (xqos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos_t;
      cfg  : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h
        .ddsi_config_omg_security) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_xqos_mergein_security_config";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;
