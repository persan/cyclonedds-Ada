pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h;
with Interfaces.C.Extensions;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_security_msg_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_radmin_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_security_exchange_h is

   GMCLASSID_SECURITY_PARTICIPANT_CRYPTO_TOKENS : aliased constant String := "dds.sec.participant_crypto_tokens" & ASCII.NUL;  --  /usr/gnat/include/dds/ddsi/ddsi_security_exchange.h:29
   GMCLASSID_SECURITY_DATAWRITER_CRYPTO_TOKENS : aliased constant String := "dds.sec.datawriter_crypto_tokens" & ASCII.NUL;  --  /usr/gnat/include/dds/ddsi/ddsi_security_exchange.h:30
   GMCLASSID_SECURITY_DATAREADER_CRYPTO_TOKENS : aliased constant String := "dds.sec.datareader_crypto_tokens" & ASCII.NUL;  --  /usr/gnat/include/dds/ddsi/ddsi_security_exchange.h:31

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

   function write_auth_handshake_message
     (pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant;
      proxypp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant;
      mdata : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_dataholderseq_t;
      request : Extensions.bool;
      related_message_id : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_security_msg_h.nn_message_identity_t) return Extensions.bool  -- /usr/gnat/include/dds/ddsi/ddsi_security_exchange.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "write_auth_handshake_message";

   procedure handle_auth_handshake_message
     (rst : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.receiver_state;
      wr_entity_id : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t;
      sample : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata)  -- /usr/gnat/include/dds/ddsi/ddsi_security_exchange.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "handle_auth_handshake_message";

   procedure handle_crypto_exchange_message (rst : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.receiver_state; sample : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata)  -- /usr/gnat/include/dds/ddsi/ddsi_security_exchange.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "handle_crypto_exchange_message";

   procedure auth_get_serialized_participant_data (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant; seq : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.ddsi_octetseq_t)  -- /usr/gnat/include/dds/ddsi/ddsi_security_exchange.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "auth_get_serialized_participant_data";

   function write_crypto_participant_tokens
     (pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant;
      proxypp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant;
      tokens : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_dataholderseq_t) return Extensions.bool  -- /usr/gnat/include/dds/ddsi/ddsi_security_exchange.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "write_crypto_participant_tokens";

   function write_crypto_writer_tokens
     (wr : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      prd : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader;
      tokens : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_dataholderseq_t) return Extensions.bool  -- /usr/gnat/include/dds/ddsi/ddsi_security_exchange.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "write_crypto_writer_tokens";

   function write_crypto_reader_tokens
     (rd : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader;
      pwr : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_writer;
      tokens : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_dataholderseq_t) return Extensions.bool  -- /usr/gnat/include/dds/ddsi/ddsi_security_exchange.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "write_crypto_reader_tokens";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_security_exchange_h;
