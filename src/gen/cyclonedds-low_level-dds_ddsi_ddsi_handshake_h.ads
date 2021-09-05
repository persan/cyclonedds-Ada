pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_security_msg_h;

limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_handshake_h is

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

   type ddsi_handshake is null record;   -- incomplete struct

   type dssi_hsadmin is null record;   -- incomplete struct

   type ddsi_handshake_state is
     (STATE_HANDSHAKE_IN_PROGRESS, STATE_HANDSHAKE_TIMED_OUT,
      STATE_HANDSHAKE_FAILED, STATE_HANDSHAKE_PROCESSED,
      STATE_HANDSHAKE_SEND_TOKENS, STATE_HANDSHAKE_OK) with
      Convention => C;

-- The handshake will not use the related handshake object after this callback
-- * was executed. This means that it can be deleted in this callback.

   type ddsi_handshake_end_cb_t is access procedure
     (arg1 : access ddsi_handshake;
      arg2 : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant;
      arg3 : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant;
      arg4 : ddsi_handshake_state) with
      Convention => C;

      --*
   -- * @brief Release the handshake.
   -- *
   -- * This function will decrement the refcount associated with the handshake
   -- * and delete the handshake when the refcount becomes 0.
   -- *
   -- * @param[in] handshake    The handshake.
      --

   procedure ddsi_handshake_release (handshake : access ddsi_handshake) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_handshake_release";

      --*
      -- * @brief Handle an authentication handshake message received from the remote participant.
      -- *
      -- * During the authentication phase handshake messages are being exchanged between the local and
      -- * the remote participant. THis function will handle a handshake message received from a remote
      -- * participant.
      -- *
      -- * @param[in] handshake  The handshake.
      -- * @param[in] pp         The local participant.
      -- * @param[in] proxypp    The remote participant.
      -- * @param[in] msg        The handshake message received.
      --

   procedure ddsi_handshake_handle_message
     (handshake : access ddsi_handshake;
      pp        : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h
        .participant;
      proxypp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h
        .proxy_participant;
      msg : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_security_msg_h
        .nn_participant_generic_message_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_handshake_handle_message";

      --*
      -- * @brief Notify the handshake that crypto tokens have been received.
      -- *
      -- * The handshake could be finished at one end while the other side has not yet processed the
      -- * final handshake messages. The arrival of crypto tokens signals that the other side has also finished
      -- * processing the handshake. This function is used to signal the handshake that crypto tokens have been
      -- * received.
      -- *
      -- * @param[in] handshake     The handshake.
      --

   procedure ddsi_handshake_crypto_tokens_received
     (handshake : access ddsi_handshake) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_handshake_crypto_tokens_received";

      --*
      -- * @brief Get the shared secret handle.
      -- *
      -- * During the handshake a shared secret is established which is used to encrypt
      -- * and decrypt the crypto token exchange messages. This function will return a
      -- * handle to the shared secret which will be passed to the crypto plugin to
      -- * determine the session keys used for the echange of the the crypto tokens.
      -- *
      -- * @param[in] handshake  The handshake.
      -- *
      -- * @returns handle to the shared sercet.
      --

   function ddsi_handshake_get_shared_secret
     (handshake : access constant ddsi_handshake) return long with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_handshake_get_shared_secret";

      --*
      -- * @brief Get the handshake handle
      -- *
      -- * This function returns the handshake handle that was returned by the authentication plugin
      -- * when starting the handshake.
      -- *
      -- * @param[in]  handshake  The handshake.
      -- *
      -- * @returns The handshake handle.
      --

   function ddsi_handshake_get_handle
     (handshake : access constant ddsi_handshake) return long with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_handshake_get_handle";

      --*
      -- * @brief Create and start the handshake for the participants
      -- *
      -- * This function will create a handshake for the specified local
      -- * and remote participants when it does not yet exists. It will start the
      -- * handshake procedure by calling the corresponding functions of the authentication plugin.
      -- * The callback function is called by the handshake when to report events,
      -- * for example to indicate that the handshake has finished or has failed.
      -- *
      -- * @param[in] pp         The local participant.
      -- * @param[in] proxypp    The remote participant.
      -- * @param[in] callback   The callback function.
      -- *
      --

   procedure ddsi_handshake_register
     (pp      : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant;
      proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h
        .proxy_participant;
      callback : ddsi_handshake_end_cb_t) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_handshake_register";

      --*
      -- * @brief Remove the handshake associated with the specified participants.
      -- *
      -- * This function will remove the handshake from the handshake administation and release
      -- * the handshake. When the handshake argument is not specified the handshake is searched
      -- * in the handshake administation.
      -- *
      -- * @param[in] pp         The local participant.
      -- * @param[in] proxypp    The remote participant.
      -- *
      --

   procedure ddsi_handshake_remove
     (pp      : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant;
      proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h
        .proxy_participant) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_handshake_remove";

      --*
      -- * @brief Searches for the handshake associated with the specified participants
      -- *
      -- * This function will search through the handshake administration to find the handshake
      -- * corresponding the to specified local and remote participant.
      -- *
      -- * @param[in] pp         The local participant.
      -- * @param[in] proxypp    The remote participant.
      -- *
      -- * @returns The handshake
      --

      --*
      -- * @brief Searches for the handshake associated with the specified participants
      -- *
      -- * This function will search through the handshake administration to find the handshake
      -- * corresponding the to specified local and remote participant.
      -- *
      -- * @param[in] pp         The local participant.
      -- * @param[in] proxypp    The remote participant.
      -- *
      -- * @returns The handshake
      --

   function ddsi_handshake_find
     (pp      : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant;
      proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h
        .proxy_participant)
      return access ddsi_handshake with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_handshake_find";

      --*
      -- * @brief Initialize the handshake administration
      -- *
      -- * @param[in] gv         The global parameters
      --

   procedure ddsi_handshake_admin_init
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .ddsi_domaingv) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_handshake_admin_init";

      --*
      --* @brief Stop handshake background processing.
      --*
      --* @param[in] gv         The global parameters
      --

   procedure ddsi_handshake_admin_stop
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .ddsi_domaingv) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_handshake_admin_stop";

      --*
      -- * @brief Deinitialze the handshake administration.
      -- *
      -- * @param[in] gv         The global parameters
      --

   procedure ddsi_handshake_admin_deinit
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .ddsi_domaingv) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_handshake_admin_deinit";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_handshake_h;
