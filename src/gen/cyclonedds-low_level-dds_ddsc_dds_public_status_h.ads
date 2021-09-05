pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h;
with CycloneDDS.Low_Level.dds_dds_h;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;

package CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h is

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
-- * @brief DDS C Communication Status API
-- *
-- * This header file defines the public API of the Communication Status in the
-- * Eclipse Cyclone DDS C language binding.
   --

   --  Listeners implemented as structs containing callback functions
   --  that take listener status types as arguments.
   --

   -- Listener status types
   --*
   -- * \ref DCPS_Status_OfferedDeadlineMissed
   --

   type dds_offered_deadline_missed_status_t is record
      total_count          : aliased unsigned;
      total_count_change   : aliased int;
      last_instance_handle : aliased CycloneDDS.Low_Level
        .dds_ddsc_dds_public_impl_h
        .dds_instance_handle_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_offered_deadline_missed_status_t is dds_offered_deadline_missed_status;

      --*
      -- * \ref DCPS_Status_OfferedIncompatibleQoS
      --

   type dds_offered_incompatible_qos_status_t is record
      total_count        : aliased unsigned;
      total_count_change : aliased int;
      last_policy_id     : aliased unsigned;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_offered_incompatible_qos_status_t is dds_offered_incompatible_qos_status;

      --*
      -- * \ref DCPS_Status_PublicationMatched
      --

   type dds_publication_matched_status_t is record
      total_count              : aliased unsigned;
      total_count_change       : aliased int;
      current_count            : aliased unsigned;
      current_count_change     : aliased int;
      last_subscription_handle : aliased CycloneDDS.Low_Level
        .dds_ddsc_dds_public_impl_h
        .dds_instance_handle_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_publication_matched_status_t is dds_publication_matched_status;

      --*
      -- * \ref DCPS_Status_LivelinessLost
      --

   type dds_liveliness_lost_status_t is record
      total_count        : aliased unsigned;
      total_count_change : aliased int;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_liveliness_lost_status_t is dds_liveliness_lost_status;

      --*
      -- * \ref DCPS_Status_SubscriptionMatched
      --

   type dds_subscription_matched_status_t is record
      total_count             : aliased unsigned;
      total_count_change      : aliased int;
      current_count           : aliased unsigned;
      current_count_change    : aliased int;
      last_publication_handle : aliased CycloneDDS.Low_Level
        .dds_ddsc_dds_public_impl_h
        .dds_instance_handle_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_subscription_matched_status_t is dds_subscription_matched_status;

      --*
      -- * dds_sample_rejected_status_kind
      --

   type dds_sample_rejected_status_kind is
     (DDS_NOT_REJECTED, DDS_REJECTED_BY_INSTANCES_LIMIT,
      DDS_REJECTED_BY_SAMPLES_LIMIT,
      DDS_REJECTED_BY_SAMPLES_PER_INSTANCE_LIMIT) with
      Convention => C;

      --*
      -- * \ref DCPS_Status_SampleRejected
      --

   type dds_sample_rejected_status_t is record
      total_count          : aliased unsigned;
      total_count_change   : aliased int;
      last_reason          : aliased dds_sample_rejected_status_kind;
      last_instance_handle : aliased CycloneDDS.Low_Level
        .dds_ddsc_dds_public_impl_h
        .dds_instance_handle_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_sample_rejected_status_t is dds_sample_rejected_status;

      --*
      -- * \ref DCPS_Status_LivelinessChanged
      --

   type dds_liveliness_changed_status_t is record
      alive_count             : aliased unsigned;
      not_alive_count         : aliased unsigned;
      alive_count_change      : aliased int;
      not_alive_count_change  : aliased int;
      last_publication_handle : aliased CycloneDDS.Low_Level
        .dds_ddsc_dds_public_impl_h
        .dds_instance_handle_t;
   end record with
      Convention => C_Pass_By_Copy;

--  <>subtype dds_liveliness_changed_status_t is dds_liveliness_changed_status;

      --*
      -- * \ref DCPS_Status_RequestedDeadlineMissed
      --

   type dds_requested_deadline_missed_status_t is record
      total_count          : aliased unsigned;
      total_count_change   : aliased int;
      last_instance_handle : aliased CycloneDDS.Low_Level
        .dds_ddsc_dds_public_impl_h
        .dds_instance_handle_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_requested_deadline_missed_status_t is dds_requested_deadline_missed_status;

      --*
      -- * \ref DCPS_Status_RequestedIncompatibleQoS
      --

   type dds_requested_incompatible_qos_status_t is record
      total_count        : aliased unsigned;
      total_count_change : aliased int;
      last_policy_id     : aliased unsigned;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_requested_incompatible_qos_status_t is dds_requested_incompatible_qos_status;

      --*
      -- * \ref DCPS_Status_SampleLost
      --

   type dds_sample_lost_status_t is record
      total_count        : aliased unsigned;
      total_count_change : aliased int;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype dds_sample_lost_status_t is dds_sample_lost_status;

      --*
      -- * \ref DCPS_Status_InconsistentTopic
      --

   type dds_inconsistent_topic_status_t is record
      total_count        : aliased unsigned;
      total_count_change : aliased int;
   end record with
      Convention => C_Pass_By_Copy;

--  <>subtype dds_inconsistent_topic_status_t is dds_inconsistent_topic_status;

   --  get_<status> APIs return the status of an entity and resets the status
      --

      --*
      -- * @brief Get INCONSISTENT_TOPIC status
      -- *
      -- * This operation gets the status value corresponding to INCONSISTENT_TOPIC
      -- * and reset the status. The value can be obtained, only if the status is enabled for an entity.
      -- * NULL value for status is allowed and it will reset the trigger value when status is enabled.
      -- *
      -- * @param[in]  topic  The entity to get the status
      -- * @param[out] status The pointer to \ref DCPS_Status_InconsistentTopic to get the status
      -- *
      -- * @returns  0 - Success
      -- * @returns <0 - Failure
      -- *
      -- * @retval DDS_RETCODE_ERROR
      -- *                  An internal error has occurred.
      -- * @retval DDS_RETCODE_BAD_PARAMETER
      -- *                  One of the given arguments is not valid.
      -- * @retval DDS_RETCODE_ILLEGAL_OPERATION
      -- *                  The operation is invoked on an inappropriate object.
      -- * @retval DDS_RETCODE_ALREADY_DELETED
      -- *                  The entity has already been deleted.
      --

   function dds_get_inconsistent_topic_status
     (topic  : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
      status : access dds_inconsistent_topic_status_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_get_inconsistent_topic_status";

      --*
      -- * @brief Get PUBLICATION_MATCHED status
      -- *
      -- * This operation gets the status value corresponding to PUBLICATION_MATCHED
      -- * and reset the status. The value can be obtained, only if the status is enabled for an entity.
      -- * NULL value for status is allowed and it will reset the trigger value when status is enabled.
      -- *
      -- * @param[in]  writer  The entity to get the status
      -- * @param[out] status  The pointer to \ref DCPS_Status_PublicationMatched to get the status
      -- *
      -- * @returns  0 - Success
      -- * @returns <0 - Failure
      -- *
      -- * @retval DDS_RETCODE_ERROR
      -- *                  An internal error has occurred.
      -- * @retval DDS_RETCODE_BAD_PARAMETER
      -- *                  One of the given arguments is not valid.
      -- * @retval DDS_RETCODE_ILLEGAL_OPERATION
      -- *                  The operation is invoked on an inappropriate object.
      -- * @retval DDS_RETCODE_ALREADY_DELETED
      -- *                  The entity has already been deleted.
      --

   function dds_get_publication_matched_status
     (writer : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
      status : access dds_publication_matched_status_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_get_publication_matched_status";

      --*
      -- * @brief Get LIVELINESS_LOST status
      -- *
      -- * This operation gets the status value corresponding to LIVELINESS_LOST
      -- * and reset the status. The value can be obtained, only if the status is enabled for an entity.
      -- * NULL value for status is allowed and it will reset the trigger value when status is enabled.
      -- *
      -- * @param[in]  writer  The entity to get the status
      -- * @param[out] status  The pointer to \ref DCPS_Status_LivelinessLost to get the status
      -- *
      -- * @returns  0 - Success
      -- * @returns <0 - Failure
      -- *
      -- * @retval DDS_RETCODE_ERROR
      -- *                  An internal error has occurred.
      -- * @retval DDS_RETCODE_BAD_PARAMETER
      -- *                  One of the given arguments is not valid.
      -- * @retval DDS_RETCODE_ILLEGAL_OPERATION
      -- *                  The operation is invoked on an inappropriate object.
      -- * @retval DDS_RETCODE_ALREADY_DELETED
      -- *                  The entity has already been deleted.
      --

   function dds_get_liveliness_lost_status
     (writer : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
      status : access dds_liveliness_lost_status_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_get_liveliness_lost_status";

      --*
      -- * @brief Get OFFERED_DEADLINE_MISSED status
      -- *
      -- * This operation gets the status value corresponding to OFFERED_DEADLINE_MISSED
      -- * and reset the status. The value can be obtained, only if the status is enabled for an entity.
      -- * NULL value for status is allowed and it will reset the trigger value when status is enabled.
      -- *
      -- * @param[in]  writer  The entity to get the status
      -- * @param[out] status  The pointer to \ref DCPS_Status_OfferedDeadlineMissed to get the status
      -- *
      -- * @returns  0 - Success
      -- * @returns <0 - Failure
      -- *
      -- * @retval DDS_RETCODE_ERROR
      -- *                  An internal error has occurred.
      -- * @retval DDS_RETCODE_BAD_PARAMETER
      -- *                  One of the given arguments is not valid.
      -- * @retval DDS_RETCODE_ILLEGAL_OPERATION
      -- *                  The operation is invoked on an inappropriate object.
      -- * @retval DDS_RETCODE_ALREADY_DELETED
      -- *                  The entity has already been deleted.
      --

   function dds_get_offered_deadline_missed_status
     (writer : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
      status : access dds_offered_deadline_missed_status_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_get_offered_deadline_missed_status";

      --*
      -- * @brief Get OFFERED_INCOMPATIBLE_QOS status
      -- *
      -- * This operation gets the status value corresponding to OFFERED_INCOMPATIBLE_QOS
      -- * and reset the status. The value can be obtained, only if the status is enabled for an entity.
      -- * NULL value for status is allowed and it will reset the trigger value when status is enabled.
      -- *
      -- * @param[in]  writer  The writer entity to get the status
      -- * @param[out] status  The pointer to \ref DCPS_Status_OfferedIncompatibleQoS to get the status
      -- *
      -- * @returns  0 - Success
      -- * @returns <0 - Failure
      -- *
      -- * @retval DDS_RETCODE_ERROR
      -- *                  An internal error has occurred.
      -- * @retval DDS_RETCODE_BAD_PARAMETER
      -- *                  One of the given arguments is not valid.
      -- * @retval DDS_RETCODE_ILLEGAL_OPERATION
      -- *                  The operation is invoked on an inappropriate object.
      -- * @retval DDS_RETCODE_ALREADY_DELETED
      -- *                  The entity has already been deleted.
      --

   function dds_get_offered_incompatible_qos_status
     (writer : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
      status : access dds_offered_incompatible_qos_status_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_get_offered_incompatible_qos_status";

      --*
      -- * @brief Get SUBSCRIPTION_MATCHED status
      -- *
      -- * This operation gets the status value corresponding to SUBSCRIPTION_MATCHED
      -- * and reset the status. The value can be obtained, only if the status is enabled for an entity.
      -- * NULL value for status is allowed and it will reset the trigger value when status is enabled.
      -- *
      -- * @param[in]  reader  The reader entity to get the status
      -- * @param[out] status  The pointer to \ref DCPS_Status_SubscriptionMatched to get the status
      -- *
      -- * @returns  0 - Success
      -- * @returns <0 - Failure
      -- *
      -- * @retval DDS_RETCODE_ERROR
      -- *                  An internal error has occurred.
      -- * @retval DDS_RETCODE_BAD_PARAMETER
      -- *                  One of the given arguments is not valid.
      -- * @retval DDS_RETCODE_ILLEGAL_OPERATION
      -- *                  The operation is invoked on an inappropriate object.
      -- * @retval DDS_RETCODE_ALREADY_DELETED
      -- *                  The entity has already been deleted.
      --

   function dds_get_subscription_matched_status
     (reader : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
      status : access dds_subscription_matched_status_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_get_subscription_matched_status";

      --*
      -- * @brief Get LIVELINESS_CHANGED status
      -- *
      -- * This operation gets the status value corresponding to LIVELINESS_CHANGED
      -- * and reset the status. The value can be obtained, only if the status is enabled for an entity.
      -- * NULL value for status is allowed and it will reset the trigger value when status is enabled.
      -- *
      -- * @param[in]  reader  The entity to get the status
      -- * @param[out] status  The pointer to \ref DCPS_Status_LivelinessChanged to get the status
      -- *
      -- * @returns  0 - Success
      -- * @returns <0 - Failure
      -- *
      -- * @retval DDS_RETCODE_ERROR
      -- *                  An internal error has occurred.
      -- * @retval DDS_RETCODE_BAD_PARAMETER
      -- *                  One of the given arguments is not valid.
      -- * @retval DDS_RETCODE_ILLEGAL_OPERATION
      -- *                  The operation is invoked on an inappropriate object.
      -- * @retval DDS_RETCODE_ALREADY_DELETED
      -- *                  The entity has already been deleted.
      --

   function dds_get_liveliness_changed_status
     (reader : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
      status : access dds_liveliness_changed_status_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_get_liveliness_changed_status";

      --*
      -- * @brief Get SAMPLE_REJECTED status
      -- *
      -- * This operation gets the status value corresponding to SAMPLE_REJECTED
      -- * and reset the status. The value can be obtained, only if the status is enabled for an entity.
      -- * NULL value for status is allowed and it will reset the trigger value when status is enabled.
      -- *
      -- * @param[in]  reader  The entity to get the status
      -- * @param[out] status  The pointer to \ref DCPS_Status_SampleRejected to get the status
      -- *
      -- * @returns  0 - Success
      -- * @returns <0 - Failure
      -- *
      -- * @retval DDS_RETCODE_ERROR
      -- *                  An internal error has occurred.
      -- * @retval DDS_RETCODE_BAD_PARAMETER
      -- *                  One of the given arguments is not valid.
      -- * @retval DDS_RETCODE_ILLEGAL_OPERATION
      -- *                  The operation is invoked on an inappropriate object.
      -- * @retval DDS_RETCODE_ALREADY_DELETED
      -- *                  The entity has already been deleted.
      --

   function dds_get_sample_rejected_status
     (reader : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
      status : access dds_sample_rejected_status_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_get_sample_rejected_status";

      --*
      -- * @brief Get SAMPLE_LOST status
      -- *
      -- * This operation gets the status value corresponding to SAMPLE_LOST
      -- * and reset the status. The value can be obtained, only if the status is enabled for an entity.
      -- * NULL value for status is allowed and it will reset the trigger value when status is enabled.
      -- *
      -- * @param[in]  reader  The entity to get the status
      -- * @param[out] status  The pointer to \ref DCPS_Status_SampleLost to get the status
      -- *
      -- * @returns A dds_return_t indicating success or failure
      -- *
      -- * @retval DDS_RETCODE_OK
      -- *            Success
      -- * @retval DDS_RETCODE_ERROR
      -- *            An internal error has occurred.
      -- * @retval DDS_RETCODE_BAD_PARAMETER
      -- *            One of the given arguments is not valid.
      -- * @retval DDS_RETCODE_ILLEGAL_OPERATION
      -- *            The operation is invoked on an inappropriate object.
      -- * @retval DDS_RETCODE_ALREADY_DELETED
      -- *            The entity has already been deleted.
      --

   function dds_get_sample_lost_status
     (reader : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
      status : access dds_sample_lost_status_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_get_sample_lost_status";

      --*
      -- * @brief Get REQUESTED_DEADLINE_MISSED status
      -- *
      -- * This operation gets the status value corresponding to REQUESTED_DEADLINE_MISSED
      -- * and reset the status. The value can be obtained, only if the status is enabled for an entity.
      -- * NULL value for status is allowed and it will reset the trigger value when status is enabled.
      -- *
      -- * @param[in]  reader  The entity to get the status
      -- * @param[out] status  The pointer to \ref DCPS_Status_RequestedDeadlineMissed to get the status
      -- *
      -- * @returns A dds_return_t indicating success or failure
      -- *
      -- * @retval DDS_RETCODE_OK
      -- *            Success
      -- * @retval DDS_RETCODE_ERROR
      -- *            An internal error has occurred.
      -- * @retval DDS_RETCODE_BAD_PARAMETER
      -- *            One of the given arguments is not valid.
      -- * @retval DDS_RETCODE_ILLEGAL_OPERATION
      -- *            The operation is invoked on an inappropriate object.
      -- * @retval DDS_RETCODE_ALREADY_DELETED
      -- *            The entity has already been deleted.
      --

   function dds_get_requested_deadline_missed_status
     (reader : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
      status : access dds_requested_deadline_missed_status_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_get_requested_deadline_missed_status";

      --*
      -- * @brief Get REQUESTED_INCOMPATIBLE_QOS status
      -- *
      -- * This operation gets the status value corresponding to REQUESTED_INCOMPATIBLE_QOS
      -- * and reset the status. The value can be obtained, only if the status is enabled for an entity.
      -- * NULL value for status is allowed and it will reset the trigger value when status is enabled.
      -- *
      -- * @param[in]  reader  The entity to get the status
      -- * @param[out] status  The pointer to \ref DCPS_Status_RequestedIncompatibleQoS to get the status
      -- *
      -- * @returns A dds_return_t indicating success or failure
      -- *
      -- * @retval DDS_RETCODE_OK
      -- *            Success
      -- * @retval DDS_RETCODE_ERROR
      -- *            An internal error has occurred.
      -- * @retval DDS_RETCODE_BAD_PARAMETER
      -- *            One of the given arguments is not valid.
      -- * @retval DDS_RETCODE_ILLEGAL_OPERATION
      -- *            The operation is invoked on an inappropriate object.
      -- * @retval DDS_RETCODE_ALREADY_DELETED
      -- *            The entity has already been deleted.
      --

   function dds_get_requested_incompatible_qos_status
     (reader : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
      status : access dds_requested_incompatible_qos_status_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_get_requested_incompatible_qos_status";

end CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h;
