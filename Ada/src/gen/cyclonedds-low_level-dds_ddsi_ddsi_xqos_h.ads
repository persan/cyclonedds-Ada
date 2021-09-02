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
   type ddsi_octetseq is record
      length : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:29
      value : access unsigned_char;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:30
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:28

   subtype ddsi_octetseq_t is ddsi_octetseq;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:31

   subtype dds_userdata_qospolicy_t is ddsi_octetseq_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:33

   subtype dds_topicdata_qospolicy_t is ddsi_octetseq_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:34

   subtype dds_groupdata_qospolicy_t is ddsi_octetseq_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:35

  -- The propagate boolean will not be send over the wire.
  --   * When the value is 'false', the complete struct shouldn't be send.
  --   * It has to be the first variable within the structure because it
  --   * is mapped to XbPROP in the serialiser.  

   type dds_property is record
      propagate : aliased unsigned_char;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:42
      name : Interfaces.C.Strings.chars_ptr;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:43
      value : Interfaces.C.Strings.chars_ptr;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:44
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:37

   subtype dds_property_t is dds_property;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:45

   type dds_propertyseq is record
      n : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:48
      props : access dds_property_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:49
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:47

   subtype dds_propertyseq_t is dds_propertyseq;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:50

  -- The propagate boolean will not be send over the wire.
  --   * When the value is 'false', the complete struct shouldn't be send.
  --   * It has to be the first variable within the structure because it
  --   * is mapped to XbPROP in the serialiser.  

   type dds_binaryproperty is record
      propagate : aliased unsigned_char;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:57
      name : Interfaces.C.Strings.chars_ptr;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:58
      value : aliased ddsi_octetseq_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:59
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:52

   subtype dds_binaryproperty_t is dds_binaryproperty;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:60

   type dds_binarypropertyseq is record
      n : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:63
      props : access dds_binaryproperty_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:64
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:62

   subtype dds_binarypropertyseq_t is dds_binarypropertyseq;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:65

   type dds_property_qospolicy is record
      value : aliased dds_propertyseq_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:68
      binary_value : aliased dds_binarypropertyseq_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:69
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:67

   subtype dds_property_qospolicy_t is dds_property_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:70

   type dds_durability_qospolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_durability_kind_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:73
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:72

   subtype dds_durability_qospolicy_t is dds_durability_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:74

   type dds_history_qospolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_history_kind_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:77
      depth : aliased int;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:78
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:76

   subtype dds_history_qospolicy_t is dds_history_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:79

   type dds_resource_limits_qospolicy is record
      max_samples : aliased int;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:82
      max_instances : aliased int;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:83
      max_samples_per_instance : aliased int;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:84
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:81

   subtype dds_resource_limits_qospolicy_t is dds_resource_limits_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:85

   type dds_durability_service_qospolicy is record
      service_cleanup_delay : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:88
      history : aliased dds_history_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:89
      resource_limits : aliased dds_resource_limits_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:90
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:87

   subtype dds_durability_service_qospolicy_t is dds_durability_service_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:91

   type dds_external_durability_service_qospolicy is record
      service_cleanup_delay : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h.ddsi_duration_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:94
      history : aliased dds_history_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:95
      resource_limits : aliased dds_resource_limits_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:96
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:93

   subtype dds_external_durability_service_qospolicy_t is dds_external_durability_service_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:97

   type dds_presentation_qospolicy is record
      access_scope : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_presentation_access_scope_kind_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:100
      coherent_access : aliased unsigned_char;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:101
      ordered_access : aliased unsigned_char;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:102
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:99

   subtype dds_presentation_qospolicy_t is dds_presentation_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:103

   type dds_deadline_qospolicy is record
      deadline : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:106
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:105

   subtype dds_deadline_qospolicy_t is dds_deadline_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:107

   type dds_external_deadline_qospolicy is record
      deadline : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h.ddsi_duration_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:110
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:109

   subtype dds_external_deadline_qospolicy_t is dds_external_deadline_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:111

   type dds_latency_budget_qospolicy is record
      duration : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:114
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:113

   subtype dds_latency_budget_qospolicy_t is dds_latency_budget_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:115

   type dds_external_latency_budget_qospolicy is record
      duration : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h.ddsi_duration_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:118
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:117

   subtype dds_external_latency_budget_qospolicy_t is dds_external_latency_budget_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:119

   type dds_ownership_qospolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_ownership_kind_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:122
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:121

   subtype dds_ownership_qospolicy_t is dds_ownership_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:123

   type dds_ownership_strength_qospolicy is record
      value : aliased int;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:126
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:125

   subtype dds_ownership_strength_qospolicy_t is dds_ownership_strength_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:127

   type dds_liveliness_qospolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_liveliness_kind_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:130
      lease_duration : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:131
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:129

   subtype dds_liveliness_qospolicy_t is dds_liveliness_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:132

   type dds_external_liveliness_qospolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_liveliness_kind_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:135
      lease_duration : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h.ddsi_duration_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:136
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:134

   subtype dds_external_liveliness_qospolicy_t is dds_external_liveliness_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:137

   type dds_time_based_filter_qospolicy is record
      minimum_separation : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:140
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:139

   subtype dds_time_based_filter_qospolicy_t is dds_time_based_filter_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:141

   type dds_external_time_based_filter_qospolicy is record
      minimum_separation : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h.ddsi_duration_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:144
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:143

   subtype dds_external_time_based_filter_qospolicy_t is dds_external_time_based_filter_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:145

   type ddsi_stringseq is record
      n : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:148
      strs : System.Address;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:149
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:147

   subtype ddsi_stringseq_t is ddsi_stringseq;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:150

   subtype dds_partition_qospolicy_t is ddsi_stringseq_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:152

   type dds_reliability_qospolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_reliability_kind_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:155
      max_blocking_time : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:156
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:154

   subtype dds_reliability_qospolicy_t is dds_reliability_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:157

   subtype dds_external_reliability_kind is unsigned;
   DDS_EXTERNAL_RELIABILITY_BEST_EFFORT : constant dds_external_reliability_kind := 1;
   DDS_EXTERNAL_RELIABILITY_RELIABLE : constant dds_external_reliability_kind := 2;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:159

   subtype dds_external_reliability_kind_t is dds_external_reliability_kind;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:162

   type dds_external_reliability_qospolicy is record
      kind : aliased dds_external_reliability_kind_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:165
      max_blocking_time : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h.ddsi_duration_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:166
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:164

   subtype dds_external_reliability_qospolicy_t is dds_external_reliability_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:167

   type dds_transport_priority_qospolicy is record
      value : aliased int;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:170
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:169

   subtype dds_transport_priority_qospolicy_t is dds_transport_priority_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:171

   type dds_lifespan_qospolicy is record
      duration : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:174
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:173

   subtype dds_lifespan_qospolicy_t is dds_lifespan_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:175

   type dds_external_lifespan_qospolicy is record
      duration : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h.ddsi_duration_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:178
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:177

   subtype dds_external_lifespan_qospolicy_t is dds_external_lifespan_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:179

   type dds_destination_order_qospolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_destination_order_kind_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:182
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:181

   subtype dds_destination_order_qospolicy_t is dds_destination_order_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:183

   type dds_entity_factory_qospolicy is record
      autoenable_created_entities : aliased unsigned_char;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:186
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:185

   subtype dds_entity_factory_qospolicy_t is dds_entity_factory_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:187

   type dds_writer_data_lifecycle_qospolicy is record
      autodispose_unregistered_instances : aliased unsigned_char;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:190
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:189

   subtype dds_writer_data_lifecycle_qospolicy_t is dds_writer_data_lifecycle_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:191

   type dds_reader_data_lifecycle_qospolicy is record
      autopurge_nowriter_samples_delay : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:194
      autopurge_disposed_samples_delay : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:195
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:193

   subtype dds_reader_data_lifecycle_qospolicy_t is dds_reader_data_lifecycle_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:196

   type dds_external_reader_data_lifecycle_qospolicy is record
      autopurge_nowriter_samples_delay : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h.ddsi_duration_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:199
      autopurge_disposed_samples_delay : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h.ddsi_duration_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:200
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:198

   subtype dds_external_reader_data_lifecycle_qospolicy_t is dds_external_reader_data_lifecycle_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:201

   type dds_subscription_keys_qospolicy is record
      use_key_list : aliased unsigned_char;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:204
      key_list : aliased ddsi_stringseq_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:205
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:203

   subtype dds_subscription_keys_qospolicy_t is dds_subscription_keys_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:206

   type dds_reader_lifespan_qospolicy is record
      use_lifespan : aliased unsigned_char;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:209
      duration : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:210
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:208

   subtype dds_reader_lifespan_qospolicy_t is dds_reader_lifespan_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:211

   type dds_external_reader_lifespan_qospolicy is record
      use_lifespan : aliased unsigned_char;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:214
      duration : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h.ddsi_duration_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:215
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:213

   subtype dds_external_reader_lifespan_qospolicy_t is dds_external_reader_lifespan_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:216

   type dds_ignorelocal_qospolicy is record
      value : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_ignorelocal_kind_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:219
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:218

   subtype dds_ignorelocal_qospolicy_t is dds_ignorelocal_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:220

   type dds_type_consistency_enforcement_qospolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_type_consistency_kind_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:223
      ignore_sequence_bounds : aliased Extensions.bool;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:224
      ignore_string_bounds : aliased Extensions.bool;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:225
      ignore_member_names : aliased Extensions.bool;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:226
      prevent_type_widening : aliased Extensions.bool;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:227
      force_type_validation : aliased Extensions.bool;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:228
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:222

   subtype dds_type_consistency_enforcement_qospolicy_t is dds_type_consistency_enforcement_qospolicy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:229

   subtype dds_locator_mask_t is unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:231

  --* 
  -- Qos Present bit indices  
  -- Partition QoS is not RxO according to the specification (DDS 1.2,
  --   section 7.1.3), but communication will not take place unless it
  --   matches. Same for topic and type.  Relaxed qos matching is a bit of
  --   a weird one, but it affects matching, so ...  

  -- readers & writers have an extended qos, hence why it is a separate
  --   type  

  -- Entries present, for sparse QoS  
   type dds_qos is record
      present : aliased unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:280
      c_aliased : aliased unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:281
      topic_name : Interfaces.C.Strings.chars_ptr;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:288
      type_name : Interfaces.C.Strings.chars_ptr;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:289
      presentation : aliased dds_presentation_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:294
      partition : aliased dds_partition_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:295
      group_data : aliased dds_groupdata_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:296
      entity_factory : aliased dds_entity_factory_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:297
      topic_data : aliased dds_topicdata_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:299
      durability : aliased dds_durability_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:301
      durability_service : aliased dds_durability_service_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:302
      deadline : aliased dds_deadline_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:303
      latency_budget : aliased dds_latency_budget_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:304
      liveliness : aliased dds_liveliness_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:305
      reliability : aliased dds_reliability_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:306
      destination_order : aliased dds_destination_order_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:307
      history : aliased dds_history_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:308
      resource_limits : aliased dds_resource_limits_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:309
      transport_priority : aliased dds_transport_priority_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:310
      lifespan : aliased dds_lifespan_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:311
      user_data : aliased dds_userdata_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:312
      ownership : aliased dds_ownership_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:313
      ownership_strength : aliased dds_ownership_strength_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:314
      time_based_filter : aliased dds_time_based_filter_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:315
      writer_data_lifecycle : aliased dds_writer_data_lifecycle_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:316
      reader_data_lifecycle : aliased dds_reader_data_lifecycle_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:317
      subscription_keys : aliased dds_subscription_keys_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:318
      reader_lifespan : aliased dds_reader_lifespan_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:319
      ignorelocal : aliased dds_ignorelocal_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:320
      property : aliased dds_property_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:321
      type_consistency : aliased dds_type_consistency_enforcement_qospolicy_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:322
      ignore_locator_type : aliased dds_locator_mask_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:323
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:278

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

   ddsi_default_qos_reader : aliased constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:328
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_default_qos_reader";

   ddsi_default_qos_writer : aliased constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_default_qos_writer";

   ddsi_default_qos_topic : aliased constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:330
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_default_qos_topic";

   ddsi_default_qos_publisher_subscriber : aliased constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:331
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_default_qos_publisher_subscriber";

  --*
  -- * @brief Initialize a new empty dds_qos_t as an empty object
  -- *
  -- * In principle, this only clears the "present" and "aliased" bitmasks.  A debug build
  -- * additionally initializes all other bytes to 0x55.
  -- *
  -- * @param[out] xqos  qos object to be initialized.
  --  

   procedure ddsi_xqos_init_empty (xqos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:341
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_xqos_init_empty";

  --*
  -- * @brief Copy "src" to "dst"
  -- *
  -- * @param[out]    dst     destination, any contents are overwritten
  -- * @param[in]     src     source dds_qos_t
  --  

   procedure ddsi_xqos_copy (dst : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; src : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:349
   with Import => True, 
        Convention => C, 
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

   procedure ddsi_xqos_unalias (xqos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:361
   with Import => True, 
        Convention => C, 
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

   procedure ddsi_xqos_fini (xqos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:373
   with Import => True, 
        Convention => C, 
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

   procedure ddsi_xqos_fini_mask (xqos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; mask : unsigned_long)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:386
   with Import => True, 
        Convention => C, 
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

   function ddsi_xqos_valid (logcfg : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h.ddsrt_log_cfg; xqos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:404
   with Import => True, 
        Convention => C, 
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
     (a : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      b : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      mask : unsigned_long)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:418
   with Import => True, 
        Convention => C, 
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
     (a : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      b : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      mask : unsigned_long) return unsigned_long  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:434
   with Import => True, 
        Convention => C, 
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
     (m : access nn_xmsg;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      wanted : unsigned_long)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:449
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_xqos_addtomsg";

  --*
  -- * @brief Formats xqos using `ddsi_xqos_print` and writes it to the trace.
  -- *
  -- * @param[in] cat        log category to use
  -- * @param[in] logcfg     logging configuration
  -- * @param[in] xqos       qos object to be logged
  --  

   procedure ddsi_xqos_log
     (cat : unsigned;
      logcfg : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h.ddsrt_log_cfg;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:458
   with Import => True, 
        Convention => C, 
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
     (buf : Interfaces.C.Strings.chars_ptr;
      bufsize : unsigned_long;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t) return unsigned_long  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:474
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_xqos_print";

  --*
  -- * @brief Duplicate "src"
  -- *
  -- * @param[in]  src       dds_qos_t to be duplicated
  -- *
  -- * @returns a new (allocated using ddsrt_malloc) dds_qos_t containing a copy of "src".
  --  

   function ddsi_xqos_dup (src : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t) return access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:483
   with Import => True, 
        Convention => C, 
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

   function ddsi_xqos_has_prop_prefix (xqos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; nameprefix : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:496
   with Import => True, 
        Convention => C, 
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
     (xqos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      name : Interfaces.C.Strings.chars_ptr;
      value : System.Address) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:510
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_xqos_find_prop";

   procedure ddsi_xqos_mergein_security_config (xqos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; cfg : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h.ddsi_config_omg_security)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_xqos.h:514
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_xqos_mergein_security_config";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;
