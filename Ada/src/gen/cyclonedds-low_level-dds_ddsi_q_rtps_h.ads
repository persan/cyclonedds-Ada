pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;


limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
with Interfaces.C.Extensions;

package CycloneDDS.Low_Level.dds_ddsi_q_rtps_h is

   --  unsupported macro: MAX_SEQ_NUMBER INT64_MAX
   --  arg-macro: function PGUIDPREFIX (gp)
   --    return gp).u(0), (gp).u(1), (gp).u(2;
   --  arg-macro: procedure PGUID (g)
   --    PGUIDPREFIX ((g).prefix), (g).entityid.u
   --  unsupported macro: PGUIDPREFIXFMT "%" PRIx32 ":%" PRIx32 ":%" PRIx32
   --  unsupported macro: PGUIDFMT PGUIDPREFIXFMT ":%" PRIx32
   NN_ENTITYID_UNKNOWN : constant := 16#0#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:37
   NN_ENTITYID_PARTICIPANT : constant := 16#1c1#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:38
   NN_ENTITYID_SEDP_BUILTIN_TOPIC_WRITER : constant := 16#2c2#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:39
   NN_ENTITYID_SEDP_BUILTIN_TOPIC_READER : constant := 16#2c7#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:40
   NN_ENTITYID_SEDP_BUILTIN_PUBLICATIONS_WRITER : constant := 16#3c2#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:41
   NN_ENTITYID_SEDP_BUILTIN_PUBLICATIONS_READER : constant := 16#3c7#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:42
   NN_ENTITYID_SEDP_BUILTIN_SUBSCRIPTIONS_WRITER : constant := 16#4c2#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:43
   NN_ENTITYID_SEDP_BUILTIN_SUBSCRIPTIONS_READER : constant := 16#4c7#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:44
   NN_ENTITYID_SPDP_BUILTIN_PARTICIPANT_WRITER : constant := 16#100c2#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:45
   NN_ENTITYID_SPDP_BUILTIN_PARTICIPANT_READER : constant := 16#100c7#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:46
   NN_ENTITYID_P2P_BUILTIN_PARTICIPANT_MESSAGE_WRITER : constant := 16#200c2#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:47
   NN_ENTITYID_P2P_BUILTIN_PARTICIPANT_MESSAGE_READER : constant := 16#200c7#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:48

   NN_ENTITYID_TL_SVC_BUILTIN_REQUEST_WRITER : constant := 16#300c3#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:50
   NN_ENTITYID_TL_SVC_BUILTIN_REQUEST_READER : constant := 16#300c4#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:51
   NN_ENTITYID_TL_SVC_BUILTIN_REPLY_WRITER : constant := 16#301c3#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:52
   NN_ENTITYID_TL_SVC_BUILTIN_REPLY_READER : constant := 16#301c4#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:53

   NN_ENTITYID_SEDP_BUILTIN_PUBLICATIONS_SECURE_WRITER : constant := 16#ff0003c2#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:55
   NN_ENTITYID_SEDP_BUILTIN_PUBLICATIONS_SECURE_READER : constant := 16#ff0003c7#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:56
   NN_ENTITYID_SEDP_BUILTIN_SUBSCRIPTIONS_SECURE_WRITER : constant := 16#ff0004c2#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:57
   NN_ENTITYID_SEDP_BUILTIN_SUBSCRIPTIONS_SECURE_READER : constant := 16#ff0004c7#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:58
   NN_ENTITYID_P2P_BUILTIN_PARTICIPANT_STATELESS_MESSAGE_WRITER : constant := 16#201c3#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:59
   NN_ENTITYID_P2P_BUILTIN_PARTICIPANT_STATELESS_MESSAGE_READER : constant := 16#201c4#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:60
   NN_ENTITYID_P2P_BUILTIN_PARTICIPANT_MESSAGE_SECURE_WRITER : constant := 16#ff0200c2#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:61
   NN_ENTITYID_P2P_BUILTIN_PARTICIPANT_MESSAGE_SECURE_READER : constant := 16#ff0200c7#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:62
   NN_ENTITYID_P2P_BUILTIN_PARTICIPANT_VOLATILE_SECURE_WRITER : constant := 16#ff0202c3#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:63
   NN_ENTITYID_P2P_BUILTIN_PARTICIPANT_VOLATILE_SECURE_READER : constant := 16#ff0202c4#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:64
   NN_ENTITYID_SPDP_RELIABLE_BUILTIN_PARTICIPANT_SECURE_WRITER : constant := 16#ff0101c2#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:65
   NN_ENTITYID_SPDP_RELIABLE_BUILTIN_PARTICIPANT_SECURE_READER : constant := 16#ff0101c7#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:66

   NN_ENTITYID_SOURCE_MASK : constant := 16#c0#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:68
   NN_ENTITYID_SOURCE_USER : constant := 16#00#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:69
   NN_ENTITYID_SOURCE_BUILTIN : constant := 16#c0#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:70
   NN_ENTITYID_SOURCE_VENDOR : constant := 16#40#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:71
   NN_ENTITYID_KIND_MASK : constant := 16#3f#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:72
   NN_ENTITYID_KIND_WRITER_WITH_KEY : constant := 16#02#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:73
   NN_ENTITYID_KIND_WRITER_NO_KEY : constant := 16#03#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:74
   NN_ENTITYID_KIND_READER_NO_KEY : constant := 16#04#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:75
   NN_ENTITYID_KIND_READER_WITH_KEY : constant := 16#07#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:76

   NN_ENTITYID_KIND_CYCLONE_TOPIC_BUILTIN : constant := 16#0c#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:81
   NN_ENTITYID_KIND_CYCLONE_TOPIC_USER : constant := 16#0d#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:82

   NN_ENTITYID_ALLOCSTEP : constant := 16#100#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:84

   type nn_protocol_version_t is record
      major : aliased Interfaces.Unsigned_8;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:24
      minor : aliased Interfaces.Unsigned_8;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:24
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:25

   subtype seqno_t is Interfaces.Integer_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:26

   type cfgst is null record;   -- incomplete struct

   function rtps_config_prep (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; the_cfgst : access cfgst) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "rtps_config_prep";

   function rtps_config_open_trace (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "rtps_config_open_trace";

   function rtps_init (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "rtps_init";

   function rtps_start (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "rtps_start";

   procedure rtps_stop (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "rtps_stop";

   procedure rtps_fini (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "rtps_fini";

   procedure ddsi_set_deafmute
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      deaf : Extensions.bool;
      mute : Extensions.bool;
      reset_after : Interfaces.Integer_64)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_rtps.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_set_deafmute";

end CycloneDDS.Low_Level.dds_ddsi_q_rtps_h;