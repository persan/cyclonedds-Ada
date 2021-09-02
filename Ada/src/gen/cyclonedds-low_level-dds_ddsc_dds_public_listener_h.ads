pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_dds_h;
with CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h;
with System;
with Interfaces.C.Extensions;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;

package CycloneDDS.Low_Level.dds_ddsc_dds_public_listener_h is

   DDS_LUNSET : constant := 0;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:46

   type dds_on_inconsistent_topic_fn is access procedure
        (arg1 : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
         arg2 : CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h.dds_inconsistent_topic_status_t;
         arg3 : System.Address)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:32

   type dds_on_liveliness_lost_fn is access procedure
        (arg1 : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
         arg2 : CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h.dds_liveliness_lost_status_t;
         arg3 : System.Address)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:33

   type dds_on_offered_deadline_missed_fn is access procedure
        (arg1 : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
         arg2 : CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h.dds_offered_deadline_missed_status_t;
         arg3 : System.Address)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:34

   type dds_on_offered_incompatible_qos_fn is access procedure
        (arg1 : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
         arg2 : CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h.dds_offered_incompatible_qos_status_t;
         arg3 : System.Address)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:35

   type dds_on_data_on_readers_fn is access procedure (arg1 : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t; arg2 : System.Address)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:36

   type dds_on_sample_lost_fn is access procedure
        (arg1 : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
         arg2 : CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h.dds_sample_lost_status_t;
         arg3 : System.Address)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:37

   type dds_on_data_available_fn is access procedure (arg1 : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t; arg2 : System.Address)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:38

   type dds_on_sample_rejected_fn is access procedure
        (arg1 : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
         arg2 : CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h.dds_sample_rejected_status_t;
         arg3 : System.Address)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:39

   type dds_on_liveliness_changed_fn is access procedure
        (arg1 : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
         arg2 : CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h.dds_liveliness_changed_status_t;
         arg3 : System.Address)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:40

   type dds_on_requested_deadline_missed_fn is access procedure
        (arg1 : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
         arg2 : CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h.dds_requested_deadline_missed_status_t;
         arg3 : System.Address)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:41

   type dds_on_requested_incompatible_qos_fn is access procedure
        (arg1 : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
         arg2 : CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h.dds_requested_incompatible_qos_status_t;
         arg3 : System.Address)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:42

   type dds_on_publication_matched_fn is access procedure
        (arg1 : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
         arg2 : CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h.dds_publication_matched_status_t;
         arg3 : System.Address)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:43

   type dds_on_subscription_matched_fn is access procedure
        (arg1 : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
         arg2 : CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h.dds_subscription_matched_status_t;
         arg3 : System.Address)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:44

   type dds_listener is null record;   -- incomplete struct

   subtype dds_listener_t is dds_listener;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:48

   function dds_create_listener (arg : System.Address) return access dds_listener_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "dds_create_listener";

   function dds_listener_create (arg : System.Address) return access dds_listener_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "dds_listener_create";

   procedure dds_delete_listener (listener : access dds_listener_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "dds_delete_listener";

   procedure dds_listener_delete (listener : access dds_listener_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "dds_listener_delete";

   procedure dds_reset_listener (listener : access dds_listener_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "dds_reset_listener";

   procedure dds_listener_reset (listener : access dds_listener_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "dds_listener_reset";

   procedure dds_copy_listener (dst : access dds_listener_t; src : access constant dds_listener_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "dds_copy_listener";

   procedure dds_listener_copy (dst : access dds_listener_t; src : access constant dds_listener_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "dds_listener_copy";

   procedure dds_merge_listener (dst : access dds_listener_t; src : access constant dds_listener_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "dds_merge_listener";

   procedure dds_listener_merge (dst : access dds_listener_t; src : access constant dds_listener_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "dds_listener_merge";

   function dds_lset_data_available_arg
     (listener : access dds_listener_t;
      callback : dds_on_data_available_fn;
      arg : System.Address;
      reset_on_invoke : Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lset_data_available_arg";

   function dds_lset_data_on_readers_arg
     (listener : access dds_listener_t;
      callback : dds_on_data_on_readers_fn;
      arg : System.Address;
      reset_on_invoke : Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lset_data_on_readers_arg";

   function dds_lset_inconsistent_topic_arg
     (listener : access dds_listener_t;
      callback : dds_on_inconsistent_topic_fn;
      arg : System.Address;
      reset_on_invoke : Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lset_inconsistent_topic_arg";

   function dds_lset_liveliness_changed_arg
     (listener : access dds_listener_t;
      callback : dds_on_liveliness_changed_fn;
      arg : System.Address;
      reset_on_invoke : Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lset_liveliness_changed_arg";

   function dds_lset_liveliness_lost_arg
     (listener : access dds_listener_t;
      callback : dds_on_liveliness_lost_fn;
      arg : System.Address;
      reset_on_invoke : Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lset_liveliness_lost_arg";

   function dds_lset_offered_deadline_missed_arg
     (listener : access dds_listener_t;
      callback : dds_on_offered_deadline_missed_fn;
      arg : System.Address;
      reset_on_invoke : Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lset_offered_deadline_missed_arg";

   function dds_lset_offered_incompatible_qos_arg
     (listener : access dds_listener_t;
      callback : dds_on_offered_incompatible_qos_fn;
      arg : System.Address;
      reset_on_invoke : Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lset_offered_incompatible_qos_arg";

   function dds_lset_publication_matched_arg
     (listener : access dds_listener_t;
      callback : dds_on_publication_matched_fn;
      arg : System.Address;
      reset_on_invoke : Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lset_publication_matched_arg";

   function dds_lset_requested_deadline_missed_arg
     (listener : access dds_listener_t;
      callback : dds_on_requested_deadline_missed_fn;
      arg : System.Address;
      reset_on_invoke : Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:216
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lset_requested_deadline_missed_arg";

   function dds_lset_requested_incompatible_qos_arg
     (listener : access dds_listener_t;
      callback : dds_on_requested_incompatible_qos_fn;
      arg : System.Address;
      reset_on_invoke : Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lset_requested_incompatible_qos_arg";

   function dds_lset_sample_lost_arg
     (listener : access dds_listener_t;
      callback : dds_on_sample_lost_fn;
      arg : System.Address;
      reset_on_invoke : Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:242
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lset_sample_lost_arg";

   function dds_lset_sample_rejected_arg
     (listener : access dds_listener_t;
      callback : dds_on_sample_rejected_fn;
      arg : System.Address;
      reset_on_invoke : Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lset_sample_rejected_arg";

   function dds_lset_subscription_matched_arg
     (listener : access dds_listener_t;
      callback : dds_on_subscription_matched_fn;
      arg : System.Address;
      reset_on_invoke : Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:268
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lset_subscription_matched_arg";

   procedure dds_lset_inconsistent_topic (listener : access dds_listener_t; callback : dds_on_inconsistent_topic_fn)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lset_inconsistent_topic";

   procedure dds_lset_liveliness_lost (listener : access dds_listener_t; callback : dds_on_liveliness_lost_fn)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:282
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lset_liveliness_lost";

   procedure dds_lset_offered_deadline_missed (listener : access dds_listener_t; callback : dds_on_offered_deadline_missed_fn)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:289
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lset_offered_deadline_missed";

   procedure dds_lset_offered_incompatible_qos (listener : access dds_listener_t; callback : dds_on_offered_incompatible_qos_fn)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:296
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lset_offered_incompatible_qos";

   procedure dds_lset_data_on_readers (listener : access dds_listener_t; callback : dds_on_data_on_readers_fn)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:303
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lset_data_on_readers";

   procedure dds_lset_sample_lost (listener : access dds_listener_t; callback : dds_on_sample_lost_fn)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:310
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lset_sample_lost";

   procedure dds_lset_data_available (listener : access dds_listener_t; callback : dds_on_data_available_fn)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:317
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lset_data_available";

   procedure dds_lset_sample_rejected (listener : access dds_listener_t; callback : dds_on_sample_rejected_fn)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:324
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lset_sample_rejected";

   procedure dds_lset_liveliness_changed (listener : access dds_listener_t; callback : dds_on_liveliness_changed_fn)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:331
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lset_liveliness_changed";

   procedure dds_lset_requested_deadline_missed (listener : access dds_listener_t; callback : dds_on_requested_deadline_missed_fn)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:338
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lset_requested_deadline_missed";

   procedure dds_lset_requested_incompatible_qos (listener : access dds_listener_t; callback : dds_on_requested_incompatible_qos_fn)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:345
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lset_requested_incompatible_qos";

   procedure dds_lset_publication_matched (listener : access dds_listener_t; callback : dds_on_publication_matched_fn)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:352
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lset_publication_matched";

   procedure dds_lset_subscription_matched (listener : access dds_listener_t; callback : dds_on_subscription_matched_fn)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:359
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lset_subscription_matched";

   function dds_lget_data_available_arg
     (listener : access constant dds_listener_t;
      callback : System.Address;
      arg : System.Address;
      reset_on_invoke : access Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:377
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lget_data_available_arg";

   function dds_lget_data_on_readers_arg
     (listener : access constant dds_listener_t;
      callback : System.Address;
      arg : System.Address;
      reset_on_invoke : access Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:390
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lget_data_on_readers_arg";

   function dds_lget_inconsistent_topic_arg
     (listener : access constant dds_listener_t;
      callback : System.Address;
      arg : System.Address;
      reset_on_invoke : access Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:403
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lget_inconsistent_topic_arg";

   function dds_lget_liveliness_changed_arg
     (listener : access constant dds_listener_t;
      callback : System.Address;
      arg : System.Address;
      reset_on_invoke : access Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:416
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lget_liveliness_changed_arg";

   function dds_lget_liveliness_lost_arg
     (listener : access constant dds_listener_t;
      callback : System.Address;
      arg : System.Address;
      reset_on_invoke : access Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:429
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lget_liveliness_lost_arg";

   function dds_lget_offered_deadline_missed_arg
     (listener : access constant dds_listener_t;
      callback : System.Address;
      arg : System.Address;
      reset_on_invoke : access Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:442
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lget_offered_deadline_missed_arg";

   function dds_lget_offered_incompatible_qos_arg
     (listener : access constant dds_listener_t;
      callback : System.Address;
      arg : System.Address;
      reset_on_invoke : access Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:455
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lget_offered_incompatible_qos_arg";

   function dds_lget_publication_matched_arg
     (listener : access constant dds_listener_t;
      callback : System.Address;
      arg : System.Address;
      reset_on_invoke : access Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:468
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lget_publication_matched_arg";

   function dds_lget_requested_deadline_missed_arg
     (listener : access constant dds_listener_t;
      callback : System.Address;
      arg : System.Address;
      reset_on_invoke : access Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:481
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lget_requested_deadline_missed_arg";

   function dds_lget_requested_incompatible_qos_arg
     (listener : access constant dds_listener_t;
      callback : System.Address;
      arg : System.Address;
      reset_on_invoke : access Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:494
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lget_requested_incompatible_qos_arg";

   function dds_lget_sample_lost_arg
     (listener : access constant dds_listener_t;
      callback : System.Address;
      arg : System.Address;
      reset_on_invoke : access Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:507
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lget_sample_lost_arg";

   function dds_lget_sample_rejected_arg
     (listener : access constant dds_listener_t;
      callback : System.Address;
      arg : System.Address;
      reset_on_invoke : access Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:520
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lget_sample_rejected_arg";

   function dds_lget_subscription_matched_arg
     (listener : access constant dds_listener_t;
      callback : System.Address;
      arg : System.Address;
      reset_on_invoke : access Extensions.bool) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:533
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lget_subscription_matched_arg";

   procedure dds_lget_inconsistent_topic (listener : access constant dds_listener_t; callback : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:540
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lget_inconsistent_topic";

   procedure dds_lget_liveliness_lost (listener : access constant dds_listener_t; callback : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:547
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lget_liveliness_lost";

   procedure dds_lget_offered_deadline_missed (listener : access constant dds_listener_t; callback : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:554
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lget_offered_deadline_missed";

   procedure dds_lget_offered_incompatible_qos (listener : access constant dds_listener_t; callback : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:561
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lget_offered_incompatible_qos";

   procedure dds_lget_data_on_readers (listener : access constant dds_listener_t; callback : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:568
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lget_data_on_readers";

   procedure dds_lget_sample_lost (listener : access constant dds_listener_t; callback : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:575
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lget_sample_lost";

   procedure dds_lget_data_available (listener : access constant dds_listener_t; callback : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:582
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lget_data_available";

   procedure dds_lget_sample_rejected (listener : access constant dds_listener_t; callback : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:589
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lget_sample_rejected";

   procedure dds_lget_liveliness_changed (listener : access constant dds_listener_t; callback : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:596
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lget_liveliness_changed";

   procedure dds_lget_requested_deadline_missed (listener : access constant dds_listener_t; callback : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:603
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lget_requested_deadline_missed";

   procedure dds_lget_requested_incompatible_qos (listener : access constant dds_listener_t; callback : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:610
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lget_requested_incompatible_qos";

   procedure dds_lget_publication_matched (listener : access constant dds_listener_t; callback : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:617
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lget_publication_matched";

   procedure dds_lget_subscription_matched (listener : access constant dds_listener_t; callback : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_listener.h:624
   with Import => True, 
        Convention => C, 
        External_Name => "dds_lget_subscription_matched";

end CycloneDDS.Low_Level.dds_ddsc_dds_public_listener_h;
