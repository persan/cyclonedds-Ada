pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;


with CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h;
with CycloneDDS.Low_Level.dds_dds_h;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;

package CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h is

   type dds_offered_deadline_missed_status is record
      total_count : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:40
      total_count_change : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:41
      last_instance_handle : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:42
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:38

   subtype dds_offered_deadline_missed_status_t is dds_offered_deadline_missed_status;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:44

   type dds_offered_incompatible_qos_status is record
      total_count : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:51
      total_count_change : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:52
      last_policy_id : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:53
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:49

   subtype dds_offered_incompatible_qos_status_t is dds_offered_incompatible_qos_status;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:55

   type dds_publication_matched_status is record
      total_count : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:62
      total_count_change : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:63
      current_count : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:64
      current_count_change : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:65
      last_subscription_handle : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:66
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:60

   subtype dds_publication_matched_status_t is dds_publication_matched_status;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:68

   type dds_liveliness_lost_status is record
      total_count : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:75
      total_count_change : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:76
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:73

   subtype dds_liveliness_lost_status_t is dds_liveliness_lost_status;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:78

   type dds_subscription_matched_status is record
      total_count : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:85
      total_count_change : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:86
      current_count : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:87
      current_count_change : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:88
      last_publication_handle : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:89
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:83

   subtype dds_subscription_matched_status_t is dds_subscription_matched_status;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:91

   type dds_sample_rejected_status_kind is 
     (DDS_NOT_REJECTED,
      DDS_REJECTED_BY_INSTANCES_LIMIT,
      DDS_REJECTED_BY_SAMPLES_LIMIT,
      DDS_REJECTED_BY_SAMPLES_PER_INSTANCE_LIMIT)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:103

   type dds_sample_rejected_status is record
      total_count : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:110
      total_count_change : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:111
      last_reason : aliased dds_sample_rejected_status_kind;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:112
      last_instance_handle : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:113
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:108

   subtype dds_sample_rejected_status_t is dds_sample_rejected_status;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:115

   type dds_liveliness_changed_status is record
      alive_count : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:122
      not_alive_count : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:123
      alive_count_change : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:124
      not_alive_count_change : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:125
      last_publication_handle : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:126
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:120

   subtype dds_liveliness_changed_status_t is dds_liveliness_changed_status;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:128

   type dds_requested_deadline_missed_status is record
      total_count : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:135
      total_count_change : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:136
      last_instance_handle : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h.dds_instance_handle_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:137
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:133

   subtype dds_requested_deadline_missed_status_t is dds_requested_deadline_missed_status;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:139

   type dds_requested_incompatible_qos_status is record
      total_count : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:146
      total_count_change : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:147
      last_policy_id : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:148
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:144

   subtype dds_requested_incompatible_qos_status_t is dds_requested_incompatible_qos_status;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:150

   type dds_sample_lost_status is record
      total_count : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:157
      total_count_change : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:158
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:155

   subtype dds_sample_lost_status_t is dds_sample_lost_status;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:160

   type dds_inconsistent_topic_status is record
      total_count : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:167
      total_count_change : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:168
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:165

   subtype dds_inconsistent_topic_status_t is dds_inconsistent_topic_status;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:170

   function dds_get_inconsistent_topic_status (topic : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t; status : access dds_inconsistent_topic_status_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:200
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_inconsistent_topic_status";

   function dds_get_publication_matched_status (writer : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t; status : access dds_publication_matched_status_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:227
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_publication_matched_status";

   function dds_get_liveliness_lost_status (writer : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t; status : access dds_liveliness_lost_status_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_liveliness_lost_status";

   function dds_get_offered_deadline_missed_status (writer : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t; status : access dds_offered_deadline_missed_status_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:281
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_offered_deadline_missed_status";

   function dds_get_offered_incompatible_qos_status (writer : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t; status : access dds_offered_incompatible_qos_status_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:308
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_offered_incompatible_qos_status";

   function dds_get_subscription_matched_status (reader : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t; status : access dds_subscription_matched_status_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:335
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_subscription_matched_status";

   function dds_get_liveliness_changed_status (reader : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t; status : access dds_liveliness_changed_status_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:362
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_liveliness_changed_status";

   function dds_get_sample_rejected_status (reader : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t; status : access dds_sample_rejected_status_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:389
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_sample_rejected_status";

   function dds_get_sample_lost_status (reader : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t; status : access dds_sample_lost_status_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:417
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_sample_lost_status";

   function dds_get_requested_deadline_missed_status (reader : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t; status : access dds_requested_deadline_missed_status_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:445
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_requested_deadline_missed_status";

   function dds_get_requested_incompatible_qos_status (reader : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t; status : access dds_requested_incompatible_qos_status_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_status.h:473
   with Import => True, 
        Convention => C, 
        External_Name => "dds_get_requested_incompatible_qos_status";

end CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h;
