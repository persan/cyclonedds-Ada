pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
with Interfaces.C.Extensions;
with System;


with CycloneDDS.Low_Level.dds_ddsrt_time_h;

with Interfaces.C.Strings;

package CycloneDDS.Low_Level.dds_ddsc_dds_public_qos_h is

   DDS_HAS_PROPERTY_LIST_QOS : constant := 1;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:29

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

  --* @file
  -- *
  -- * @brief DDS C QoS API
  -- *
  -- * This header file defines the public API of QoS and Policies in the
  -- * Eclipse Cyclone DDS C language binding.
  --  

  -- Whether or not the "property list" QoS setting is supported in this version.  If it is,
  --   the "dds.sec." properties are treated specially, preventing the accidental creation of
  --   an non-secure participant by an implementation built without support for DDS Security.  

  --*
  -- * @brief Allocate memory and initialize default QoS-policies
  -- *
  -- * @returns - Pointer to the initialized dds_qos_t structure, NULL if unsuccessful.
  --  

   function dds_create_qos return access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "dds_create_qos";

   function dds_qos_create return access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qos_create";

  --*
  -- * @brief Delete memory allocated to QoS-policies structure
  -- *
  -- * @param[in] qos - Pointer to dds_qos_t structure
  --  

   procedure dds_delete_qos (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "dds_delete_qos";

   procedure dds_qos_delete (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qos_delete";

  --*
  -- * @brief Reset a QoS-policies structure to default values
  -- *
  -- * @param[in,out] qos - Pointer to the dds_qos_t structure
  --  

   procedure dds_reset_qos (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "dds_reset_qos";

   procedure dds_qos_reset (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qos_reset";

  --*
  -- * @brief Copy all QoS-policies from one structure to another
  -- *
  -- * @param[in,out] dst - Pointer to the destination dds_qos_t structure
  -- * @param[in] src - Pointer to the source dds_qos_t structure
  -- *
  -- * @returns - Return-code indicating success or failure
  --  

   function dds_copy_qos (dst : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; src : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "dds_copy_qos";

   function dds_qos_copy (dst : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; src : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qos_copy";

  --*
  -- * @brief Copy all QoS-policies from one structure to another, unless already set
  -- *
  -- * Policies are copied from src to dst, unless src already has the policy set to a non-default value.
  -- *
  -- * @param[in,out] dst - Pointer to the destination qos structure
  -- * @param[in] src - Pointer to the source qos structure
  --  

   procedure dds_merge_qos (dst : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; src : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "dds_merge_qos";

   procedure dds_qos_merge (dst : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; src : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qos_merge";

  --*
  -- * @brief Copy all QoS-policies from one structure to another, unless already set
  -- *
  -- * Policies are copied from src to dst, unless src already has the policy set to a non-default value.
  -- *
  -- * @param[in,out] a - Pointer to the destination qos structure
  -- * @param[in] b - Pointer to the source qos structure
  --  

   function dds_qos_equal (a : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; b : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qos_equal";

  --*
  -- * @brief Set the userdata of a qos structure.
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that will store the userdata
  -- * @param[in] value - Pointer to the userdata
  -- * @param[in] sz - Size of userdata stored in value
  --  

   procedure dds_qset_userdata
     (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      value : System.Address;
      sz : unsigned_long)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_userdata";

  --*
  -- * @brief Set the topicdata of a qos structure.
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that will store the topicdata
  -- * @param[in] value - Pointer to the topicdata
  -- * @param[in] sz - Size of the topicdata stored in value
  --  

   procedure dds_qset_topicdata
     (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      value : System.Address;
      sz : unsigned_long)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_topicdata";

  --*
  -- * @brief Set the groupdata of a qos structure.
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that will store the groupdata
  -- * @param[in] value - Pointer to the group data
  -- * @param[in] sz - Size of groupdata stored in value
  --  

   procedure dds_qset_groupdata
     (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      value : System.Address;
      sz : unsigned_long)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_groupdata";

  --*
  -- * @brief Set the durability policy of a qos structure.
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that will store the policy
  -- * @param[in] kind - Durability kind value \ref DCPS_QoS_Durability
  --  

   procedure dds_qset_durability (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; kind : CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_durability_kind_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_durability";

  --*
  -- * @brief Set the history policy of a qos structure.
  -- *
  -- * Note that depth is only relevant for keep last. If you want limited history for keep all, use dds_qset_resource_limits().
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that will store the policy
  -- * @param[in] kind - History kind value \ref DCPS_QoS_History
  -- * @param[in] depth - History depth value \ref DCPS_QoS_History
  --  

   procedure dds_qset_history
     (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      kind : CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_history_kind_t;
      depth : int)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_history";

  --*
  -- * @brief Set the resource limits policy of a qos structure.
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that will store the policy
  -- * @param[in] max_samples - Number of samples resource-limit value
  -- * @param[in] max_instances - Number of instances resource-limit value
  -- * @param[in] max_samples_per_instance - Number of samples per instance resource-limit value
  --  

   procedure dds_qset_resource_limits
     (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      max_samples : int;
      max_instances : int;
      max_samples_per_instance : int)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_resource_limits";

  --*
  -- * @brief Set the presentation policy of a qos structure.
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that will store the policy
  -- * @param[in] access_scope - Access-scope kind
  -- * @param[in] coherent_access - Coherent access enable value
  -- * @param[in] ordered_access - Ordered access enable value
  --  

   procedure dds_qset_presentation
     (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      access_scope : CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_presentation_access_scope_kind_t;
      coherent_access : Extensions.bool;
      ordered_access : Extensions.bool)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:194
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_presentation";

  --*
  -- * @brief Set the lifespan policy of a qos structure.
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that will store the policy
  -- * @param[in] lifespan - Lifespan duration (expiration time relative to source timestamp of a sample)
  --  

   procedure dds_qset_lifespan (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; lifespan : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:207
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_lifespan";

  --*
  -- * @brief Set the deadline policy of a qos structure.
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that will store the policy
  -- * @param[in] deadline - Deadline duration
  --  

   procedure dds_qset_deadline (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; deadline : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_deadline";

  --*
  -- * @brief Set the latency-budget policy of a qos structure
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that will store the policy
  -- * @param[in] duration - Latency budget duration
  --  

   procedure dds_qset_latency_budget (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; duration : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_latency_budget";

  --*
  -- * @brief Set the ownership policy of a qos structure
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that will store the policy
  -- * @param[in] kind - Ownership kind
  --  

   procedure dds_qset_ownership (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; kind : CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_ownership_kind_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_ownership";

  --*
  -- * @brief Set the ownership strength policy of a qos structure
  -- *
  -- * param[in,out] qos - Pointer to a dds_qos_t structure that will store the policy
  -- * param[in] value - Ownership strength value
  --  

   procedure dds_qset_ownership_strength (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; value : int)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:251
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_ownership_strength";

  --*
  -- * @brief Set the liveliness policy of a qos structure
  -- *
  -- * param[in,out] qos - Pointer to a dds_qos_t structure that will store the policy
  -- * param[in] kind - Liveliness kind
  -- * param[in[ lease_duration - Lease duration
  --  

   procedure dds_qset_liveliness
     (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      kind : CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_liveliness_kind_t;
      lease_duration : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:261
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_liveliness";

  --*
  -- * @brief Set the time-based filter policy of a qos structure
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that will store the policy
  -- * @param[in] minimum_separation - Minimum duration between sample delivery for an instance
  --  

   procedure dds_qset_time_based_filter (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; minimum_separation : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:273
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_time_based_filter";

  --*
  -- * @brief Set the partition policy of a qos structure
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that will store the policy
  -- * @param[in] n - Number of partitions stored in ps
  -- * @param[in] ps - Pointer to string(s) storing partition name(s)
  --  

   procedure dds_qset_partition
     (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      n : unsigned;
      ps : System.Address)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:285
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_partition";

  --*
  -- * @brief Convenience function to set the partition policy of a qos structure to a
  -- * single name.  Name may be a null pointer.
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that will store the policy
  -- * @param[in] name - Pointer to the name
  --  

   procedure dds_qset_partition1 (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; name : Interfaces.C.Strings.chars_ptr)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:298
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_partition1";

  --*
  -- * @brief Set the reliability policy of a qos structure
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that will store the policy
  -- * @param[in] kind - Reliability kind
  -- * @param[in] max_blocking_time - Max blocking duration applied when kind is reliable. This is how long the writer will block when its history is full.
  --  

   procedure dds_qset_reliability
     (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      kind : CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_reliability_kind_t;
      max_blocking_time : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:310
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_reliability";

  --*
  -- * @brief Set the transport-priority policy of a qos structure
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that will store the policy
  -- * @param[in] value - Priority value
  --  

   procedure dds_qset_transport_priority (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; value : int)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:322
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_transport_priority";

  --*
  -- * @brief Set the destination-order policy of a qos structure
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that will store the policy
  -- * @param[in] kind - Destination-order kind
  --  

   procedure dds_qset_destination_order (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; kind : CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_destination_order_kind_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:331
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_destination_order";

  --*
  -- * @brief Set the writer data-lifecycle policy of a qos structure
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that will store the policy
  -- * @param[in] autodispose - Automatic disposal of unregistered instances
  --  

   procedure dds_qset_writer_data_lifecycle (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; autodispose : Extensions.bool)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:342
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_writer_data_lifecycle";

  --*
  -- * @brief Set the reader data-lifecycle policy of a qos structure
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that will store the policy
  -- * @param[in] autopurge_nowriter_samples_delay - Delay for purging of samples from instances in a no-writers state
  -- * @param[in] autopurge_disposed_samples_delay - Delay for purging of samples from disposed instances
  --  

   procedure dds_qset_reader_data_lifecycle
     (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      autopurge_nowriter_samples_delay : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;
      autopurge_disposed_samples_delay : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:352
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_reader_data_lifecycle";

  --*
  -- * @brief Set the durability-service policy of a qos structure
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that will store the policy
  -- * @param[in] service_cleanup_delay - Delay for purging of abandoned instances from the durability service
  -- * @param[in] history_kind - History policy kind applied by the durability service
  -- * @param[in] history_depth - History policy depth applied by the durability service
  -- * @param[in] max_samples - Number of samples resource-limit policy applied by the durability service
  -- * @param[in] max_instances - Number of instances resource-limit policy applied by the durability service
  -- * @param[in] max_samples_per_instance - Number of samples per instance resource-limit policy applied by the durability service
  --  

   procedure dds_qset_durability_service
     (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      service_cleanup_delay : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;
      history_kind : CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_history_kind_t;
      history_depth : int;
      max_samples : int;
      max_instances : int;
      max_samples_per_instance : int)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:369
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_durability_service";

  --*
  -- * @brief Set the ignore-local policy of a qos structure
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that will store the policy
  -- * @param[in] ignore - True if readers and writers owned by the same participant should be ignored
  --  

   procedure dds_qset_ignorelocal (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; ignore : CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_ignorelocal_kind_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:385
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_ignorelocal";

  --*
  -- * @brief Stores a property with the provided name and string value in a qos structure.
  -- *
  -- * In the case a property with the provided name already exists in the qos structure,
  -- * the value for this entry is overwritten with the provided string value. If more than
  -- * one property with the provided name exists, only the value of the first of these
  -- * properties is updated.
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that will store the property
  -- * @param[in] name - Pointer to name of the property
  -- * @param[in] value - Pointer to a (null-terminated) string that will be stored
  --  

   procedure dds_qset_prop
     (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      name : Interfaces.C.Strings.chars_ptr;
      value : Interfaces.C.Strings.chars_ptr)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:402
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_prop";

  --*
  -- * @brief Removes the property with the provided name from a qos structure.
  -- *
  -- * In case more than one property exists with this name, only the first property
  -- * is removed.
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that contains the property
  -- * @param[in] name - Pointer to name of the property
  --  

   procedure dds_qunset_prop (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; name : Interfaces.C.Strings.chars_ptr)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:417
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qunset_prop";

  --*
  -- * @brief Stores the provided binary data as a property in a qos structure
  -- *
  -- * In the case a property with the provided name already exists in the qos structure,
  -- * the value for this entry is overwritten with the provided data. If more than one
  -- * property with the provided name exists, only the value of the first of these
  -- * properties is updated.
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that will store the property
  -- * @param[in] name - Pointer to name of the property
  -- * @param[in] value - Pointer to data to be stored in the property
  -- * @param[in] sz - Size of the data
  --  

   procedure dds_qset_bprop
     (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      name : Interfaces.C.Strings.chars_ptr;
      value : System.Address;
      sz : unsigned_long)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:435
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_bprop";

  --*
  -- * @brief Removes the binary property with the provided name from a qos structure.
  -- *
  -- * In case more than one binary property exists with this name, only the first binary
  -- * property is removed.
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that contains the binary property
  -- * @param[in] name - Pointer to name of the property
  --  

   procedure dds_qunset_bprop (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; name : Interfaces.C.Strings.chars_ptr)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:451
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qunset_bprop";

  --*
  -- * @brief Set the type consistency enforcement policy of a qos structure
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that will store the policy
  -- * @param[in] kind - Type consistency policy kind
  -- * @param[in] ignore_sequence_bounds - Ignore sequence bounds in type assignability checking
  -- * @param[in] ignore_string_bounds - Ignore string bounds in type assignability checking
  -- * @param[in] ignore_member_names - Ignore member names in type assignability checking
  -- * @param[in] prevent_type_widening - Prevent type widening in type assignability checking
  -- * @param[in] force_type_validation - Force type validation in assignability checking
  --  

   procedure dds_qset_type_consistency
     (qos : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      kind : CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_type_consistency_kind_t;
      ignore_sequence_bounds : Extensions.bool;
      ignore_string_bounds : Extensions.bool;
      ignore_member_names : Extensions.bool;
      prevent_type_widening : Extensions.bool;
      force_type_validation : Extensions.bool)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:467
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qset_type_consistency";

  --*
  -- * @brief Get the userdata from a qos structure
  -- *
  -- * @param[in] qos - Pointer to a dds_qos_t structure storing the policy
  -- * @param[in,out] value - Pointer that will store the userdata.  If sz = 0, then a null pointer, else it is a pointer to an allocated buffer of sz+1 bytes where the last byte is always 0
  -- * @param[in,out] sz - Pointer that will store the size of userdata
  -- *
  -- * @returns - false iff any of the arguments is invalid or the qos is not present in the qos object
  --  

   function dds_qget_userdata
     (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      value : System.Address;
      sz : access unsigned_long) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:486
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_userdata";

  --*
  -- * @brief Get the topicdata from a qos structure
  -- *
  -- * @param[in] qos - Pointer to a dds_qos_t structure storing the policy
  -- * @param[in,out] value - Pointer that will store the topicdata.  If sz = 0, then a null pointer, else it is a pointer to an allocated buffer of sz+1 bytes where the last byte is always 0
  -- * @param[in,out] sz - Pointer that will store the size of topicdata
  -- *
  -- * @returns - false iff any of the arguments is invalid or the qos is not present in the qos object
  -- 

   function dds_qget_topicdata
     (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      value : System.Address;
      sz : access unsigned_long) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:497
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_topicdata";

  --*
  -- * @brief Get the groupdata from a qos structure
  -- *
  -- * @param[in] qos - Pointer to a dds_qos_t structure storing the policy
  -- * @param[in,out] value - Pointer that will store the groupdata.  If sz = 0, then a null pointer, else it is a pointer to an allocated buffer of sz+1 bytes where the last byte is always 0
  -- * @param[in,out] sz - Pointer that will store the size of groupdata
  -- *
  -- * @returns - false iff any of the arguments is invalid or the qos is not present in the qos object
  --  

   function dds_qget_groupdata
     (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      value : System.Address;
      sz : access unsigned_long) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:508
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_groupdata";

  --*
  -- * @brief Get the durability policy from a qos structure
  -- *
  -- * @param[in] qos - Pointer to a dds_qos_t structure storing the policy
  -- * @param[in,out] kind - Pointer that will store the durability kind
  -- *
  -- * @returns - false iff any of the arguments is invalid or the qos is not present in the qos object
  --  

   function dds_qget_durability (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; kind : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_durability_kind_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:518
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_durability";

  --*
  -- * @brief Get the history policy from a qos structure
  -- *
  -- * @param[in] qos - Pointer to a dds_qos_t structure storing the policy
  -- * @param[in,out] kind - Pointer that will store the history kind (optional)
  -- * @param[in,out] depth - Pointer that will store the history depth (optional)
  -- *
  -- * @returns - false iff any of the arguments is invalid or the qos is not present in the qos object
  --  

   function dds_qget_history
     (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      kind : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_history_kind_t;
      depth : access int) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:529
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_history";

  --*
  -- * @brief Get the resource-limits policy from a qos structure
  -- *
  -- * @param[in] qos - Pointer to a dds_qos_t structure storing the policy
  -- * @param[in,out] max_samples - Pointer that will store the number of samples resource-limit (optional)
  -- * @param[in,out] max_instances - Pointer that will store the number of instances resource-limit (optional)
  -- * @param[in,out] max_samples_per_instance - Pointer that will store the number of samples per instance resource-limit (optional)
  -- *
  -- * @returns - false iff any of the arguments is invalid or the qos is not present in the qos object
  --  

   function dds_qget_resource_limits
     (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      max_samples : access int;
      max_instances : access int;
      max_samples_per_instance : access int) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:542
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_resource_limits";

  --*
  -- * @brief Get the presentation policy from a qos structure
  -- *
  -- * @param[in] qos - Pointer to a dds_qos_t structure storing the policy
  -- * @param[in,out] access_scope - Pointer that will store access scope kind (optional)
  -- * @param[in,out] coherent_access - Pointer that will store coherent access enable value (optional)
  -- * @param[in,out] ordered_access - Pointer that will store orderede access enable value (optional)
  -- *
  -- * @returns - false iff any of the arguments is invalid or the qos is not present in the qos object
  --  

   function dds_qget_presentation
     (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      access_scope : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_presentation_access_scope_kind_t;
      coherent_access : access Extensions.bool;
      ordered_access : access Extensions.bool) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:559
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_presentation";

  --*
  -- * @brief Get the lifespan policy from a qos structure
  -- *
  -- * @param[in] qos - Pointer to a dds_qos_t structure storing the policy
  -- * @param[in,out] lifespan - Pointer that will store lifespan duration
  -- *
  -- * @returns - false iff any of the arguments is invalid or the qos is not present in the qos object
  --  

   function dds_qget_lifespan (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; lifespan : access CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:574
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_lifespan";

  --*
  -- * @brief Get the deadline policy from a qos structure
  -- *
  -- * @param[in] qos - Pointer to a dds_qos_t structure storing the policy
  -- * @param[in,out] deadline - Pointer that will store deadline duration
  -- *
  -- * @returns - false iff any of the arguments is invalid or the qos is not present in the qos object
  --  

   function dds_qget_deadline (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; deadline : access CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:587
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_deadline";

  --*
  -- * @brief Get the latency-budget policy from a qos structure
  -- *
  -- * @param[in] qos - Pointer to a dds_qos_t structure storing the policy
  -- * @param[in,out] duration - Pointer that will store latency-budget duration
  -- *
  -- * @returns - false iff any of the arguments is invalid or the qos is not present in the qos object
  --  

   function dds_qget_latency_budget (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; duration : access CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:600
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_latency_budget";

  --*
  -- * @brief Get the ownership policy from a qos structure
  -- *
  -- * @param[in] qos - Pointer to a dds_qos_t structure storing the policy
  -- * @param[in,out] kind - Pointer that will store the ownership kind
  -- *
  -- * @returns - false iff any of the arguments is invalid or the qos is not present in the qos object
  --  

   function dds_qget_ownership (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; kind : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_ownership_kind_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:613
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_ownership";

  --*
  -- * @brief Get the ownership strength qos policy
  -- *
  -- * @param[in] qos - Pointer to a dds_qos_t structure storing the policy
  -- * @param[in,out] value - Pointer that will store the ownership strength value
  -- *
  -- * @returns - false iff any of the arguments is invalid or the qos is not present in the qos object
  --  

   function dds_qget_ownership_strength (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; value : access int) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:626
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_ownership_strength";

  --*
  -- * @brief Get the liveliness qos policy
  -- *
  -- * @param[in] qos - Pointer to a dds_qos_t structure storing the policy
  -- * @param[in,out] kind - Pointer that will store the liveliness kind (optional)
  -- * @param[in,out] lease_duration - Pointer that will store the liveliness lease duration (optional)
  -- *
  -- * @returns - false iff any of the arguments is invalid or the qos is not present in the qos object
  --  

   function dds_qget_liveliness
     (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      kind : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_liveliness_kind_t;
      lease_duration : access CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:640
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_liveliness";

  --*
  -- * @brief Get the time-based filter qos policy
  -- *
  -- * @param[in] qos - Pointer to a dds_qos_t structure storing the policy
  -- * @param[in,out] minimum_separation - Pointer that will store the minimum separation duration (optional)
  -- *
  -- * @returns - false iff any of the arguments is invalid or the qos is not present in the qos object
  --  

   function dds_qget_time_based_filter (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; minimum_separation : access CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:654
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_time_based_filter";

  --*
  -- * @brief Get the partition qos policy
  -- *
  -- * @param[in] qos - Pointer to a dds_qos_t structure storing the policy
  -- * @param[in,out] n - Pointer that will store the number of partitions (optional)
  -- * @param[in,out] ps - Pointer that will store the string(s) containing partition name(s) (optional)
  -- *
  -- * @returns - false iff any of the arguments is invalid or the qos is not present in the qos object
  --  

   function dds_qget_partition
     (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      n : access unsigned;
      ps : System.Address) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:668
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_partition";

  --*
  -- * @brief Get the reliability qos policy
  -- *
  -- * @param[in] qos - Pointer to a dds_qos_t structure storing the policy
  -- * @param[in,out] kind - Pointer that will store the reliability kind (optional)
  -- * @param[in,out] max_blocking_time - Pointer that will store the max blocking time for reliable reliability (optional)
  -- *
  -- * @returns - false iff any of the arguments is invalid or the qos is not present in the qos object
  --  

   function dds_qget_reliability
     (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      kind : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_reliability_kind_t;
      max_blocking_time : access CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:683
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_reliability";

  --*
  -- * @brief Get the transport priority qos policy
  -- *
  -- * @param[in] qos - Pointer to a dds_qos_t structure storing the policy
  -- * @param[in,out] value - Pointer that will store the transport priority value
  -- *
  -- * @returns - false iff any of the arguments is invalid or the qos is not present in the qos object
  --  

   function dds_qget_transport_priority (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; value : access int) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:697
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_transport_priority";

  --*
  -- * @brief Get the destination-order qos policy
  -- *
  -- * @param[in] qos - Pointer to a dds_qos_t structure storing the policy
  -- * @param[in,out] kind - Pointer that will store the destination-order kind
  -- *
  -- * @returns - false iff any of the arguments is invalid or the qos is not present in the qos object
  --  

   function dds_qget_destination_order (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; kind : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_destination_order_kind_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:710
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_destination_order";

  --*
  -- * @brief Get the writer data-lifecycle qos policy
  -- *
  -- * @param[in] qos - Pointer to a dds_qos_t structure storing the policy
  -- * @param[in,out] autodispose - Pointer that will store the autodispose unregistered instances enable value
  -- *
  -- * @returns - false iff any of the arguments is invalid or the qos is not present in the qos object
  --  

   function dds_qget_writer_data_lifecycle (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; autodispose : access Extensions.bool) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:723
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_writer_data_lifecycle";

  --*
  -- * @brief Get the reader data-lifecycle qos policy
  -- *
  -- * @param[in] qos - Pointer to a dds_qos_t structure storing the policy
  -- * @param[in,out] autopurge_nowriter_samples_delay - Pointer that will store the delay for auto-purging samples from instances in a no-writer state (optional)
  -- * @param[in,out] autopurge_disposed_samples_delay - Pointer that will store the delay for auto-purging of disposed instances (optional)
  -- *
  -- * @returns - false iff any of the arguments is invalid or the qos is not present in the qos object
  --  

   function dds_qget_reader_data_lifecycle
     (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      autopurge_nowriter_samples_delay : access CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;
      autopurge_disposed_samples_delay : access CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:737
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_reader_data_lifecycle";

  --*
  -- * @brief Get the durability-service qos policy values.
  -- *
  -- * @param[in] qos - Pointer to a dds_qos_t structure storing the policy
  -- * @param[in,out]  service_cleanup_delay - Pointer that will store the delay for purging of abandoned instances from the durability service (optional)
  -- * @param[in,out] history_kind - Pointer that will store history policy kind applied by the durability service (optional)
  -- * @param[in,out] history_depth - Pointer that will store history policy depth applied by the durability service (optional)
  -- * @param[in,out] max_samples - Pointer that will store number of samples resource-limit policy applied by the durability service (optional)
  -- * @param[in,out] max_instances - Pointer that will store number of instances resource-limit policy applied by the durability service (optional)
  -- * @param[in,out] max_samples_per_instance - Pointer that will store number of samples per instance resource-limit policy applied by the durability service (optional)
  -- *
  -- * @returns - false iff any of the arguments is invalid or the qos is not present in the qos object
  --  

   function dds_qget_durability_service
     (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      service_cleanup_delay : access CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;
      history_kind : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_history_kind_t;
      history_depth : access int;
      max_samples : access int;
      max_instances : access int;
      max_samples_per_instance : access int) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:756
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_durability_service";

  --*
  --   * @brief Get the ignore-local qos policy
  --   *
  --   * @param[in] qos - Pointer to a dds_qos_t structure storing the policy
  --   * @param[in,out] ignore - Pointer that will store whether to ignore readers/writers owned by the same participant (optional)
  --   *
  --   * @returns - false iff any of the arguments is invalid or the qos is not present in the qos object
  --    

   function dds_qget_ignorelocal (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t; ignore : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_ignorelocal_kind_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:774
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_ignorelocal";

  --*
  -- * @brief Gets the names of the properties from a qos structure.
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that contains properties
  -- * @param[in,out] n - Pointer to number of property names that are returned (optional)
  -- * @param[in,out] names - Pointer that will store the string(s) containing property name(s) (optional). This function will allocate the memory for the list of names and for the strings containing the names; the caller gets ownership of the allocated memory
  -- *
  -- * @returns - false iff any of the arguments is invalid or the qos is not present in the qos object
  --  

   function dds_qget_propnames
     (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      n : access unsigned;
      names : System.Address) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:788
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_propnames";

  --*
  -- * @brief Get the value of the property with the provided name from a qos structure.
  -- *
  -- * In case more than one property exists with this name, the value for the first
  -- * property with this name will be returned.
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that contains the property
  -- * @param[in] name - Pointer to name of the property
  -- * @param[in,out] value - Pointer to a string that will store the value of the property. The memory for storing the string value will be allocated by this function and the caller gets ownership of the allocated memory
  -- *
  -- * @returns - false iff any of the arguments is invalid, the qos is not present in the qos object or there was no property found with the provided name
  --  

   function dds_qget_prop
     (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      name : Interfaces.C.Strings.chars_ptr;
      value : System.Address) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:806
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_prop";

  --*
  -- * @brief Gets the names of the binary properties from a qos structure.
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that contains binary properties
  -- * @param[in,out] n - Pointer to number of binary property names that are returned (optional)
  -- * @param[in,out] names - Pointer that will store the string(s) containing binary property name(s) (optional). This function will allocate the memory for the list of names and for the strings containing the names; the caller gets ownership of the allocated memory
  -- *
  -- * @returns - false iff any of the arguments is invalid or the qos is not present in the qos object
  --  

   function dds_qget_bpropnames
     (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      n : access unsigned;
      names : System.Address) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:821
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_bpropnames";

  --*
  -- * @brief Get the value of the binary property with the provided name from a qos structure.
  -- *
  -- * In case more than one binary property exists with this name, the value for the first
  -- * binary property with this name will be returned.
  -- *
  -- * @param[in,out] qos - Pointer to a dds_qos_t structure that contains the property
  -- * @param[in] name - Pointer to name of the binary property
  -- * @param[in,out] value - Pointer to a buffer that will store the value of the property. If sz = 0 then a NULL pointer. The memory for storing the value will be allocated by this function and the caller gets ownership of the allocated memory
  -- * @param[in,out] sz - Pointer that will store the size of the returned buffer.
  -- *
  -- * @returns - false iff any of the arguments is invalid, the qos is not present in the qos object or there was no binary property found with the provided name
  --  

   function dds_qget_bprop
     (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      name : Interfaces.C.Strings.chars_ptr;
      value : System.Address;
      sz : access unsigned_long) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:840
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_bprop";

  --*
  -- * @brief Get the type consistency enforcement qos policy values.
  -- *
  -- * @param[in] qos - Pointer to a dds_qos_t structure storing the policy
  -- * @param[in,out] kind - Pointer that will store the type consistency enforcement kind (optional)
  -- * @param[in,out] ignore_sequence_bounds - Pointer that will store the boolean value for ignoring sequence bounds in type assignability checking (optional)
  -- * @param[in,out] ignore_string_bounds - Pointer that will store the boolean value for ignoring string bounds in type assignability checking (optional)
  -- * @param[in,out] ignore_member_names - Pointer that will store the boolean value for ignoring member names in type assignability checking (optional)
  -- * @param[in,out] prevent_type_widening - Pointer that will store the boolean value to prevent type widening in type assignability checking (optional)
  -- * @param[in,out] force_type_validation - Pointer that will store the boolean value to force type validation in assignability checking (optional)
  -- *
  -- * @returns - false iff any of the arguments is invalid or the qos is not present in the qos object
  --  

   function dds_qget_type_consistency
     (qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      kind : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_type_consistency_kind_t;
      ignore_sequence_bounds : access Extensions.bool;
      ignore_string_bounds : access Extensions.bool;
      ignore_member_names : access Extensions.bool;
      prevent_type_widening : access Extensions.bool;
      force_type_validation : access Extensions.bool) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qos.h:860
   with Import => True, 
        Convention => C, 
        External_Name => "dds_qget_type_consistency";

end CycloneDDS.Low_Level.dds_ddsc_dds_public_qos_h;
