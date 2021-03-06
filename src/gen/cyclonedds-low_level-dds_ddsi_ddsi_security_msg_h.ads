pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;

with Interfaces.C.Strings;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h;

with Interfaces.C.Extensions;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
with System;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_generic_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_security_msg_h is

   DDS_SECURITY_AUTH_REQUEST : aliased constant String :=
     "dds.sec.auth_request" &
     ASCII.NUL;  --  /usr/gnat/include/dds/ddsi/ddsi_security_msg.h:34
   DDS_SECURITY_AUTH_HANDSHAKE : aliased constant String :=
     "dds.sec.auth" &
     ASCII.NUL;  --  /usr/gnat/include/dds/ddsi/ddsi_security_msg.h:35

   DDS_SECURITY_AUTH_VERSION_MAJOR : constant :=
     1;  --  /usr/gnat/include/dds/ddsi/ddsi_security_msg.h:37
   DDS_SECURITY_AUTH_VERSION_MINOR : constant :=
     0;  --  /usr/gnat/include/dds/ddsi/ddsi_security_msg.h:38

   DDS_SECURITY_AUTH_TOKEN_CLASS_ID_BASE : aliased constant String :=
     "DDS:Auth:PKI-DH:" &
     ASCII.NUL;  --  /usr/gnat/include/dds/ddsi/ddsi_security_msg.h:40
   --  unsupported macro: DDS_SECURITY_AUTH_TOKEN_CLASS_ID DDS_SECURITY_AUTH_TOKEN_CLASS_ID_BASE DDSRT_STRINGIFY(DDS_SECURITY_AUTH_VERSION_MAJOR) "." DDSRT_STRINGIFY(DDS_SECURITY_AUTH_VERSION_MINOR)
   --  unsupported macro: DDS_SECURITY_AUTH_REQUEST_TOKEN_CLASS_ID DDS_SECURITY_AUTH_TOKEN_CLASS_ID "+AuthReq"
   --  unsupported macro: DDS_SECURITY_AUTH_HANDSHAKE_REQUEST_TOKEN_ID DDS_SECURITY_AUTH_TOKEN_CLASS_ID "+Req"
   --  unsupported macro: DDS_SECURITY_AUTH_HANDSHAKE_REPLY_TOKEN_ID DDS_SECURITY_AUTH_TOKEN_CLASS_ID "+Reply"
   --  unsupported macro: DDS_SECURITY_AUTH_HANDSHAKE_FINAL_TOKEN_ID DDS_SECURITY_AUTH_TOKEN_CLASS_ID "+Final"

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

   type nn_message_identity_t is record
      source_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      sequence_number : aliased long;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype nn_message_identity_t is nn_message_identity;

   type nn_participant_generic_message_t is record
      message_identity             : aliased nn_message_identity_t;
      related_message_identity     : aliased nn_message_identity_t;
      destination_participant_guid : aliased CycloneDDS.Low_Level
        .dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      destination_endpoint_guid : aliased CycloneDDS.Low_Level
        .dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      source_endpoint_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      message_class_id : Interfaces.C.Strings.chars_ptr;
      message_data     : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h
        .nn_dataholderseq_t;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype nn_participant_generic_message_t is nn_participant_generic_message;

      -- * The arguments are aliased in the resulting message structure.
      -- * This means that the lifecycle of the arguments should be longer
      -- * then that of the message.
      --

   procedure nn_participant_generic_message_init
     (msg    : access nn_participant_generic_message_t;
      wrguid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      wrseq    : long;
      dstpguid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      dsteguid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      srceguid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      classid : Interfaces.C.Strings.chars_ptr;
      mdata   : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h
        .nn_dataholderseq_t;
      rmid : access constant nn_message_identity_t) with
      Import        => True,
      Convention    => C,
      External_Name => "nn_participant_generic_message_init";

      -- * Aliased struct variables will not be freed.
      --

   procedure nn_participant_generic_message_deinit
     (msg : access nn_participant_generic_message_t) with
      Import        => True,
      Convention    => C,
      External_Name => "nn_participant_generic_message_deinit";

      -- * Some struct variables are aliased to the given buffer.
      -- * This means that the lifecycle of the data buffer should be
      -- * longer then that of the message.
      --

   function nn_participant_generic_message_deseralize
     (msg   : access nn_participant_generic_message_t;
      data  : access unsigned_char; len : unsigned_long;
      bswap : Extensions.bool)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "nn_participant_generic_message_deseralize";

   function nn_participant_generic_message_serialize
     (msg  : access constant nn_participant_generic_message_t;
      data : System.Address; len : access unsigned_long)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "nn_participant_generic_message_serialize";

   pserop_participant_generic_message : aliased array
     (size_t) of aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_generic_h
     .pserop with
      Import        => True,
      Convention    => C,
      External_Name => "pserop_participant_generic_message";

   pserop_participant_generic_message_nops : aliased constant unsigned_long with
      Import        => True,
      Convention    => C,
      External_Name => "pserop_participant_generic_message_nops";

   function volatile_secure_data_filter
     (wr      : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      prd     : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader;
      serdata : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h
        .ddsi_serdata)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "volatile_secure_data_filter";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_security_msg_h;
