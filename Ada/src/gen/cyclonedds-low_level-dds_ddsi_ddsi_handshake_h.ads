pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_security_msg_h;

limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_handshake_h is

   type ddsi_handshake is null record;   -- incomplete struct

   type dssi_hsadmin is null record;   -- incomplete struct

   type ddsi_handshake_state is 
     (STATE_HANDSHAKE_IN_PROGRESS,
      STATE_HANDSHAKE_TIMED_OUT,
      STATE_HANDSHAKE_FAILED,
      STATE_HANDSHAKE_PROCESSED,
      STATE_HANDSHAKE_SEND_TOKENS,
      STATE_HANDSHAKE_OK)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_handshake.h:26

   type ddsi_handshake_end_cb_t is access procedure
        (arg1 : access ddsi_handshake;
         arg2 : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant;
         arg3 : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant;
         arg4 : ddsi_handshake_state)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_handshake.h:37

   procedure ddsi_handshake_release (handshake : access ddsi_handshake)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_handshake.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_handshake_release";

   procedure ddsi_handshake_handle_message
     (handshake : access ddsi_handshake;
      pp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant;
      proxypp : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant;
      msg : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_security_msg_h.nn_participant_generic_message)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_handshake.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_handshake_handle_message";

   procedure ddsi_handshake_crypto_tokens_received (handshake : access ddsi_handshake)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_handshake.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_handshake_crypto_tokens_received";

   function ddsi_handshake_get_shared_secret (handshake : access constant ddsi_handshake) return Interfaces.Integer_64  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_handshake.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_handshake_get_shared_secret";

   function ddsi_handshake_get_handle (handshake : access constant ddsi_handshake) return Interfaces.Integer_64  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_handshake.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_handshake_get_handle";

   procedure ddsi_handshake_register
     (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant;
      proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant;
      callback : ddsi_handshake_end_cb_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_handshake.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_handshake_register";

   procedure ddsi_handshake_remove (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant; proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_handshake.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_handshake_remove";

   function ddsi_handshake_find (pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant; proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant) return access ddsi_handshake  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_handshake.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_handshake_find";

   procedure ddsi_handshake_admin_init (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_handshake.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_handshake_admin_init";

   procedure ddsi_handshake_admin_stop (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_handshake.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_handshake_admin_stop";

   procedure ddsi_handshake_admin_deinit (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_handshake.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_handshake_admin_deinit";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_handshake_h;
