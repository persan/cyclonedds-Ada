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

   DDS_LUNSET : constant :=
     0;  --  /usr/gnat/include/dds/ddsc/dds_public_listener.h:46

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
   -- * @brief DDS C Listener API
   -- *
   -- * This header file defines the public API of listeners in the
   -- * Eclipse Cyclone DDS C language binding.
   --

   -- Listener callbacks
   type dds_on_inconsistent_topic_fn is access procedure
     (arg1 : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
      arg2 : CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h
        .dds_inconsistent_topic_status_t;
      arg3 : System.Address) with
      Convention => C;

   type dds_on_liveliness_lost_fn is access procedure
     (arg1 : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
      arg2 : CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h
        .dds_liveliness_lost_status_t;
      arg3 : System.Address) with
      Convention => C;

   type dds_on_offered_deadline_missed_fn is access procedure
     (arg1 : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
      arg2 : CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h
        .dds_offered_deadline_missed_status_t;
      arg3 : System.Address) with
      Convention => C;

   type dds_on_offered_incompatible_qos_fn is access procedure
     (arg1 : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
      arg2 : CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h
        .dds_offered_incompatible_qos_status_t;
      arg3 : System.Address) with
      Convention => C;

   type dds_on_data_on_readers_fn is access procedure
     (arg1 : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
      arg2 : System.Address) with
      Convention => C;

   type dds_on_sample_lost_fn is access procedure
     (arg1 : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
      arg2 : CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h
        .dds_sample_lost_status_t;
      arg3 : System.Address) with
      Convention => C;

   type dds_on_data_available_fn is access procedure
     (arg1 : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
      arg2 : System.Address) with
      Convention => C;

   type dds_on_sample_rejected_fn is access procedure
     (arg1 : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
      arg2 : CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h
        .dds_sample_rejected_status_t;
      arg3 : System.Address) with
      Convention => C;

   type dds_on_liveliness_changed_fn is access procedure
     (arg1 : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
      arg2 : CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h
        .dds_liveliness_changed_status_t;
      arg3 : System.Address) with
      Convention => C;

   type dds_on_requested_deadline_missed_fn is access procedure
     (arg1 : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
      arg2 : CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h
        .dds_requested_deadline_missed_status_t;
      arg3 : System.Address) with
      Convention => C;

   type dds_on_requested_incompatible_qos_fn is access procedure
     (arg1 : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
      arg2 : CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h
        .dds_requested_incompatible_qos_status_t;
      arg3 : System.Address) with
      Convention => C;

   type dds_on_publication_matched_fn is access procedure
     (arg1 : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
      arg2 : CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h
        .dds_publication_matched_status_t;
      arg3 : System.Address) with
      Convention => C;

   type dds_on_subscription_matched_fn is access procedure
     (arg1 : CycloneDDS.Low_Level.dds_dds_h.dds_entity_t;
      arg2 : CycloneDDS.Low_Level.dds_ddsc_dds_public_status_h
        .dds_subscription_matched_status_t;
      arg3 : System.Address) with
      Convention => C;

   type dds_listener_t is null record;   -- incomplete struct

   --  <>subtype dds_listener_t is dds_listener;

   --*
   -- * @brief Allocate memory and initializes to default values (::DDS_LUNSET) of a listener
   -- *
   -- * @param[in] arg optional pointer that will be passed on to the listener callbacks
   -- *
   -- * @return Returns a pointer to the allocated memory for dds_listener_t structure.
   --

   function dds_create_listener
     (arg : System.Address) return access dds_listener_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_create_listener";

   function dds_listener_create
     (arg : System.Address) return access dds_listener_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_listener_create";

      --*
      -- * @brief Delete the memory allocated to listener structure
      -- *
      -- * @param[in] listener pointer to the listener struct to delete
      --

   procedure dds_delete_listener (listener : access dds_listener_t) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_delete_listener";

   procedure dds_listener_delete (listener : access dds_listener_t) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_listener_delete";

      --*
      -- * @brief Reset the listener structure contents to ::DDS_LUNSET
      -- *
      -- * @param[in,out] listener pointer to the listener struct to reset
      --

   procedure dds_reset_listener (listener : access dds_listener_t) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_reset_listener";

   procedure dds_listener_reset (listener : access dds_listener_t) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_listener_reset";

      --*
      -- * @brief Copy the listener callbacks from source to destination
      -- *
      -- * @param[in,out] dst The pointer to the destination listener structure, where the content is to copied
      -- * @param[in] src The pointer to the source listener structure to be copied
      --

   procedure dds_copy_listener
     (dst : access dds_listener_t; src : access constant dds_listener_t) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_copy_listener";

   procedure dds_listener_copy
     (dst : access dds_listener_t; src : access constant dds_listener_t) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_listener_copy";

      --*
      -- * @brief Copy the listener callbacks from source to destination, unless already set
      -- *
      -- * Any listener callbacks already set in @p dst (including NULL) are skipped, only
      -- * those set to DDS_LUNSET are copied from @p src.
      -- *
      -- * @param[in,out] dst The pointer to the destination listener structure, where the content is merged
      -- * @param[in] src The pointer to the source listener structure to be copied
      --

   procedure dds_merge_listener
     (dst : access dds_listener_t; src : access constant dds_listener_t) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_merge_listener";

   procedure dds_listener_merge
     (dst : access dds_listener_t; src : access constant dds_listener_t) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_listener_merge";

      --***********************************************************************************************
      -- *  Setters
      -- ***********************************************************************************************

      --*
      -- * @brief Set the data_available callback and argument in the listener structure.
      -- *
      -- * @param[in,out] listener listener structure to update
      -- * @param[in] callback the callback to set or a null pointer
      -- * @param[in] arg callback argument that is passed uninterpreted to the callback function
      -- * @param[in] reset_on_invoke whether or not the status should be cleared when the listener callback is invoked
      -- *
      -- * @retval DDS_RETCODE_OK success
      -- * @retval DDS_RETCODE_BAD_PARAMETER listener is a null pointer
      --

   function dds_lset_data_available_arg
     (listener : access dds_listener_t; callback : dds_on_data_available_fn;
      arg      : System.Address; reset_on_invoke : Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lset_data_available_arg";

      --*
      -- * @brief Set the data_on_readers callback and argument in the listener structure.
      -- *
      -- * @param[in,out] listener listener structure to update
      -- * @param[in] callback the callback to set or a null pointer
      -- * @param[in] arg callback argument that is passed uninterpreted to the callback function
      -- * @param[in] reset_on_invoke whether or not the status should be cleared when the listener callback is invoked
      -- *
      -- * @retval DDS_RETCODE_OK success
      -- * @retval DDS_RETCODE_BAD_PARAMETER listener is a null pointer
      --

   function dds_lset_data_on_readers_arg
     (listener : access dds_listener_t; callback : dds_on_data_on_readers_fn;
      arg      : System.Address; reset_on_invoke : Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lset_data_on_readers_arg";

      --*
      -- * @brief Set the inconsistent_topic callback and argument in the listener structure.
      -- *
      -- * @param[in,out] listener listener structure to update
      -- * @param[in] callback the callback to set or a null pointer
      -- * @param[in] arg callback argument that is passed uninterpreted to the callback function
      -- * @param[in] reset_on_invoke whether or not the status should be cleared when the listener callback is invoked
      -- *
      -- * @retval DDS_RETCODE_OK success
      -- * @retval DDS_RETCODE_BAD_PARAMETER listener is a null pointer
      --

   function dds_lset_inconsistent_topic_arg
     (listener        : access dds_listener_t;
      callback        : dds_on_inconsistent_topic_fn; arg : System.Address;
      reset_on_invoke : Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lset_inconsistent_topic_arg";

      --*
      -- * @brief Set the liveliness_changed callback and argument in the listener structure.
      -- *
      -- * @param[in,out] listener listener structure to update
      -- * @param[in] callback the callback to set or a null pointer
      -- * @param[in] arg callback argument that is passed uninterpreted to the callback function
      -- * @param[in] reset_on_invoke whether or not the status should be cleared when the listener callback is invoked
      -- *
      -- * @retval DDS_RETCODE_OK success
      -- * @retval DDS_RETCODE_BAD_PARAMETER listener is a null pointer
      --

   function dds_lset_liveliness_changed_arg
     (listener        : access dds_listener_t;
      callback        : dds_on_liveliness_changed_fn; arg : System.Address;
      reset_on_invoke : Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lset_liveliness_changed_arg";

      --*
      -- * @brief Set the liveliness_lost callback and argument in the listener structure.
      -- *
      -- * @param[in,out] listener listener structure to update
      -- * @param[in] callback the callback to set or a null pointer
      -- * @param[in] arg callback argument that is passed uninterpreted to the callback function
      -- * @param[in] reset_on_invoke whether or not the status should be cleared when the listener callback is invoked
      -- *
      -- * @retval DDS_RETCODE_OK success
      -- * @retval DDS_RETCODE_BAD_PARAMETER listener is a null pointer
      --

   function dds_lset_liveliness_lost_arg
     (listener : access dds_listener_t; callback : dds_on_liveliness_lost_fn;
      arg      : System.Address; reset_on_invoke : Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lset_liveliness_lost_arg";

      --*
      -- * @brief Set the offered_deadline_missed callback and argument in the listener structure.
      -- *
      -- * @param[in,out] listener listener structure to update
      -- * @param[in] callback the callback to set or a null pointer
      -- * @param[in] arg callback argument that is passed uninterpreted to the callback function
      -- * @param[in] reset_on_invoke whether or not the status should be cleared when the listener callback is invoked
      -- *
      -- * @retval DDS_RETCODE_OK success
      -- * @retval DDS_RETCODE_BAD_PARAMETER listener is a null pointer
      --

   function dds_lset_offered_deadline_missed_arg
     (listener        : access dds_listener_t;
      callback : dds_on_offered_deadline_missed_fn; arg : System.Address;
      reset_on_invoke : Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lset_offered_deadline_missed_arg";

      --*
      -- * @brief Set the offered_incompatible_qos callback and argument in the listener structure.
      -- *
      -- * @param[in,out] listener listener structure to update
      -- * @param[in] callback the callback to set or a null pointer
      -- * @param[in] arg callback argument that is passed uninterpreted to the callback function
      -- * @param[in] reset_on_invoke whether or not the status should be cleared when the listener callback is invoked
      -- *
      -- * @retval DDS_RETCODE_OK success
      -- * @retval DDS_RETCODE_BAD_PARAMETER listener is a null pointer
      --

   function dds_lset_offered_incompatible_qos_arg
     (listener        : access dds_listener_t;
      callback : dds_on_offered_incompatible_qos_fn; arg : System.Address;
      reset_on_invoke : Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lset_offered_incompatible_qos_arg";

      --*
      -- * @brief Set the publication_matched callback and argument in the listener structure.
      -- *
      -- * @param[in,out] listener listener structure to update
      -- * @param[in] callback the callback to set or a null pointer
      -- * @param[in] arg callback argument that is passed uninterpreted to the callback function
      -- * @param[in] reset_on_invoke whether or not the status should be cleared when the listener callback is invoked
      -- *
      -- * @retval DDS_RETCODE_OK success
      -- * @retval DDS_RETCODE_BAD_PARAMETER listener is a null pointer
      --

   function dds_lset_publication_matched_arg
     (listener        : access dds_listener_t;
      callback        : dds_on_publication_matched_fn; arg : System.Address;
      reset_on_invoke : Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lset_publication_matched_arg";

      --*
      -- * @brief Set the requested_deadline_missed callback and argument in the listener structure.
      -- *
      -- * @param[in,out] listener listener structure to update
      -- * @param[in] callback the callback to set or a null pointer
      -- * @param[in] arg callback argument that is passed uninterpreted to the callback function
      -- * @param[in] reset_on_invoke whether or not the status should be cleared when the listener callback is invoked
      -- *
      -- * @retval DDS_RETCODE_OK success
      -- * @retval DDS_RETCODE_BAD_PARAMETER listener is a null pointer
      --

   function dds_lset_requested_deadline_missed_arg
     (listener        : access dds_listener_t;
      callback : dds_on_requested_deadline_missed_fn; arg : System.Address;
      reset_on_invoke : Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lset_requested_deadline_missed_arg";

      --*
      -- * @brief Set the requested_incompatible_qos callback and argument in the listener structure.
      -- *
      -- * @param[in,out] listener listener structure to update
      -- * @param[in] callback the callback to set or a null pointer
      -- * @param[in] arg callback argument that is passed uninterpreted to the callback function
      -- * @param[in] reset_on_invoke whether or not the status should be cleared when the listener callback is invoked
      -- *
      -- * @retval DDS_RETCODE_OK success
      -- * @retval DDS_RETCODE_BAD_PARAMETER listener is a null pointer
      --

   function dds_lset_requested_incompatible_qos_arg
     (listener        : access dds_listener_t;
      callback : dds_on_requested_incompatible_qos_fn; arg : System.Address;
      reset_on_invoke : Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lset_requested_incompatible_qos_arg";

      --*
      -- * @brief Set the sample_lost callback and argument in the listener structure.
      -- *
      -- * @param[in,out] listener listener structure to update
      -- * @param[in] callback the callback to set or a null pointer
      -- * @param[in] arg callback argument that is passed uninterpreted to the callback function
      -- * @param[in] reset_on_invoke whether or not the status should be cleared when the listener callback is invoked
      -- *
      -- * @retval DDS_RETCODE_OK success
      -- * @retval DDS_RETCODE_BAD_PARAMETER listener is a null pointer
      --

   function dds_lset_sample_lost_arg
     (listener : access dds_listener_t; callback : dds_on_sample_lost_fn;
      arg      : System.Address; reset_on_invoke : Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lset_sample_lost_arg";

      --*
      -- * @brief Set the sample_rejected callback and argument in the listener structure.
      -- *
      -- * @param[in,out] listener listener structure to update
      -- * @param[in] callback the callback to set or a null pointer
      -- * @param[in] arg callback argument that is passed uninterpreted to the callback function
      -- * @param[in] reset_on_invoke whether or not the status should be cleared when the listener callback is invoked
      -- *
      -- * @retval DDS_RETCODE_OK success
      -- * @retval DDS_RETCODE_BAD_PARAMETER listener is a null pointer
      --

   function dds_lset_sample_rejected_arg
     (listener : access dds_listener_t; callback : dds_on_sample_rejected_fn;
      arg      : System.Address; reset_on_invoke : Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lset_sample_rejected_arg";

      --*
      -- * @brief Set the subscription_matched callback and argument in the listener structure.
      -- *
      -- * @param[in,out] listener listener structure to update
      -- * @param[in] callback the callback to set or a null pointer
      -- * @param[in] arg callback argument that is passed uninterpreted to the callback function
      -- * @param[in] reset_on_invoke whether or not the status should be cleared when the listener callback is invoked
      -- *
      -- * @retval DDS_RETCODE_OK success
      -- * @retval DDS_RETCODE_BAD_PARAMETER listener is a null pointer
      --

   function dds_lset_subscription_matched_arg
     (listener        : access dds_listener_t;
      callback        : dds_on_subscription_matched_fn; arg : System.Address;
      reset_on_invoke : Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lset_subscription_matched_arg";

      --*
      -- * @brief Set the inconsistent_topic callback in the listener structure.
      -- *
      -- * Equivalent to calling @ref dds_lset_inconsistent_topic_arg with arg set to the argument passed in dds_create_listener and reset_on_invoke to true, and throwing away the result.
      --

   procedure dds_lset_inconsistent_topic
     (listener : access dds_listener_t;
      callback : dds_on_inconsistent_topic_fn) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lset_inconsistent_topic";

      --*
      -- * @brief Set the liveliness_lost callback in the listener structure.
      -- *
      -- * Equivalent to calling @ref dds_lset_liveliness_lost_arg with arg set to the argument passed in dds_create_listener and reset_on_invoke to true, and throwing away the result.
      --

   procedure dds_lset_liveliness_lost
     (listener : access dds_listener_t;
      callback : dds_on_liveliness_lost_fn) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lset_liveliness_lost";

      --*
      -- * @brief Set the offered_deadline_missed callback in the listener structure.
      -- *
      -- * Equivalent to calling @ref dds_lset_offered_deadline_missed_arg with arg set to the argument passed in dds_create_listener and reset_on_invoke to true, and throwing away the result.
      --

   procedure dds_lset_offered_deadline_missed
     (listener : access dds_listener_t;
      callback : dds_on_offered_deadline_missed_fn) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lset_offered_deadline_missed";

      --*
      -- * @brief Set the offered_incompatible_qos callback in the listener structure.
      -- *
      -- * Equivalent to calling @ref dds_lset_offered_incompatible_qos_arg with arg set to the argument passed in dds_create_listener and reset_on_invoke to true, and throwing away the result.
      --

   procedure dds_lset_offered_incompatible_qos
     (listener : access dds_listener_t;
      callback : dds_on_offered_incompatible_qos_fn) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lset_offered_incompatible_qos";

      --*
      -- * @brief Set the data_on_readers callback in the listener structure.
      -- *
      -- * Equivalent to calling @ref dds_lset_data_on_readers_arg with arg set to the argument passed in dds_create_listener and reset_on_invoke to true, and throwing away the result.
      --

   procedure dds_lset_data_on_readers
     (listener : access dds_listener_t;
      callback : dds_on_data_on_readers_fn) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lset_data_on_readers";

      --*
      -- * @brief Set the sample_lost callback in the listener structure.
      -- *
      -- * Equivalent to calling @ref dds_lset_sample_lost_arg with arg set to the argument passed in dds_create_listener and reset_on_invoke to true, and throwing away the result.
      --

   procedure dds_lset_sample_lost
     (listener : access dds_listener_t; callback : dds_on_sample_lost_fn) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lset_sample_lost";

      --*
      -- * @brief Set the data_available callback in the listener structure.
      -- *
      -- * Equivalent to calling @ref dds_lset_data_available_arg with arg set to the argument passed in dds_create_listener and reset_on_invoke to true, and throwing away the result.
      --

   procedure dds_lset_data_available
     (listener : access dds_listener_t;
      callback : dds_on_data_available_fn) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lset_data_available";

      --*
      -- * @brief Set the sample_rejected callback in the listener structure.
      -- *
      -- * Equivalent to calling @ref dds_lset_sample_rejected_arg with arg set to the argument passed in dds_create_listener and reset_on_invoke to true, and throwing away the result.
      --

   procedure dds_lset_sample_rejected
     (listener : access dds_listener_t;
      callback : dds_on_sample_rejected_fn) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lset_sample_rejected";

      --*
      -- * @brief Set the liveliness_changed callback in the listener structure.
      -- *
      -- * Equivalent to calling @ref dds_lset_liveliness_changed_arg with arg set to the argument passed in dds_create_listener and reset_on_invoke to true, and throwing away the result.
      --

   procedure dds_lset_liveliness_changed
     (listener : access dds_listener_t;
      callback : dds_on_liveliness_changed_fn) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lset_liveliness_changed";

      --*
      -- * @brief Set the requested_deadline_missed callback in the listener structure.
      -- *
      -- * Equivalent to calling @ref dds_lset_requested_deadline_missed_arg with arg set to the argument passed in dds_create_listener and reset_on_invoke to true, and throwing away the result.
      --

   procedure dds_lset_requested_deadline_missed
     (listener : access dds_listener_t;
      callback : dds_on_requested_deadline_missed_fn) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lset_requested_deadline_missed";

      --*
      -- * @brief Set the requested_incompatible_qos callback in the listener structure.
      -- *
      -- * Equivalent to calling @ref dds_lset_requested_incompatible_qos_arg with arg set to the argument passed in dds_create_listener and reset_on_invoke to true, and throwing away the result.
      --

   procedure dds_lset_requested_incompatible_qos
     (listener : access dds_listener_t;
      callback : dds_on_requested_incompatible_qos_fn) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lset_requested_incompatible_qos";

      --*
      -- * @brief Set the publication_matched callback in the listener structure.
      -- *
      -- * Equivalent to calling @ref dds_lset_publication_matched_arg with arg set to the argument passed in dds_create_listener and reset_on_invoke to true, and throwing away the result.
      --

   procedure dds_lset_publication_matched
     (listener : access dds_listener_t;
      callback : dds_on_publication_matched_fn) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lset_publication_matched";

      --*
      -- * @brief Set the subscription_matched callback in the listener structure.
      -- *
      -- * Equivalent to calling @ref dds_lset_subscription_matched_arg with arg set to the argument passed in dds_create_listener and reset_on_invoke to true, and throwing away the result.
      --

   procedure dds_lset_subscription_matched
     (listener : access dds_listener_t;
      callback : dds_on_subscription_matched_fn) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lset_subscription_matched";

      --***********************************************************************************************
      -- *  Getters
      -- ***********************************************************************************************

      --*
      -- * @brief Get the data_available callback from the listener structure.
      -- *
      -- * @param[in] listener The pointer to the listener structure, where the callback will be retrieved from
      -- * @param[out] callback Callback function; may be a null pointer
      -- * @param[out] arg Callback argument pointer; may be a null pointer
      -- * @param[out] reset_on_invoke Whether the status is reset by listener invocation; may be a null pointer
      -- *
      -- * @retval DDS_RETCODE_OK if successful
      -- * @retval DDS_RETCODE_BAD_PARAMETER listener is a null pointer
      --

   function dds_lget_data_available_arg
     (listener : access constant dds_listener_t; callback : System.Address;
      arg      : System.Address; reset_on_invoke : access Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lget_data_available_arg";

      --*
      -- * @brief Get the data_on_readers callback from the listener structure.
      -- *
      -- * @param[in] listener The pointer to the listener structure, where the callback will be retrieved from
      -- * @param[out] callback Callback function; may be a null pointer
      -- * @param[out] arg Callback argument pointer; may be a null pointer
      -- * @param[out] reset_on_invoke Whether the status is reset by listener invocation; may be a null pointer
      -- *
      -- * @retval DDS_RETCODE_OK if successful
      -- * @retval DDS_RETCODE_BAD_PARAMETER listener is a null pointer
      --

   function dds_lget_data_on_readers_arg
     (listener : access constant dds_listener_t; callback : System.Address;
      arg      : System.Address; reset_on_invoke : access Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lget_data_on_readers_arg";

      --*
      -- * @brief Get the inconsistent_topic callback from the listener structure.
      -- *
      -- * @param[in] listener The pointer to the listener structure, where the callback will be retrieved from
      -- * @param[out] callback Callback function; may be a null pointer
      -- * @param[out] arg Callback argument pointer; may be a null pointer
      -- * @param[out] reset_on_invoke Whether the status is reset by listener invocation; may be a null pointer
      -- *
      -- * @retval DDS_RETCODE_OK if successful
      -- * @retval DDS_RETCODE_BAD_PARAMETER listener is a null pointer
      --

   function dds_lget_inconsistent_topic_arg
     (listener : access constant dds_listener_t; callback : System.Address;
      arg      : System.Address; reset_on_invoke : access Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lget_inconsistent_topic_arg";

      --*
      -- * @brief Get the liveliness_changed callback from the listener structure.
      -- *
      -- * @param[in] listener The pointer to the listener structure, where the callback will be retrieved from
      -- * @param[out] callback Callback function; may be a null pointer
      -- * @param[out] arg Callback argument pointer; may be a null pointer
      -- * @param[out] reset_on_invoke Whether the status is reset by listener invocation; may be a null pointer
      -- *
      -- * @retval DDS_RETCODE_OK if successful
      -- * @retval DDS_RETCODE_BAD_PARAMETER listener is a null pointer
      --

   function dds_lget_liveliness_changed_arg
     (listener : access constant dds_listener_t; callback : System.Address;
      arg      : System.Address; reset_on_invoke : access Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lget_liveliness_changed_arg";

      --*
      -- * @brief Get the liveliness_lost callback from the listener structure.
      -- *
      -- * @param[in] listener The pointer to the listener structure, where the callback will be retrieved from
      -- * @param[out] callback Callback function; may be a null pointer
      -- * @param[out] arg Callback argument pointer; may be a null pointer
      -- * @param[out] reset_on_invoke Whether the status is reset by listener invocation; may be a null pointer
      -- *
      -- * @retval DDS_RETCODE_OK if successful
      -- * @retval DDS_RETCODE_BAD_PARAMETER listener is a null pointer
      --

   function dds_lget_liveliness_lost_arg
     (listener : access constant dds_listener_t; callback : System.Address;
      arg      : System.Address; reset_on_invoke : access Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lget_liveliness_lost_arg";

      --*
      -- * @brief Get the offered_deadline_missed callback from the listener structure.
      -- *
      -- * @param[in] listener The pointer to the listener structure, where the callback will be retrieved from
      -- * @param[out] callback Callback function; may be a null pointer
      -- * @param[out] arg Callback argument pointer; may be a null pointer
      -- * @param[out] reset_on_invoke Whether the status is reset by listener invocation; may be a null pointer
      -- *
      -- * @retval DDS_RETCODE_OK if successful
      -- * @retval DDS_RETCODE_BAD_PARAMETER listener is a null pointer
      --

   function dds_lget_offered_deadline_missed_arg
     (listener : access constant dds_listener_t; callback : System.Address;
      arg      : System.Address; reset_on_invoke : access Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lget_offered_deadline_missed_arg";

      --*
      -- * @brief Get the offered_incompatible_qos callback from the listener structure.
      -- *
      -- * @param[in] listener The pointer to the listener structure, where the callback will be retrieved from
      -- * @param[out] callback Callback function; may be a null pointer
      -- * @param[out] arg Callback argument pointer; may be a null pointer
      -- * @param[out] reset_on_invoke Whether the status is reset by listener invocation; may be a null pointer
      -- *
      -- * @retval DDS_RETCODE_OK if successful
      -- * @retval DDS_RETCODE_BAD_PARAMETER listener is a null pointer
      --

   function dds_lget_offered_incompatible_qos_arg
     (listener : access constant dds_listener_t; callback : System.Address;
      arg      : System.Address; reset_on_invoke : access Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lget_offered_incompatible_qos_arg";

      --*
      -- * @brief Get the publication_matched callback from the listener structure.
      -- *
      -- * @param[in] listener The pointer to the listener structure, where the callback will be retrieved from
      -- * @param[out] callback Callback function; may be a null pointer
      -- * @param[out] arg Callback argument pointer; may be a null pointer
      -- * @param[out] reset_on_invoke Whether the status is reset by listener invocation; may be a null pointer
      -- *
      -- * @retval DDS_RETCODE_OK if successful
      -- * @retval DDS_RETCODE_BAD_PARAMETER listener is a null pointer
      --

   function dds_lget_publication_matched_arg
     (listener : access constant dds_listener_t; callback : System.Address;
      arg      : System.Address; reset_on_invoke : access Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lget_publication_matched_arg";

      --*
      -- * @brief Get the subscription_matched callback from the listener structure.
      -- *
      -- * @param[in] listener The pointer to the listener structure, where the callback will be retrieved from
      -- * @param[out] callback Callback function; may be a null pointer
      -- * @param[out] arg Callback argument pointer; may be a null pointer
      -- * @param[out] reset_on_invoke Whether the status is reset by listener invocation; may be a null pointer
      -- *
      -- * @retval DDS_RETCODE_OK if successful
      -- * @retval DDS_RETCODE_BAD_PARAMETER listener is a null pointer
      --

   function dds_lget_requested_deadline_missed_arg
     (listener : access constant dds_listener_t; callback : System.Address;
      arg      : System.Address; reset_on_invoke : access Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lget_requested_deadline_missed_arg";

      --*
      -- * @brief Get the requested_incompatible_qos callback from the listener structure.
      -- *
      -- * @param[in] listener The pointer to the listener structure, where the callback will be retrieved from
      -- * @param[out] callback Callback function; may be a null pointer
      -- * @param[out] arg Callback argument pointer; may be a null pointer
      -- * @param[out] reset_on_invoke Whether the status is reset by listener invocation; may be a null pointer
      -- *
      -- * @retval DDS_RETCODE_OK if successful
      -- * @retval DDS_RETCODE_BAD_PARAMETER listener is a null pointer
      --

   function dds_lget_requested_incompatible_qos_arg
     (listener : access constant dds_listener_t; callback : System.Address;
      arg      : System.Address; reset_on_invoke : access Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lget_requested_incompatible_qos_arg";

      --*
      -- * @brief Get the sample_lost callback from the listener structure.
      -- *
      -- * @param[in] listener The pointer to the listener structure, where the callback will be retrieved from
      -- * @param[out] callback Callback function; may be a null pointer
      -- * @param[out] arg Callback argument pointer; may be a null pointer
      -- * @param[out] reset_on_invoke Whether the status is reset by listener invocation; may be a null pointer
      -- *
      -- * @retval DDS_RETCODE_OK if successful
      -- * @retval DDS_RETCODE_BAD_PARAMETER listener is a null pointer
      --

   function dds_lget_sample_lost_arg
     (listener : access constant dds_listener_t; callback : System.Address;
      arg      : System.Address; reset_on_invoke : access Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lget_sample_lost_arg";

      --*
      -- * @brief Get the sample_rejected callback from the listener structure.
      -- *
      -- * @param[in] listener The pointer to the listener structure, where the callback will be retrieved from
      -- * @param[out] callback Callback function; may be a null pointer
      -- * @param[out] arg Callback argument pointer; may be a null pointer
      -- * @param[out] reset_on_invoke Whether the status is reset by listener invocation; may be a null pointer
      -- *
      -- * @retval DDS_RETCODE_OK if successful
      -- * @retval DDS_RETCODE_BAD_PARAMETER listener is a null pointer
      --

   function dds_lget_sample_rejected_arg
     (listener : access constant dds_listener_t; callback : System.Address;
      arg      : System.Address; reset_on_invoke : access Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lget_sample_rejected_arg";

      --*
      -- * @brief Get the subscription_matched callback from the listener structure.
      -- *
      -- * @param[in] listener The pointer to the listener structure, where the callback will be retrieved from
      -- * @param[out] callback Callback function; may be a null pointer
      -- * @param[out] arg Callback argument pointer; may be a null pointer
      -- * @param[out] reset_on_invoke Whether the status is reset by listener invocation; may be a null pointer
      -- *
      -- * @retval DDS_RETCODE_OK if successful
      -- * @retval DDS_RETCODE_BAD_PARAMETER listener is a null pointer
      --

   function dds_lget_subscription_matched_arg
     (listener : access constant dds_listener_t; callback : System.Address;
      arg      : System.Address; reset_on_invoke : access Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lget_subscription_matched_arg";

      --*
      -- * @brief Get the inconsistent_topic callback from the listener structure
      -- *
      -- * Equivalent to calling @ref dds_lget_inconsistent_topic_arg with arg and reset_on_invoke set to a null pointer and throwing away the result.
      --

   procedure dds_lget_inconsistent_topic
     (listener : access constant dds_listener_t;
      callback : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lget_inconsistent_topic";

      --*
      -- * @brief Get the liveliness_lost callback from the listener structure.
      -- *
      -- * Equivalent to calling @ref dds_lget_liveliness_lost_arg with arg and reset_on_invoke set to a null pointer and throwing away the result.
      --

   procedure dds_lget_liveliness_lost
     (listener : access constant dds_listener_t;
      callback : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lget_liveliness_lost";

      --*
      -- * @brief Get the offered_deadline_missed callback from the listener structure.
      -- *
      -- * Equivalent to calling @ref dds_lget_offered_deadline_missed_arg with arg and reset_on_invoke set to a null pointer and throwing away the result.
      --

   procedure dds_lget_offered_deadline_missed
     (listener : access constant dds_listener_t;
      callback : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lget_offered_deadline_missed";

      --*
      -- * @brief Get the offered_incompatible_qos callback from the listener structure.
      -- *
      -- * Equivalent to calling @ref dds_lget_offered_incompatible_qos_arg with arg and reset_on_invoke set to a null pointer and throwing away the result.
      --

   procedure dds_lget_offered_incompatible_qos
     (listener : access constant dds_listener_t;
      callback : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lget_offered_incompatible_qos";

      --*
      -- * @brief Get the data_on_readers callback from the listener structure.
      -- *
      -- * Equivalent to calling @ref dds_lget_data_on_readers_arg with arg and reset_on_invoke set to a null pointer and throwing away the result.
      --

   procedure dds_lget_data_on_readers
     (listener : access constant dds_listener_t;
      callback : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lget_data_on_readers";

      --*
      -- * @brief Get the sample_lost callback from the listener structure.
      -- *
      -- * Equivalent to calling @ref dds_lget_sample_lost_arg with arg and reset_on_invoke set to a null pointer and throwing away the result.
      --

   procedure dds_lget_sample_lost
     (listener : access constant dds_listener_t;
      callback : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lget_sample_lost";

      --*
      -- * @brief Get the data_available callback from the listener structure.
      -- *
      -- * Equivalent to calling @ref dds_lget_data_available_arg with arg and reset_on_invoke set to a null pointer and throwing away the result.
      --

   procedure dds_lget_data_available
     (listener : access constant dds_listener_t;
      callback : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lget_data_available";

      --*
      -- * @brief Get the sample_rejected callback from the listener structure.
      -- *
      -- * Equivalent to calling @ref dds_lget_sample_rejected_arg with arg and reset_on_invoke set to a null pointer and throwing away the result.
      --

   procedure dds_lget_sample_rejected
     (listener : access constant dds_listener_t;
      callback : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lget_sample_rejected";

      --*
      -- * @brief Get the liveliness_changed callback from the listener structure.
      -- *
      -- * Equivalent to calling @ref dds_lget_liveliness_changed_arg with arg and reset_on_invoke set to a null pointer and throwing away the result.
      --

   procedure dds_lget_liveliness_changed
     (listener : access constant dds_listener_t;
      callback : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lget_liveliness_changed";

      --*
      -- * @brief Get the requested_deadline_missed callback from the listener structure.
      -- *
      -- * Equivalent to calling @ref dds_lget_requested_deadline_missed_arg with arg and reset_on_invoke set to a null pointer and throwing away the result.
      --

   procedure dds_lget_requested_deadline_missed
     (listener : access constant dds_listener_t;
      callback : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lget_requested_deadline_missed";

      --*
      -- * @brief Get the requested_incompatible_qos callback from the listener structure.
      -- *
      -- * Equivalent to calling @ref dds_lget_requested_incompatible_qos_arg with arg and reset_on_invoke set to a null pointer and throwing away the result.
      --

   procedure dds_lget_requested_incompatible_qos
     (listener : access constant dds_listener_t;
      callback : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lget_requested_incompatible_qos";

      --*
      -- * @brief Get the publication_matched callback from the listener structure.
      -- *
      -- * Equivalent to calling @ref dds_lget_publication_matched_arg with arg and reset_on_invoke set to a null pointer and throwing away the result.
      --

   procedure dds_lget_publication_matched
     (listener : access constant dds_listener_t;
      callback : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lget_publication_matched";

      --*
      -- * @brief Get the subscription_matched callback from the listener structure.
      -- *
      -- * Equivalent to calling @ref dds_lget_subscription_matched_arg with arg and reset_on_invoke set to a null pointer and throwing away the result.
      --

   procedure dds_lget_subscription_matched
     (listener : access constant dds_listener_t;
      callback : System.Address) with
      Import        => True,
      Convention    => C,
      External_Name => "dds_lget_subscription_matched";

end CycloneDDS.Low_Level.dds_ddsc_dds_public_listener_h;
