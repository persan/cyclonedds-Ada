pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");
with CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h;
with CycloneDDS.Low_Level.dds_ddsi_q_sockwaitset_h;
with Interfaces.C.Strings;
limited with CycloneDDS.Low_Level.dds_ddsi_q_thread_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h;
with CycloneDDS.Low_Level.dds_ddsrt_log_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h;
limited with CycloneDDS.Low_Level.dds_ddsc_dds_rhc_h;
with CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h;
with CycloneDDS.Low_Level.dds_ddsrt_fibheap_h;
with CycloneDDS.Low_Level.dds_ddsrt_atomics_h;

limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_addrset_h;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h;
with CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h;
with Interfaces.C.Extensions;

limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_builtin_topic_if_h;
limited with CycloneDDS.Low_Level.dds_ddsrt_hopscotch_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h is

   MAX_XMIT_CONNS : constant :=
     4;  --  /usr/gnat/include/dds/ddsi/ddsi_domaingv.h:150

   MAX_RECV_THREADS : constant :=
     3;  --  /usr/gnat/include/dds/ddsi/ddsi_domaingv.h:222

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

   type nn_xmsgpool is null record;   -- incomplete struct

   type nn_dqueue is null record;   -- incomplete struct

   type nn_reorder is null record;   -- incomplete struct

   type nn_defrag is null record;   -- incomplete struct

   type xeventq is null record;   -- incomplete struct

   type gcreq_queue is null record;   -- incomplete struct

   type entity_index is null record;   -- incomplete struct

   type debug_monitor is null record;   -- incomplete struct

   type dds_security_context is null record;   -- incomplete struct

   type dds_security_match_index is null record;   -- incomplete struct

   type ddsi_hsadmin is null record;   -- incomplete struct

   type config_in_addr_node;
   type config_in_addr_node is record
      loc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      next : access config_in_addr_node;
   end record with
      Convention => C_Pass_By_Copy;

   type recvips_mode is
     (RECVIPS_MODE_ALL, RECVIPS_MODE_ANY, RECVIPS_MODE_PREFERRED,
      RECVIPS_MODE_NONE, RECVIPS_MODE_SOME) with
      Convention => C;

      -- all MC capable interfaces
      -- kernel-default interface
      -- selected interface only
      -- no interfaces at all
      -- explicit list of interfaces; only one requiring recvips
   type recv_thread_mode is (RTM_SINGLE, RTM_MANY) with
      Convention => C;

   type nn_rbufpool is null record;   -- incomplete struct

   type ddsi_domaingv;
   type anon5099_struct5103 is record
      loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      conn : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn_t;
   end record with
      Convention => C_Pass_By_Copy;
   type anon5099_struct5104 is record
      ws : CycloneDDS.Low_Level.dds_ddsi_q_sockwaitset_h.os_sockWaitset;
   end record with
      Convention => C_Pass_By_Copy;
   type anon5099_union5102 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            single : aliased anon5099_struct5103;
         when others =>
            many : aliased anon5099_struct5104;
      end case;
   end record with
      Convention      => C_Pass_By_Copy,
      Unchecked_Union => True;
   type recv_thread_arg is record
      mode   : aliased recv_thread_mode;
      rbpool : access nn_rbufpool;
      gv     : access ddsi_domaingv;
      u      : aliased anon5099_union5102;
   end record with
      Convention => C_Pass_By_Copy;

   type deleted_participants_admin is null record;   -- incomplete struct

   -- Hash tables for participants, readers, writers, proxy
   --     participants, proxy readers and proxy writers by GUID.

   -- Timed events admin
   -- Queue for garbage collection requests
   -- Lease junk
   -- Transport factories & selected factory
   -- Connections for multicast discovery & data, and those that correspond
   --     to the one DDSI participant index that the DDSI2 service uses. The
   --     DCPS participant of DDSI2 itself will be mirrored in a DDSI
   --     participant, and in multi-socket mode that one gets its own
   --     socket.

   -- Connection used for all output (for connectionless transports), this
   --     used to simply be data_conn_uc, but:
   --     - Windows has a quirk that makes multicast delivery within a machine
   --       utterly unreliable if the transmitting socket is bound to 0.0.0.0
   --       (despite all sockets having multicast interfaces set correctly),
   --       but apparently only in the presence of sockets transmitting to the
   --       same multicast group that have been bound to non-0.0.0.0 ...
   --     - At least Fast-RTPS and Connext fail to honour the set of advertised
--       addresses and substitute 127.0.0.1 for the advertised IP address and
   --       expect it to work.
   --     - Fast-RTPS (at least) binds the socket it uses for transmitting
   --       multicasts to non-0.0.0.0
--     So binding to 0.0.0.0 means the unicasts from Fast-RTPS & Connext will
   --     arrive but the multicasts from Cyclone get dropped often on Windows
   --     when trying to interoperate; and binding to the IP address means
   --     unicast messages from the others fail to arrive (because they fail to
   --     arrive).
   --     The only work around is to use a separate socket for sending.  It is
   --     rather sad that Cyclone needs to work around the bugs of the others,
   --     but it seems the only way to get the users what they expect.

   -- TCP listener
   -- In many sockets mode, the receive threads maintain a local array
   --     with participant GUIDs and sockets, participant_set_generation is
   --     used to notify them.

   -- nparticipants is used primarily for limiting the number of active
   --     participants, but also during shutdown to determine when it is
   --     safe to stop the GC thread.

   -- For participants without (some) built-in writers, we fall back to
   --     this participant, which is the first one created with all
   --     built-in writers present.  It MUST be created before any in need
   --     of it pops up!

   -- For tracking (recently) deleted participants
   -- GUID to be used in next call to new_participant; also protected
   --     by privileged_pp_lock

   -- number of selected interfaces.
   -- whether we're using a link-local address (and therefore
   --     only listening to multicasts on that interface)

   -- Addressing: actual own (preferred) IP address, IP address
   --     advertised in discovery messages (so that an external IP address on
   --     a NAT may be advertised), and the DDSI multi-cast address.

   -- Locators
   --    Initial discovery address set, and the current discovery address
   --    set. These are the addresses that SPDP pings get sent to. The
   --    as_disc_group is an FT group (only use first working).
   --

   -- Receive thread. (We can only has one for now, cos of the signal
   --     trigger socket.) Receive buffer pool is per receive thread,
   --     it is only a global variable because it needs to be freed way later
   --     than the receive thread itself terminates

   type recv_thread is record
      name : Interfaces.C.Strings.chars_ptr;
      ts   : access CycloneDDS.Low_Level.dds_ddsi_q_thread_h.thread_state1;
      arg  : aliased recv_thread_arg;
   end record with
      Convention => C_Pass_By_Copy;

      -- Listener thread for connection based transports
      -- Flag cleared when stopping (receive threads). FIXME.
      -- Start time of the DDSI2 service, for logging relative time stamps,
      --     should I ever so desire.

      -- Default QoSs for participant, readers and writers (needed for
      --     eliminating default values in outgoing discovery packets, and for
      --     supplying values for missing QoS settings in incoming discovery
      --     packets); plus the actual QoSs needed for the builtin
      --     endpoints.

      -- SPDP packets get very special treatment (they're the only packets
      --     we accept from writers we don't know) and have their very own
   --     do-nothing defragmentation and reordering thingummies, as well as a
      --     global mutex to in lieu of the proxy writer lock.

      -- Built-in stuff other than SPDP gets funneled through the builtins
      --     delivery queue; currently just SEDP and PMD

      -- Application data gets its own delivery queue
      -- Transmit side: pools for the serializer & transmit messages and a
      --     transmit queue

      -- key = participant GUID
      -- key = endpoint GUID
      -- key = endpoint GUID
      -- key = topic GUID
      -- participant message data
      -- TypeLookup service request, no key
      -- TypeLookup service reply, no key
      -- key = participant GUID
      -- key = endpoint GUID
      -- key = endpoint GUID
      -- participant message data
      -- participant generic message
      -- participant generic message
   type nn_xpack is null record;   -- incomplete struct

   -- File for dumping captured packets, NULL if disabled
   type nn_group_membership is null record;   -- incomplete struct

   type anon4521_array5109 is
     array
       (0 ..
            3) of access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h
       .ddsi_tran_conn_t;
   type anon4521_array5110 is
     array
       (0 ..
            3) of aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
       .ddsi_xlocator_t;
   type anon4521_array5115 is
     array
       (0 ..
            3) of aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h
       .nn_interface;
   type anon4521_array5120 is array (0 .. 2) of aliased recv_thread;
   type ddsi_domaingv is record
      c_terminate      : aliased int;
      deaf             : aliased int;
      mute             : aliased int;
      logconfig : aliased CycloneDDS.Low_Level.dds_ddsrt_log_h.ddsrt_log_cfg_t;
      config : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h.ddsi_config;
      m_tkmap : access CycloneDDS.Low_Level.dds_ddsc_dds_rhc_h.ddsi_tkmap;
      the_entity_index : access entity_index;
      xevents          : access xeventq;
      the_gcreq_queue  : access gcreq_queue;
      leaseheap_lock   : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_mutex_t;
      leaseheap : aliased CycloneDDS.Low_Level.dds_ddsrt_fibheap_h
        .ddsrt_fibheap_t;
      ddsi_tran_factories : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h
        .ddsi_tran_factory;
      m_factory : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h
        .ddsi_tran_factory;
      disc_conn_mc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h
        .ddsi_tran_conn_t;
      data_conn_mc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h
        .ddsi_tran_conn_t;
      disc_conn_uc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h
        .ddsi_tran_conn_t;
      data_conn_uc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h
        .ddsi_tran_conn_t;
      xmit_conns     : anon4521_array5109;
      intf_xlocators : aliased anon4521_array5110;
      listener       : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h
        .ddsi_tran_listener_t;
      participant_set_generation : aliased CycloneDDS.Low_Level
        .dds_ddsrt_atomics_h
        .ddsrt_atomic_uint32_t;
      participant_set_lock : aliased CycloneDDS.Low_Level
        .dds_ddsrt_sync_posix_h
        .ddsrt_mutex_t;
      participant_set_cond : aliased CycloneDDS.Low_Level
        .dds_ddsrt_sync_posix_h
        .ddsrt_cond_t;
      nparticipants : aliased unsigned;
      privileged_pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h
        .participant;
      privileged_pp_lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_mutex_t;
      deleted_participants : access deleted_participants_admin;
      ppguid_base          : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      n_interfaces          : aliased int;
      interfaces            : aliased anon4521_array5115;
      using_link_local_intf : aliased int;
      the_recvips_mode      : aliased recvips_mode;
      recvips               : access config_in_addr_node;
      extmask : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      loc_spdp_mc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      loc_meta_mc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      loc_meta_uc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      loc_default_mc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      loc_default_uc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      as_disc : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;
      as_disc_group : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;
      lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;
      n_recv_threads : aliased unsigned;
      recv_threads   : aliased anon4521_array5120;
      listen_ts      : access CycloneDDS.Low_Level.dds_ddsi_q_thread_h
        .thread_state1;
      rtps_keepgoing : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h
        .ddsrt_atomic_uint32_t;
      tstart : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      default_local_plist_pp : aliased CycloneDDS.Low_Level
        .dds_ddsi_ddsi_plist_h
        .ddsi_plist_t;
      spdp_endpoint_xqos : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_qos_t;
      builtin_endpoint_xqos_rd : aliased CycloneDDS.Low_Level
        .dds_ddsi_ddsi_xqos_h
        .dds_qos_t;
      builtin_endpoint_xqos_wr : aliased CycloneDDS.Low_Level
        .dds_ddsi_ddsi_xqos_h
        .dds_qos_t;
      builtin_secure_volatile_xqos_rd : aliased CycloneDDS.Low_Level
        .dds_ddsi_ddsi_xqos_h
        .dds_qos_t;
      builtin_secure_volatile_xqos_wr : aliased CycloneDDS.Low_Level
        .dds_ddsi_ddsi_xqos_h
        .dds_qos_t;
      builtin_stateless_xqos_rd : aliased CycloneDDS.Low_Level
        .dds_ddsi_ddsi_xqos_h
        .dds_qos_t;
      builtin_stateless_xqos_wr : aliased CycloneDDS.Low_Level
        .dds_ddsi_ddsi_xqos_h
        .dds_qos_t;
      spdp_lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_mutex_t;
      spdp_defrag       : access nn_defrag;
      spdp_reorder      : access nn_reorder;
      builtins_dqueue   : access nn_dqueue;
      debmon            : access debug_monitor;
      networkQueueId    : aliased unsigned;
      channel_reader_ts : access CycloneDDS.Low_Level.dds_ddsi_q_thread_h
        .thread_state1;
      user_dqueue : access nn_dqueue;
      serpool     : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h
        .serdatapool;
      xmsgpool  : access nn_xmsgpool;
      spdp_type : access CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h
        .ddsi_sertype;
      sedp_reader_type : access CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h
        .ddsi_sertype;
      sedp_writer_type : access CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h
        .ddsi_sertype;
      sedp_topic_type : access CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h
        .ddsi_sertype;
      pmd_type : access CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h
        .ddsi_sertype;
      spdp_secure_type : access CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h
        .ddsi_sertype;
      sedp_reader_secure_type : access CycloneDDS.Low_Level
        .dds_ddsi_ddsi_sertype_h
        .ddsi_sertype;
      sedp_writer_secure_type : access CycloneDDS.Low_Level
        .dds_ddsi_ddsi_sertype_h
        .ddsi_sertype;
      pmd_secure_type : access CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h
        .ddsi_sertype;
      pgm_stateless_type : access CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h
        .ddsi_sertype;
      pgm_volatile_type : access CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h
        .ddsi_sertype;
      sendq_lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_mutex_t;
      sendq_cond : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_cond_t;
      sendq_length       : aliased unsigned;
      sendq_head         : access nn_xpack;
      sendq_tail         : access nn_xpack;
      sendq_stop         : aliased int;
      sendq_ts : access CycloneDDS.Low_Level.dds_ddsi_q_thread_h.thread_state1;
      sendq_running      : aliased Extensions.bool;
      sendq_running_lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_mutex_t;
      pcap_fp   : access CycloneDDS.Low_Level.bits_types_FILE_h.FILE;
      pcap_lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_mutex_t;
      builtin_topic_interface : access CycloneDDS.Low_Level
        .dds_ddsi_ddsi_builtin_topic_if_h
        .ddsi_builtin_topic_interface;
      mship         : access nn_group_membership;
      sertypes_lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_mutex_t;
      sertypes : access CycloneDDS.Low_Level.dds_ddsrt_hopscotch_h.ddsrt_hh;
      new_topic_lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_mutex_t;
      new_topic_cond : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_cond_t;
      new_topic_version          : aliased unsigned;
      security_context           : access dds_security_context;
      hsadmin                    : access ddsi_hsadmin;
      handshake_include_optional : aliased Extensions.bool;
   end record with
      Convention => C_Pass_By_Copy;

      -- security globals
end CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
