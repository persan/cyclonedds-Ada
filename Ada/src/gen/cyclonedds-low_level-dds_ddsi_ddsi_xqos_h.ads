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
limited with CycloneDDS.Low_Level.dds_ddsi_q_xevent_h;

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
   type ddsi_octetseq is record
      length : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:29
      value : access unsigned_char;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:30
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:28

   subtype ddsi_octetseq_t is ddsi_octetseq;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:31

   subtype dds_userdata_qospolicy_t is ddsi_octetseq_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:33

   subtype dds_topicdata_qospolicy_t is ddsi_octetseq_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:34

   subtype dds_groupdata_qospolicy_t is ddsi_octetseq_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:35

   type dds_property is record
      propagate : aliased unsigned_char;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:42
      name : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:43
      value : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:44
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:37

   subtype dds_property_t is dds_property;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:45

   type dds_propertyseq is record
      n : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:48
      props : access dds_property_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:49
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:47

   subtype dds_propertyseq_t is dds_propertyseq;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:50

   type dds_binaryproperty is record
      propagate : aliased unsigned_char;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:57
      name : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:58
      value : aliased ddsi_octetseq_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:59
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:52

   subtype dds_binaryproperty_t is dds_binaryproperty;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:60

   type dds_binarypropertyseq is record
      n : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:63
      props : access dds_binaryproperty_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:64
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:62

   subtype dds_binarypropertyseq_t is dds_binarypropertyseq;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:65

   type dds_property_qospolicy is record
      value : aliased dds_propertyseq_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:68
      binary_value : aliased dds_binarypropertyseq_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:69
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:67

   subtype dds_property_qospolicy_t is dds_property_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:70

   type dds_durability_qospolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_durability_kind_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:73
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:72

   subtype dds_durability_qospolicy_t is dds_durability_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:74

   type dds_history_qospolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_history_kind_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:77
      depth : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:78
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:76

   subtype dds_history_qospolicy_t is dds_history_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:79

   type dds_resource_limits_qospolicy is record
      max_samples : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:82
      max_instances : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:83
      max_samples_per_instance : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:84
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:81

   subtype dds_resource_limits_qospolicy_t is dds_resource_limits_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:85

   type dds_durability_service_qospolicy is record
      service_cleanup_delay : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:88
      history : aliased dds_history_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:89
      resource_limits : aliased dds_resource_limits_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:90
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:87

   subtype dds_durability_service_qospolicy_t is dds_durability_service_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:91

   type dds_external_durability_service_qospolicy is record
      service_cleanup_delay : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h.ddsi_duration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:94
      history : aliased dds_history_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:95
      resource_limits : aliased dds_resource_limits_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:96
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:93

   subtype dds_external_durability_service_qospolicy_t is dds_external_durability_service_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:97

   type dds_presentation_qospolicy is record
      access_scope : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_presentation_access_scope_kind_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:100
      coherent_access : aliased unsigned_char;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:101
      ordered_access : aliased unsigned_char;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:102
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:99

   subtype dds_presentation_qospolicy_t is dds_presentation_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:103

   type dds_deadline_qospolicy is record
      deadline : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:106
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:105

   subtype dds_deadline_qospolicy_t is dds_deadline_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:107

   type dds_external_deadline_qospolicy is record
      deadline : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h.ddsi_duration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:110
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:109

   subtype dds_external_deadline_qospolicy_t is dds_external_deadline_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:111

   type dds_latency_budget_qospolicy is record
      duration : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:114
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:113

   subtype dds_latency_budget_qospolicy_t is dds_latency_budget_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:115

   type dds_external_latency_budget_qospolicy is record
      duration : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h.ddsi_duration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:118
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:117

   subtype dds_external_latency_budget_qospolicy_t is dds_external_latency_budget_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:119

   type dds_ownership_qospolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_ownership_kind_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:122
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:121

   subtype dds_ownership_qospolicy_t is dds_ownership_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:123

   type dds_ownership_strength_qospolicy is record
      value : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:126
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:125

   subtype dds_ownership_strength_qospolicy_t is dds_ownership_strength_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:127

   type dds_liveliness_qospolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_liveliness_kind_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:130
      lease_duration : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:131
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:129

   subtype dds_liveliness_qospolicy_t is dds_liveliness_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:132

   type dds_external_liveliness_qospolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_liveliness_kind_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:135
      lease_duration : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h.ddsi_duration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:136
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:134

   subtype dds_external_liveliness_qospolicy_t is dds_external_liveliness_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:137

   type dds_time_based_filter_qospolicy is record
      minimum_separation : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:140
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:139

   subtype dds_time_based_filter_qospolicy_t is dds_time_based_filter_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:141

   type dds_external_time_based_filter_qospolicy is record
      minimum_separation : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h.ddsi_duration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:144
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:143

   subtype dds_external_time_based_filter_qospolicy_t is dds_external_time_based_filter_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:145

   type ddsi_stringseq is record
      n : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:148
      strs : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:149
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:147

   subtype ddsi_stringseq_t is ddsi_stringseq;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:150

   subtype dds_partition_qospolicy_t is ddsi_stringseq_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:152

   type dds_reliability_qospolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_reliability_kind_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:155
      max_blocking_time : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:156
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:154

   subtype dds_reliability_qospolicy_t is dds_reliability_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:157

   subtype dds_external_reliability_kind is unsigned;
   dds_external_reliability_kind_DDS_EXTERNAL_RELIABILITY_BEST_EFFORT : constant dds_external_reliability_kind := 1;
   dds_external_reliability_kind_DDS_EXTERNAL_RELIABILITY_RELIABLE : constant dds_external_reliability_kind := 2;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:159

   subtype dds_external_reliability_kind_t is dds_external_reliability_kind;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:162

   type dds_external_reliability_qospolicy is record
      kind : aliased dds_external_reliability_kind_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:165
      max_blocking_time : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h.ddsi_duration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:166
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:164

   subtype dds_external_reliability_qospolicy_t is dds_external_reliability_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:167

   type dds_transport_priority_qospolicy is record
      value : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:170
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:169

   subtype dds_transport_priority_qospolicy_t is dds_transport_priority_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:171

   type dds_lifespan_qospolicy is record
      duration : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:174
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:173

   subtype dds_lifespan_qospolicy_t is dds_lifespan_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:175

   type dds_external_lifespan_qospolicy is record
      duration : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h.ddsi_duration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:178
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:177

   subtype dds_external_lifespan_qospolicy_t is dds_external_lifespan_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:179

   type dds_destination_order_qospolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_destination_order_kind_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:182
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:181

   subtype dds_destination_order_qospolicy_t is dds_destination_order_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:183

   type dds_entity_factory_qospolicy is record
      autoenable_created_entities : aliased unsigned_char;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:186
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:185

   subtype dds_entity_factory_qospolicy_t is dds_entity_factory_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:187

   type dds_writer_data_lifecycle_qospolicy is record
      autodispose_unregistered_instances : aliased unsigned_char;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:190
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:189

   subtype dds_writer_data_lifecycle_qospolicy_t is dds_writer_data_lifecycle_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:191

   type dds_reader_data_lifecycle_qospolicy is record
      autopurge_nowriter_samples_delay : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:194
      autopurge_disposed_samples_delay : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:195
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:193

   subtype dds_reader_data_lifecycle_qospolicy_t is dds_reader_data_lifecycle_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:196

   type dds_external_reader_data_lifecycle_qospolicy is record
      autopurge_nowriter_samples_delay : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h.ddsi_duration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:199
      autopurge_disposed_samples_delay : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h.ddsi_duration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:200
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:198

   subtype dds_external_reader_data_lifecycle_qospolicy_t is dds_external_reader_data_lifecycle_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:201

   type dds_subscription_keys_qospolicy is record
      use_key_list : aliased unsigned_char;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:204
      key_list : aliased ddsi_stringseq_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:205
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:203

   subtype dds_subscription_keys_qospolicy_t is dds_subscription_keys_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:206

   type dds_reader_lifespan_qospolicy is record
      use_lifespan : aliased unsigned_char;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:209
      duration : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:210
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:208

   subtype dds_reader_lifespan_qospolicy_t is dds_reader_lifespan_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:211

   type dds_external_reader_lifespan_qospolicy is record
      use_lifespan : aliased unsigned_char;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:214
      duration : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_time_h.ddsi_duration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:215
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:213

   subtype dds_external_reader_lifespan_qospolicy_t is dds_external_reader_lifespan_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:216

   type dds_ignorelocal_qospolicy is record
      value : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_ignorelocal_kind_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:219
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:218

   subtype dds_ignorelocal_qospolicy_t is dds_ignorelocal_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:220

   type dds_type_consistency_enforcement_qospolicy is record
      kind : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_type_consistency_kind_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:223
      ignore_sequence_bounds : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:224
      ignore_string_bounds : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:225
      ignore_member_names : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:226
      prevent_type_widening : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:227
      force_type_validation : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:228
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:222

   subtype dds_type_consistency_enforcement_qospolicy_t is dds_type_consistency_enforcement_qospolicy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:229

   subtype dds_locator_mask_t is Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:231

   type dds_qos is record
      present : aliased Interfaces.Unsigned_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:280
      c_aliased : aliased Interfaces.Unsigned_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:281
      topic_name : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:288
      type_name : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:289
      presentation : aliased dds_presentation_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:294
      partition : aliased dds_partition_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:295
      group_data : aliased dds_groupdata_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:296
      entity_factory : aliased dds_entity_factory_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:297
      topic_data : aliased dds_topicdata_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:299
      durability : aliased dds_durability_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:301
      durability_service : aliased dds_durability_service_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:302
      deadline : aliased dds_deadline_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:303
      latency_budget : aliased dds_latency_budget_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:304
      liveliness : aliased dds_liveliness_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:305
      reliability : aliased dds_reliability_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:306
      destination_order : aliased dds_destination_order_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:307
      history : aliased dds_history_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:308
      resource_limits : aliased dds_resource_limits_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:309
      transport_priority : aliased dds_transport_priority_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:310
      lifespan : aliased dds_lifespan_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:311
      user_data : aliased dds_userdata_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:312
      ownership : aliased dds_ownership_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:313
      ownership_strength : aliased dds_ownership_strength_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:314
      time_based_filter : aliased dds_time_based_filter_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:315
      writer_data_lifecycle : aliased dds_writer_data_lifecycle_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:316
      reader_data_lifecycle : aliased dds_reader_data_lifecycle_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:317
      subscription_keys : aliased dds_subscription_keys_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:318
      reader_lifespan : aliased dds_reader_lifespan_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:319
      ignorelocal : aliased dds_ignorelocal_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:320
      property : aliased dds_property_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:321
      type_consistency : aliased dds_type_consistency_enforcement_qospolicy_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:322
      ignore_locator_type : aliased dds_locator_mask_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:323
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:278

   ddsi_default_qos_reader : aliased constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:328
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_default_qos_reader";

   ddsi_default_qos_writer : aliased constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_default_qos_writer";

   ddsi_default_qos_topic : aliased constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:330
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_default_qos_topic";

   ddsi_default_qos_publisher_subscriber : aliased constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:331
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_default_qos_publisher_subscriber";

   procedure ddsi_xqos_init_empty (xqos : access dds_qos)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:341
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_xqos_init_empty";

   procedure ddsi_xqos_copy (dst : access dds_qos; src : access constant dds_qos)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:349
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_xqos_copy";

   procedure ddsi_xqos_unalias (xqos : access dds_qos)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:361
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_xqos_unalias";

   procedure ddsi_xqos_fini (xqos : access dds_qos)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:373
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_xqos_fini";

   procedure ddsi_xqos_fini_mask (xqos : access dds_qos; mask : Interfaces.Unsigned_64)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:386
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_xqos_fini_mask";

   function ddsi_xqos_valid (logcfg : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h.ddsrt_log_cfg; xqos : access constant dds_qos) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:404
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_xqos_valid";

   procedure ddsi_xqos_mergein_missing
     (a : access dds_qos;
      b : access constant dds_qos;
      mask : Interfaces.Unsigned_64)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:418
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_xqos_mergein_missing";

   function ddsi_xqos_delta
     (a : access constant dds_qos;
      b : access constant dds_qos;
      mask : Interfaces.Unsigned_64) return Interfaces.Unsigned_64  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:434
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_xqos_delta";

   procedure ddsi_xqos_addtomsg
     (m : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.nn_xmsg;
      xqos : access constant dds_qos;
      wanted : Interfaces.Unsigned_64)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:449
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_xqos_addtomsg";

   procedure ddsi_xqos_log
     (cat : Interfaces.Unsigned_32;
      logcfg : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h.ddsrt_log_cfg;
      xqos : access constant dds_qos)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:458
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_xqos_log";

   function ddsi_xqos_print
     (buf : Interfaces.C.Strings.chars_ptr;
      bufsize : size_t;
      xqos : access constant dds_qos) return size_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:474
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_xqos_print";

   function ddsi_xqos_dup (src : access constant dds_qos) return access dds_qos  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:483
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_xqos_dup";

   function ddsi_xqos_has_prop_prefix (xqos : access constant dds_qos; nameprefix : Interfaces.C.Strings.chars_ptr) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:496
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_xqos_has_prop_prefix";

   function ddsi_xqos_find_prop
     (xqos : access constant dds_qos;
      name : Interfaces.C.Strings.chars_ptr;
      value : System.Address) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:510
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_xqos_find_prop";

   procedure ddsi_xqos_mergein_security_config (xqos : access dds_qos; cfg : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h.ddsi_config_omg_security)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_xqos.h:514
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_xqos_mergein_security_config";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;
