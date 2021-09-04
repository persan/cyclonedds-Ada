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
   NN_ENTITYID_UNKNOWN : constant := 16#0#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:37
   NN_ENTITYID_PARTICIPANT : constant := 16#1c1#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:38
   NN_ENTITYID_SEDP_BUILTIN_TOPIC_WRITER : constant := 16#2c2#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:39
   NN_ENTITYID_SEDP_BUILTIN_TOPIC_READER : constant := 16#2c7#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:40
   NN_ENTITYID_SEDP_BUILTIN_PUBLICATIONS_WRITER : constant := 16#3c2#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:41
   NN_ENTITYID_SEDP_BUILTIN_PUBLICATIONS_READER : constant := 16#3c7#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:42
   NN_ENTITYID_SEDP_BUILTIN_SUBSCRIPTIONS_WRITER : constant := 16#4c2#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:43
   NN_ENTITYID_SEDP_BUILTIN_SUBSCRIPTIONS_READER : constant := 16#4c7#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:44
   NN_ENTITYID_SPDP_BUILTIN_PARTICIPANT_WRITER : constant := 16#100c2#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:45
   NN_ENTITYID_SPDP_BUILTIN_PARTICIPANT_READER : constant := 16#100c7#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:46
   NN_ENTITYID_P2P_BUILTIN_PARTICIPANT_MESSAGE_WRITER : constant := 16#200c2#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:47
   NN_ENTITYID_P2P_BUILTIN_PARTICIPANT_MESSAGE_READER : constant := 16#200c7#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:48

   NN_ENTITYID_TL_SVC_BUILTIN_REQUEST_WRITER : constant := 16#300c3#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:50
   NN_ENTITYID_TL_SVC_BUILTIN_REQUEST_READER : constant := 16#300c4#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:51
   NN_ENTITYID_TL_SVC_BUILTIN_REPLY_WRITER : constant := 16#301c3#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:52
   NN_ENTITYID_TL_SVC_BUILTIN_REPLY_READER : constant := 16#301c4#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:53

   NN_ENTITYID_SEDP_BUILTIN_PUBLICATIONS_SECURE_WRITER : constant := 16#ff0003c2#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:55
   NN_ENTITYID_SEDP_BUILTIN_PUBLICATIONS_SECURE_READER : constant := 16#ff0003c7#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:56
   NN_ENTITYID_SEDP_BUILTIN_SUBSCRIPTIONS_SECURE_WRITER : constant := 16#ff0004c2#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:57
   NN_ENTITYID_SEDP_BUILTIN_SUBSCRIPTIONS_SECURE_READER : constant := 16#ff0004c7#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:58
   NN_ENTITYID_P2P_BUILTIN_PARTICIPANT_STATELESS_MESSAGE_WRITER : constant := 16#201c3#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:59
   NN_ENTITYID_P2P_BUILTIN_PARTICIPANT_STATELESS_MESSAGE_READER : constant := 16#201c4#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:60
   NN_ENTITYID_P2P_BUILTIN_PARTICIPANT_MESSAGE_SECURE_WRITER : constant := 16#ff0200c2#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:61
   NN_ENTITYID_P2P_BUILTIN_PARTICIPANT_MESSAGE_SECURE_READER : constant := 16#ff0200c7#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:62
   NN_ENTITYID_P2P_BUILTIN_PARTICIPANT_VOLATILE_SECURE_WRITER : constant := 16#ff0202c3#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:63
   NN_ENTITYID_P2P_BUILTIN_PARTICIPANT_VOLATILE_SECURE_READER : constant := 16#ff0202c4#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:64
   NN_ENTITYID_SPDP_RELIABLE_BUILTIN_PARTICIPANT_SECURE_WRITER : constant := 16#ff0101c2#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:65
   NN_ENTITYID_SPDP_RELIABLE_BUILTIN_PARTICIPANT_SECURE_READER : constant := 16#ff0101c7#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:66

   NN_ENTITYID_SOURCE_MASK : constant := 16#c0#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:68
   NN_ENTITYID_SOURCE_USER : constant := 16#00#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:69
   NN_ENTITYID_SOURCE_BUILTIN : constant := 16#c0#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:70
   NN_ENTITYID_SOURCE_VENDOR : constant := 16#40#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:71
   NN_ENTITYID_KIND_MASK : constant := 16#3f#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:72
   NN_ENTITYID_KIND_WRITER_WITH_KEY : constant := 16#02#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:73
   NN_ENTITYID_KIND_WRITER_NO_KEY : constant := 16#03#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:74
   NN_ENTITYID_KIND_READER_NO_KEY : constant := 16#04#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:75
   NN_ENTITYID_KIND_READER_WITH_KEY : constant := 16#07#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:76

   NN_ENTITYID_KIND_CYCLONE_TOPIC_BUILTIN : constant := 16#0c#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:81
   NN_ENTITYID_KIND_CYCLONE_TOPIC_USER : constant := 16#0d#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:82

   NN_ENTITYID_ALLOCSTEP : constant := 16#100#;  --  /usr/gnat/include/dds/ddsi/q_rtps.h:84

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

   type nn_protocol_version_t is record
      major : aliased unsigned_char;  -- /usr/gnat/include/dds/ddsi/q_rtps.h:24
      minor : aliased unsigned_char;  -- /usr/gnat/include/dds/ddsi/q_rtps.h:24
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/q_rtps.h:25

   subtype seqno_t is long;  -- /usr/gnat/include/dds/ddsi/q_rtps.h:26

  -- predefined entity ids; here viewed as an unsigned int, on the
  --   network as four bytes corresponding to the integer in network byte
  --   order  

  -- Entity kind topic is not defined in the RTPS spec, so the following two
  --   should to be used as vendor specific entities using NN_ENTITYID_SOURCE_VENDOR.
  --   Two entity kinds for built-in and user topics are required, because the
  --   vendor and built-in flags cannot be combined.  

   type cfgst is null record;   -- incomplete struct

   function rtps_config_prep (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; the_cfgst : access cfgst) return int  -- /usr/gnat/include/dds/ddsi/q_rtps.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "rtps_config_prep";

   function rtps_config_open_trace (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv) return int  -- /usr/gnat/include/dds/ddsi/q_rtps.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "rtps_config_open_trace";

   function rtps_init (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv) return int  -- /usr/gnat/include/dds/ddsi/q_rtps.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "rtps_init";

   function rtps_start (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv) return int  -- /usr/gnat/include/dds/ddsi/q_rtps.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "rtps_start";

   procedure rtps_stop (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)  -- /usr/gnat/include/dds/ddsi/q_rtps.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "rtps_stop";

   procedure rtps_fini (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)  -- /usr/gnat/include/dds/ddsi/q_rtps.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "rtps_fini";

   procedure ddsi_set_deafmute
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      deaf : Extensions.bool;
      mute : Extensions.bool;
      reset_after : long)  -- /usr/gnat/include/dds/ddsi/q_rtps.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_set_deafmute";

end CycloneDDS.Low_Level.dds_ddsi_q_rtps_h;
