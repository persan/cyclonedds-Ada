pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
with Interfaces.C.Extensions;
with System;

with CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h;

with CycloneDDS.Low_Level.dds_ddsrt_time_h;

with Interfaces.C.Strings;

package CycloneDDS.Low_Level.dds_ddsc_dds_public_qos_h is

   DDS_HAS_PROPERTY_LIST_QOS : constant := 1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:29

   function dds_create_qos return access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "dds_create_qos";

   function dds_qos_create return access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qos_create";

   procedure dds_delete_qos (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "dds_delete_qos";

   procedure dds_qos_delete (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qos_delete";

   procedure dds_reset_qos (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "dds_reset_qos";

   procedure dds_qos_reset (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qos_reset";

   function dds_copy_qos (dst : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; src : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "dds_copy_qos";

   function dds_qos_copy (dst : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; src : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qos_copy";

   procedure dds_merge_qos (dst : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; src : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "dds_merge_qos";

   procedure dds_qos_merge (dst : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; src : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qos_merge";

   function dds_qos_equal (a : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; b : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qos_equal";

   procedure dds_qset_userdata
     (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      value : System.Address;
      sz : size_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_userdata";

   procedure dds_qset_topicdata
     (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      value : System.Address;
      sz : size_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_topicdata";

   procedure dds_qset_groupdata
     (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      value : System.Address;
      sz : size_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_groupdata";

   procedure dds_qset_durability (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; kind : CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_durability_kind_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_durability";

   procedure dds_qset_history
     (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      kind : CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_history_kind_t;
      depth : Interfaces.Integer_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_history";

   procedure dds_qset_resource_limits
     (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      max_samples : Interfaces.Integer_32;
      max_instances : Interfaces.Integer_32;
      max_samples_per_instance : Interfaces.Integer_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_resource_limits";

   procedure dds_qset_presentation
     (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      access_scope : CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_presentation_access_scope_kind_t;
      coherent_access : Extensions.bool;
      ordered_access : Extensions.bool)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:194
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_presentation";

   procedure dds_qset_lifespan (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; lifespan : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:207
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_lifespan";

   procedure dds_qset_deadline (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; deadline : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_deadline";

   procedure dds_qset_latency_budget (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; duration : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_latency_budget";

   procedure dds_qset_ownership (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; kind : CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_ownership_kind_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_ownership";

   procedure dds_qset_ownership_strength (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; value : Interfaces.Integer_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:251
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_ownership_strength";

   procedure dds_qset_liveliness
     (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      kind : CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_liveliness_kind_t;
      lease_duration : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:261
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_liveliness";

   procedure dds_qset_time_based_filter (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; minimum_separation : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:273
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_time_based_filter";

   procedure dds_qset_partition
     (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      n : Interfaces.Unsigned_32;
      ps : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:285
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_partition";

   procedure dds_qset_partition1 (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; name : Interfaces.C.Strings.chars_ptr)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:298
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_partition1";

   procedure dds_qset_reliability
     (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      kind : CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_reliability_kind_t;
      max_blocking_time : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:310
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_reliability";

   procedure dds_qset_transport_priority (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; value : Interfaces.Integer_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:322
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_transport_priority";

   procedure dds_qset_destination_order (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; kind : CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_destination_order_kind_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:331
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_destination_order";

   procedure dds_qset_writer_data_lifecycle (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; autodispose : Extensions.bool)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:342
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_writer_data_lifecycle";

   procedure dds_qset_reader_data_lifecycle
     (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      autopurge_nowriter_samples_delay : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;
      autopurge_disposed_samples_delay : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:352
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_reader_data_lifecycle";

   procedure dds_qset_durability_service
     (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      service_cleanup_delay : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;
      history_kind : CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_history_kind_t;
      history_depth : Interfaces.Integer_32;
      max_samples : Interfaces.Integer_32;
      max_instances : Interfaces.Integer_32;
      max_samples_per_instance : Interfaces.Integer_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:369
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_durability_service";

   procedure dds_qset_ignorelocal (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; ignore : CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_ignorelocal_kind_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:385
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_ignorelocal";

   procedure dds_qset_prop
     (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      name : Interfaces.C.Strings.chars_ptr;
      value : Interfaces.C.Strings.chars_ptr)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:402
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_prop";

   procedure dds_qunset_prop (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; name : Interfaces.C.Strings.chars_ptr)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:417
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qunset_prop";

   procedure dds_qset_bprop
     (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      name : Interfaces.C.Strings.chars_ptr;
      value : System.Address;
      sz : size_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:435
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_bprop";

   procedure dds_qunset_bprop (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; name : Interfaces.C.Strings.chars_ptr)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:451
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qunset_bprop";

   procedure dds_qset_type_consistency
     (qos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      kind : CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_type_consistency_kind_t;
      ignore_sequence_bounds : Extensions.bool;
      ignore_string_bounds : Extensions.bool;
      ignore_member_names : Extensions.bool;
      prevent_type_widening : Extensions.bool;
      force_type_validation : Extensions.bool)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:467
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_type_consistency";

   function dds_qget_userdata
     (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      value : System.Address;
      sz : access size_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:486
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_userdata";

   function dds_qget_topicdata
     (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      value : System.Address;
      sz : access size_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:497
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_topicdata";

   function dds_qget_groupdata
     (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      value : System.Address;
      sz : access size_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:508
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_groupdata";

   function dds_qget_durability (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; kind : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_durability_kind_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:518
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_durability";

   function dds_qget_history
     (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      kind : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_history_kind_t;
      depth : access Interfaces.Integer_32) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:529
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_history";

   function dds_qget_resource_limits
     (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      max_samples : access Interfaces.Integer_32;
      max_instances : access Interfaces.Integer_32;
      max_samples_per_instance : access Interfaces.Integer_32) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:542
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_resource_limits";

   function dds_qget_presentation
     (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      access_scope : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_presentation_access_scope_kind_t;
      coherent_access : access Extensions.bool;
      ordered_access : access Extensions.bool) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:559
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_presentation";

   function dds_qget_lifespan (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; lifespan : access CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:574
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_lifespan";

   function dds_qget_deadline (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; deadline : access CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:587
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_deadline";

   function dds_qget_latency_budget (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; duration : access CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:600
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_latency_budget";

   function dds_qget_ownership (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; kind : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_ownership_kind_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:613
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_ownership";

   function dds_qget_ownership_strength (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; value : access Interfaces.Integer_32) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:626
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_ownership_strength";

   function dds_qget_liveliness
     (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      kind : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_liveliness_kind_t;
      lease_duration : access CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:640
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_liveliness";

   function dds_qget_time_based_filter (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; minimum_separation : access CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:654
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_time_based_filter";

   function dds_qget_partition
     (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      n : access Interfaces.Unsigned_32;
      ps : System.Address) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:668
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_partition";

   function dds_qget_reliability
     (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      kind : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_reliability_kind_t;
      max_blocking_time : access CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:683
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_reliability";

   function dds_qget_transport_priority (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; value : access Interfaces.Integer_32) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:697
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_transport_priority";

   function dds_qget_destination_order (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; kind : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_destination_order_kind_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:710
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_destination_order";

   function dds_qget_writer_data_lifecycle (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; autodispose : access Extensions.bool) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:723
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_writer_data_lifecycle";

   function dds_qget_reader_data_lifecycle
     (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      autopurge_nowriter_samples_delay : access CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;
      autopurge_disposed_samples_delay : access CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:737
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_reader_data_lifecycle";

   function dds_qget_durability_service
     (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      service_cleanup_delay : access CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;
      history_kind : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_history_kind_t;
      history_depth : access Interfaces.Integer_32;
      max_samples : access Interfaces.Integer_32;
      max_instances : access Interfaces.Integer_32;
      max_samples_per_instance : access Interfaces.Integer_32) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:756
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_durability_service";

   function dds_qget_ignorelocal (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; ignore : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_ignorelocal_kind_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:774
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_ignorelocal";

   function dds_qget_propnames
     (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      n : access Interfaces.Unsigned_32;
      names : System.Address) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:788
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_propnames";

   function dds_qget_prop
     (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      name : Interfaces.C.Strings.chars_ptr;
      value : System.Address) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:806
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_prop";

   function dds_qget_bpropnames
     (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      n : access Interfaces.Unsigned_32;
      names : System.Address) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:821
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_bpropnames";

   function dds_qget_bprop
     (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      name : Interfaces.C.Strings.chars_ptr;
      value : System.Address;
      sz : access size_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:840
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_bprop";

   function dds_qget_type_consistency
     (qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      kind : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_type_consistency_kind_t;
      ignore_sequence_bounds : access Extensions.bool;
      ignore_string_bounds : access Extensions.bool;
      ignore_member_names : access Extensions.bool;
      prevent_type_widening : access Extensions.bool;
      force_type_validation : access Extensions.bool) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_qos.h:860
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_type_consistency";

end CycloneDDS.Low_Level.dds_ddsc_dds_public_qos_h;
