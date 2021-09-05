pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_q_radmin_h;
with System;

with Interfaces.C.Extensions;
with CycloneDDS.Low_Level.dds_ddsrt_avl_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;

with CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h;
with CycloneDDS.Low_Level.dds_ddsi_q_rtps_h;
with CycloneDDS.Low_Level.dds_ddsi_q_protocol_h;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;
with CycloneDDS.Low_Level.dds_ddsi_q_lat_estim_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_xevent_h;
with Interfaces.C.Strings;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h;
with CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h;
with CycloneDDS.Low_Level.dds_ddsi_q_inverse_uint32_set_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h;
with CycloneDDS.Low_Level.dds_ddsrt_fibheap_h;
with CycloneDDS.Low_Level.dds_ddsrt_atomics_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_security_omg_h;
with CycloneDDS.Low_Level.dds_ddsi_q_hbcontrol_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_addrset_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_whc_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_lease_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_rhc_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h;
limited with CycloneDDS.Low_Level.dds_ddsrt_log_h;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;

package CycloneDDS.Low_Level.dds_ddsi_q_entity_h is

   DPG_LOCAL  : constant := 1;  --  /usr/gnat/include/dds/ddsi/q_entity.h:567
   DPG_REMOTE : constant := 2;  --  /usr/gnat/include/dds/ddsi/q_entity.h:568

   RTPS_PF_NO_BUILTIN_READERS : constant :=
     1;  --  /usr/gnat/include/dds/ddsi/q_entity.h:624

   RTPS_PF_NO_BUILTIN_WRITERS : constant :=
     2;  --  /usr/gnat/include/dds/ddsi/q_entity.h:629

   RTPS_PF_PRIVILEGED_PP : constant :=
     4;  --  /usr/gnat/include/dds/ddsi/q_entity.h:633

   RTPS_PF_IS_DDSI2_PP : constant :=
     8;  --  /usr/gnat/include/dds/ddsi/q_entity.h:635

   RTPS_PF_ONLY_LOCAL : constant :=
     16;  --  /usr/gnat/include/dds/ddsi/q_entity.h:637

   CF_IMPLICITLY_CREATED_PROXYPP : constant :=
     (2**0);  --  /usr/gnat/include/dds/ddsi/q_entity.h:777

   CF_PARTICIPANT_IS_DDSI2 : constant :=
     (2**1);  --  /usr/gnat/include/dds/ddsi/q_entity.h:780

   CF_PROXYPP_NO_SPDP : constant :=
     (2**2);  --  /usr/gnat/include/dds/ddsi/q_entity.h:782

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

   type ddsi2direct_directread_cb_t is access procedure
     (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h
        .nn_rsample_info;
      arg2 : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.nn_rdata;
      arg3 : System.Address) with
      Convention => C;

   type entity_kind is
     (EK_PARTICIPANT, EK_PROXY_PARTICIPANT, EK_TOPIC, EK_WRITER,
      EK_PROXY_WRITER, EK_READER, EK_PROXY_READER) with
      Convention => C;

      -- Liveliness changed is more complicated than just add/remove. Encode the event
      --   in status_cb_data_t::extra and ignore status_cb_data_t::add

   type liveliness_changed_data_extra is
     (LIVELINESS_CHANGED_ADD_ALIVE, LIVELINESS_CHANGED_ADD_NOT_ALIVE,
      LIVELINESS_CHANGED_REMOVE_NOT_ALIVE, LIVELINESS_CHANGED_REMOVE_ALIVE,
      LIVELINESS_CHANGED_ALIVE_TO_NOT_ALIVE,
      LIVELINESS_CHANGED_NOT_ALIVE_TO_ALIVE) with
      Convention => C;

   type status_cb_data_t is record
      raw_status_id : aliased int;
      extra         : aliased unsigned;
      handle        : aliased unsigned_long;
      add           : aliased Extensions.bool;
   end record with
      Convention => C_Pass_By_Copy;

      --  <>subtype status_cb_data_t is status_cb_data;

   type status_cb_t is access procedure
     (arg1 : System.Address; arg2 : access constant status_cb_data_t) with
      Convention => C;

   type prd_wr_match is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;
      wr_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      crypto_handle : aliased long;
   end record with
      Convention => C_Pass_By_Copy;

   type rd_pwr_match is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;
      pwr_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      pwr_alive        : Extensions.Unsigned_1;
      pwr_alive_vclock : aliased unsigned;
      ssm_mc_loc       : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_xlocator_t;
      ssm_src_loc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_xlocator_t;
      crypto_handle : aliased long;
   end record with
      Convention => C_Pass_By_Copy,
      --  Pack => True,
      Alignment => 8;

      -- tracks pwr's alive state
      -- used to ensure progress
   type wr_rd_match is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;
      rd_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
   end record with
      Convention => C_Pass_By_Copy;

   type rd_wr_match is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;
      wr_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      wr_alive        : Extensions.Unsigned_1;
      wr_alive_vclock : aliased unsigned;
   end record with
      Convention => C_Pass_By_Copy,
      --  Pack => True,
      Alignment => 8;

      -- tracks wr's alive state
      -- used to ensure progress
   type wr_prd_match is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;
      prd_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      assumed_in_sync                           : Extensions.Unsigned_1;
      has_replied_to_hb                         : Extensions.Unsigned_1;
      all_have_replied_to_hb                    : Extensions.Unsigned_1;
      is_reliable                               : Extensions.Unsigned_1;
      min_seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      max_seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      last_seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      num_reliable_readers_where_seq_equals_max : aliased unsigned;
      arbitrary_unacked_reader                  : aliased CycloneDDS.Low_Level
        .dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      prev_acknack : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h
        .nn_count_t;
      prev_nackfrag : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h
        .nn_count_t;
      t_acknack_accepted : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h
        .ddsrt_etime_t;
      t_nackfrag_accepted : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h
        .ddsrt_etime_t;
      hb_to_ack_latency : aliased CycloneDDS.Low_Level.dds_ddsi_q_lat_estim_h
        .nn_lat_estim;
      hb_to_ack_latency_tlastlog : aliased CycloneDDS.Low_Level
        .dds_ddsrt_time_h
        .ddsrt_wctime_t;
      non_responsive_count : aliased unsigned;
      rexmit_requests      : aliased unsigned;
      crypto_handle        : aliased long;
   end record with
      Convention => C_Pass_By_Copy,
      --  Pack => True,
      Alignment => 8;

      -- guid of the proxy reader
      -- set to 1 upon receipt of ack not nack'ing msgs
      -- we must keep sending HBs until all readers have this set
      -- true iff 'has_replied_to_hb' for all readers in subtree
      -- true iff reliable proxy reader
      -- smallest ack'd seq nr in subtree
      -- sort-of highest ack'd seq nr in subtree (see augment function)
      -- highest acknowledged seq nr
      -- highest seq send to this reader used when filter is applied
      -- latest accepted acknack sequence number
      -- latest accepted nackfrag sequence number
      -- (local) time an acknack was last accepted
      -- (local) time a nackfrag was last accepted
   type pwr_rd_match_syncstate is
     (PRMSS_SYNC, PRMSS_TLCATCHUP, PRMSS_OUT_OF_SYNC) with
      Convention => C;

      -- in sync with proxy writer, has caught up with historical data
      -- in sync with proxy writer, pwr + readers still catching up on historical data
      -- not in sync with proxy writer
      -- last seq for which we requested a retransmit
   type last_nack_summary is record
      seq_end_p1  : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      seq_base    : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      frag_end_p1 : aliased unsigned;
      frag_base   : aliased unsigned;
   end record with
      Convention => C_Pass_By_Copy;

      -- last fragnum of seq_last_nack for which requested a retransmit
      -- most recent acknack sequence number
      -- latest accepted heartbeat (see also add_proxy_writer_to_reader)
      -- time of most recent heartbeat that rescheduled the ack event
      -- (local) time a heartbeat was last accepted
      -- (local) time we last sent a NACK
      -- (local) time we last sent any ACKNACK
      -- last known sequence number from this writer
      -- entry in xevent queue for sending acknacks
      -- whether in sync with the proxy writer
      -- set on receipt of HEARTBEAT with FINAL clear, cleared on sending an ACKNACK
      -- set when a HEARTBEAT has been received since the last ACKNACK
      -- set when a HEARTBEATFRAG has been received since the last ACKNACK
      -- set on receipt of a directed heartbeat, cleared on sending an ACKNACK
      -- set when the most recent NACK sent was because of the NackDelay
      -- when seq >= end_of_tl_seq, it's in sync, =0 when not tl
      -- can be done (mostly) per proxy writer, but that is harder; only when state=OUT_OF_SYNC
   type anon5772_struct6593 is record
      end_of_tl_seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      reorder       : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .nn_reorder;
   end record with
      Convention => C_Pass_By_Copy;
   type anon5772_union6592 (discr : unsigned := 0) is record
      case discr is
         when others =>
            not_in_sync : aliased anon5772_struct6593;
      end case;
   end record with
      Convention      => C_Pass_By_Copy,
      Unchecked_Union => True;
   type pwr_rd_match is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;
      rd_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      tcreate : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      count : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_count_t;
      prev_heartbeat : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h
        .nn_count_t;
      hb_timestamp : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h
        .ddsrt_wctime_t;
      t_heartbeat_accepted : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h
        .ddsrt_etime_t;
      t_last_nack : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h
        .ddsrt_mtime_t;
      t_last_ack : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      last_seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      last_nack               : aliased last_nack_summary;
      acknack_xevent : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.xevent;
      in_sync                 : aliased pwr_rd_match_syncstate;
      ack_requested           : Extensions.Unsigned_1;
      heartbeat_since_ack     : Extensions.Unsigned_1;
      heartbeatfrag_since_ack : Extensions.Unsigned_1;
      directed_heartbeat      : Extensions.Unsigned_1;
      nack_sent_on_nackdelay  : Extensions.Unsigned_1;
      filtered                : Extensions.Unsigned_1;
      u                       : aliased anon5772_union6592;
      crypto_handle           : aliased long;
   end record with
      Convention => C_Pass_By_Copy,
      --  Pack => True,
      Alignment => 8;

   type entity_common is record
      kind    : aliased entity_kind;
      guid    : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      tupdate : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      name    : Interfaces.C.Strings.chars_ptr;
      iid     : aliased unsigned_long;
      tk      : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h
        .ddsi_tkmap_instance;
      lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;
      onlylocal            : aliased Extensions.bool;
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      all_entities_avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h
        .ddsrt_avl_node_t;
      qos_lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_mutex_t;
   end record with
      Convention => C_Pass_By_Copy;

      -- timestamp of last update
      -- QoS changes always lock the entity itself, and additionally
      --     (and within the scope of the entity lock) acquire qos_lock
      --     while manipulating the QoS.  So any thread that needs to read
      --     the QoS without acquiring the entity's lock can still do so
      --     (e.g., the materialisation of samples for built-in topics
      --     when connecting a reader to a writer for a built-in topic).
      --     qos_lock lock order across entities in is in increasing
      --     order of entity addresses cast to uintptr_t.

   type reader;
   type local_reader_ary is record
      rdary_lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_mutex_t;
      valid       : Extensions.Unsigned_1;
      fastpath_ok : Extensions.Unsigned_1;
      n_readers   : aliased unsigned;
      rdary       : System.Address;
   end record with
      Convention => C_Pass_By_Copy,
      --  Pack => True,
      Alignment => 8;

      -- always true until (proxy-)writer is being deleted; !valid => !fastpath_ok
      -- if not ok, fall back to using GUIDs (gives access to the reader-writer match data for handling readers that bumped into resource limits, hence can flip-flop, unlike "valid")
      -- for efficient delivery, null-pointer terminated, grouped by topic
   type avail_entityid_set is record
      x : aliased CycloneDDS.Low_Level.dds_ddsi_q_inverse_uint32_set_h
        .inverse_uint32_set;
   end record with
      Convention => C_Pass_By_Copy;

   type participant is record
      e              : aliased entity_common;
      lease_duration : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h
        .dds_duration_t;
      bes               : aliased unsigned;
      is_ddsi2_pp       : Extensions.Unsigned_1;
      plist : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist_t;
      spdp_xevent : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.xevent;
      pmd_update_xevent : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h
        .xevent;
      m_locator : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_locator_t;
      m_conn : CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn_t;
      avail_entityids : aliased avail_entityid_set;
      refc_lock       : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_mutex_t;
      user_refc        : aliased int;
      builtin_refc     : aliased int;
      builtins_deleted : aliased int;
      ldur_auto_wr     : aliased CycloneDDS.Low_Level.dds_ddsrt_fibheap_h
        .ddsrt_fibheap_t;
      minl_man : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h
        .ddsrt_atomic_voidp_t;
      leaseheap_man : aliased CycloneDDS.Low_Level.dds_ddsrt_fibheap_h
        .ddsrt_fibheap_t;
      sec_attr : access CycloneDDS.Low_Level.dds_ddsi_ddsi_security_omg_h
        .participant_sec_attributes;
      security_info : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h
        .nn_security_info_t;
   end record with
      Convention => C_Pass_By_Copy,
      --  Pack => True,
      Alignment => 8;

      -- constant
      -- built-in endpoint set
      -- true for the "federation leader", the ddsi2 participant itself in OSPL; FIXME: probably should use this for broker mode as well ...
      -- settings/QoS for this participant
      -- timed event for periodically publishing SPDP
      -- timed event for periodically publishing ParticipantMessageData
      -- this is always a unicast address, it is set if it is in the many unicast mode
      -- this is connection to m_locator, if it is set, this is used
      -- available entity ids [e.lock]
      -- number of non-built-in endpoints in this participant [refc_lock]
      -- number of built-in endpoints in this participant [refc_lock]
      -- whether deletion of built-in endpoints has been initiated [refc_lock]
      -- Heap that contains lease duration for writers with automatic liveliness in this participant
      -- clone of min(leaseheap_man)
      -- keeps leases for this participant's writers (with liveliness manual-by-participant)
      -- key for this topic definition (MD5 hash of the type_id and qos
      -- type identifier for this topic
      -- contains also the topic name and type name
      -- ref to (shared) topic definition, protected by e.qos_lock
      -- backref to the participant
   type endpoint_common is record
      pp         : access participant;
      group_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
   end record with
      Convention => C_Pass_By_Copy;

      -- FIXME: currently only local endpoints; proxies use entity_common + proxy_endpoint common
   type generic_endpoint is record
      e : aliased entity_common;
      c : aliased endpoint_common;
   end record with
      Convention => C_Pass_By_Copy;

   type writer_state is
     (WRST_OPERATIONAL, WRST_INTERRUPT, WRST_LINGERING, WRST_DELETING) with
      Convention => C;

      -- normal situation
   -- will be deleted, unblock throttle_writer but do not do anything further
   -- writer deletion has been requested but still has unack'd data
   -- writer is actually being deleted (removed from hash table)
   subtype seq_xmit_t is
     CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint64_t;

   type ldur_fhnode is record
      heapnode : aliased CycloneDDS.Low_Level.dds_ddsrt_fibheap_h
        .ddsrt_fibheap_node_t;
      ldur : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;
   end record with
      Convention => C_Pass_By_Copy;

   type writer is record
      e                : aliased entity_common;
      c                : aliased endpoint_common;
      status_cb        : status_cb_t;
      status_cb_entity : System.Address;
      throttle_cond    : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h
        .ddsrt_cond_t;
      seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      cs_seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      seq_xmit                     : aliased seq_xmit_t;
      min_local_readers_reject_seq : aliased CycloneDDS.Low_Level
        .dds_ddsi_q_rtps_h
        .seqno_t;
      hbcount : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_count_t;
      hbfragcount : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h
        .nn_count_t;
      throttling    : aliased int;
      the_hbcontrol : aliased CycloneDDS.Low_Level.dds_ddsi_q_hbcontrol_h
        .hbcontrol;
      xqos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos_t;
      state                     : aliased writer_state;
      reliable                  : Extensions.Unsigned_1;
      handle_as_transient_local : Extensions.Unsigned_1;
      force_md5_keyhash         : Extensions.Unsigned_1;
      retransmitting            : Extensions.Unsigned_1;
      alive                     : Extensions.Unsigned_1;
      test_ignore_acknack       : Extensions.Unsigned_1;
      test_suppress_retransmit  : Extensions.Unsigned_1;
      test_suppress_heartbeat   : Extensions.Unsigned_1;
      test_drop_outgoing_data   : Extensions.Unsigned_1;
      supports_ssm              : Extensions.Unsigned_1;
      ssm_as : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;
      alive_vclock              : aliased unsigned;
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h
        .ddsi_sertype;
      as : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;
      as_group : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;
      heartbeat_xevent : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h
        .xevent;
      lease_duration : access ldur_fhnode;
      the_whc        : access CycloneDDS.Low_Level.dds_ddsi_q_whc_h.whc;
      whc_low        : aliased unsigned;
      whc_high       : aliased unsigned;
      t_rexmit_start : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h
        .ddsrt_etime_t;
      t_rexmit_end : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h
        .ddsrt_etime_t;
      t_whc_high_upd : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h
        .ddsrt_etime_t;
      init_burst_size_limit          : aliased unsigned;
      rexmit_burst_size_limit        : aliased unsigned;
      num_readers                    : aliased unsigned;
      num_reliable_readers           : aliased unsigned;
      num_readers_requesting_keyhash : aliased unsigned;
      readers : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_tree_t;
      local_readers : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h
        .ddsrt_avl_tree_t;
      network_partition : access constant CycloneDDS.Low_Level
        .dds_ddsi_ddsi_config_h
        .ddsi_config_networkpartition_listelem;
      num_acks_received  : aliased unsigned;
      num_nacks_received : aliased unsigned;
      throttle_count     : aliased unsigned;
      throttle_tracing   : aliased unsigned;
      rexmit_count       : aliased unsigned;
      rexmit_lost_count  : aliased unsigned;
      rexmit_bytes       : aliased unsigned_long;
      time_throttled     : aliased unsigned_long;
      time_retransmit    : aliased unsigned_long;
      evq : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.xeventq;
      rdary              : aliased local_reader_ary;
      the_lease : access CycloneDDS.Low_Level.dds_ddsi_q_lease_h.lease;
      sec_attr : access CycloneDDS.Low_Level.dds_ddsi_ddsi_security_omg_h
        .writer_sec_attributes;
   end record with
      Convention => C_Pass_By_Copy,
      --  Pack => True,
      Alignment => 8;

      -- used to trigger a transmit thread blocked in throttle_writer() or wait_for_acks()
      -- last sequence number (transmitted seqs are 1 ... seq)
      -- 1st seq in coherent set (or 0)
      -- last sequence number actually transmitted
      -- mimum of local_readers->last_deliv_seq
      -- last hb seq number
      -- last hb frag seq number
      -- non-zero when some thread is waiting for the WHC to shrink
      -- controls heartbeat timing, piggybacking
      -- iff 1, writer is reliable <=> heartbeat_xevent != NULL
      -- controls whether data is retained in WHC
      -- iff 1, when keyhash has to be hashed, no matter the size
      -- iff 1, this writer is currently retransmitting
      -- iff 1, the writer is alive (lease for this writer is not expired); field may be modified only when holding both wr->e.lock and wr->c.pp->e.lock
      -- iff 1, the writer ignores all arriving ACKNACK messages
      -- iff 1, the writer does not respond to retransmit requests
      -- iff 1, the writer suppresses all periodic heartbeats
      -- iff 1, the writer drops outgoing data, forcing the readers to request a retransmit
      -- virtual clock counting transitions between alive/not-alive
      -- type of the data written by this writer
      -- set of addresses to publish to
      -- alternate case, used for SPDP, when using Cloud with multiple bootstrap locators
      -- timed event for "periodically" publishing heartbeats when unack'd data present, NULL <=> unreliable
      -- fibheap node to keep lease duration for this writer, NULL in case of automatic liveliness with inifite duration
      -- WHC tracking history, T-L durability service history + samples by sequence number for retransmit
      -- watermarks for WHC in bytes (counting only unack'd data)
      -- time of last 1->0 transition of "retransmitting"
      -- time "whc_high" was last updated for controlled ramp-up of throughput
      -- derived from reader's receive_buffer_size
      -- derived from reader's receive_buffer_size
      -- total number of matching PROXY readers
      -- number of matching reliable PROXY readers
      -- also +1 for protected keys and config override for generating keyhash
      -- all matching PROXY readers, see struct wr_prd_match
      -- all matching LOCAL readers, see struct wr_rd_match
      -- cum received ACKNACKs with no request for retransmission
      -- cum received ACKNACKs that did request retransmission
      -- cum times transmitting was throttled (whc hitting high-level mark)
      -- cum samples retransmitted (counting events; 1 sample can be counted many times)
      -- cum samples lost but retransmit requested (also counting events)
      -- cum bytes queued for retransmit
      -- cum time in throttled state
      -- cum time in retransmitting state
      -- timed event queue to be used by this writer
      -- LOCAL readers for fast-pathing; if not fast-pathed, fall back to scanning local_readers
      -- for liveliness administration (writer can only become inactive when using manual liveliness)
   function writer_read_seq_xmit
     (wr : access constant writer)
      return CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t with
      Import        => True,
      Convention    => C,
      External_Name => "writer_read_seq_xmit";

   procedure writer_update_seq_xmit
     (wr : access writer;
      nv : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t) with
      Import        => True,
      Convention    => C,
      External_Name => "writer_update_seq_xmit";

   type reader is record
      e                         : aliased entity_common;
      c                         : aliased endpoint_common;
      status_cb                 : status_cb_t;
      status_cb_entity          : System.Address;
      rhc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_rhc_h.ddsi_rhc;
      xqos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos_t;
      reliable                  : Extensions.Unsigned_1;
      handle_as_transient_local : Extensions.Unsigned_1;
      request_keyhash           : Extensions.Unsigned_1;
      favours_ssm               : Extensions.Unsigned_1;
      init_acknack_count : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h
        .nn_count_t;
      uc_as : access CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h
        .networkpartition_address;
      mc_as : access CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h
        .networkpartition_address;
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h
        .ddsi_sertype;
      num_writers   : aliased unsigned;
      writers : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_tree_t;
      local_writers : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h
        .ddsrt_avl_tree_t;
      ddsi2direct_cb    : ddsi2direct_directread_cb_t;
      ddsi2direct_cbarg : System.Address;
      sec_attr : access CycloneDDS.Low_Level.dds_ddsi_ddsi_security_omg_h
        .reader_sec_attributes;
   end record with
      Convention => C_Pass_By_Copy,
      --  Pack => True,
      Alignment => 8;

-- reader history, tracks registrations and data
-- 1 iff reader is reliable
-- 1 iff reader wants historical data from proxy writers
-- really controlled by the sertype
-- iff 1, this reader favours SSM
-- initial value for "count" (i.e. ACK seq num) for newly matched proxy writers
-- type of the data read by this reader
-- total number of matching PROXY writers
-- all matching PROXY writers, see struct rd_pwr_match
-- all matching LOCAL writers, see struct rd_wr_match
   type proxy_endpoint_common;
   type proxy_participant is record
      e      : aliased entity_common;
      refc   : aliased unsigned;
      vendor : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h
        .nn_vendorid_t;
      bes                : aliased unsigned;
      privileged_pp_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      plist : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist_t;
      minl_auto : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h
        .ddsrt_atomic_voidp_t;
      leaseheap_auto : aliased CycloneDDS.Low_Level.dds_ddsrt_fibheap_h
        .ddsrt_fibheap_t;
      minl_man : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h
        .ddsrt_atomic_voidp_t;
      leaseheap_man : aliased CycloneDDS.Low_Level.dds_ddsrt_fibheap_h
        .ddsrt_fibheap_t;
      the_lease : access CycloneDDS.Low_Level.dds_ddsi_q_lease_h.lease;
      as_default : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;
      as_meta : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;
      endpoints            : access proxy_endpoint_common;
      groups : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_tree_t;
      seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      receive_buffer_size  : aliased unsigned;
      implicitly_created   : Extensions.Unsigned_1;
      is_ddsi2_pp          : Extensions.Unsigned_1;
      minimal_bes_mode     : Extensions.Unsigned_1;
      lease_expired        : Extensions.Unsigned_1;
      deleting             : Extensions.Unsigned_1;
      proxypp_have_spdp    : Extensions.Unsigned_1;
      owns_lease           : Extensions.Unsigned_1;
      redundant_networking : Extensions.Unsigned_1;
      security_info        : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h
        .nn_security_info_t;
      sec_attr : access CycloneDDS.Low_Level.dds_ddsi_ddsi_security_omg_h
        .proxy_participant_sec_attributes;
   end record with
      Convention => C_Pass_By_Copy,
      --  Pack => True,
      Alignment => 8;

      -- number of proxy endpoints (both user & built-in; not groups, they don't have a life of their own)
      -- vendor code from discovery
      -- built-in endpoint set
      -- if this PP depends on another PP for its SEDP writing
      -- settings/QoS for this participant
      -- clone of min(leaseheap_auto)
      -- keeps leases for this proxypp and leases for pwrs (with liveliness automatic)
      -- clone of min(leaseheap_man)
      -- keeps leases for this proxypp and leases for pwrs (with liveliness manual-by-participant)
      -- lease for this proxypp
      -- default address set to use for user data traffic
      -- default address set to use for discovery traffic
      -- all proxy endpoints can be reached from here
      -- table of all groups (publisher, subscriber), see struct proxy_group
      -- sequence number of most recent SPDP message
      -- assumed size of receive buffer, used to limit bursts involving this proxypp
      -- participants are implicitly created for Cloud/Fog discovered endpoints
      -- if this is the federation-leader on the remote node
      -- 1 iff requests receiving data on all advertised interfaces
      -- ref to (shared) topic definition
      -- timestamp of last update
      -- sequence number of most recent SEDP message
      -- Representing proxy subscriber & publishers as "groups": until DDSI2
      --   gets a reason to care about these other than for the generation of
      --   CM topics, there's little value in distinguishing between the two.
      --   In another way, they're secondly-class citizens, too: "real"
      --   entities are garbage collected and found using lock-free hash
      --   tables, but "groups" only live in the context of a proxy
      --   participant.

   type proxy_group is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;
      guid    : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      name    : Interfaces.C.Strings.chars_ptr;
      proxypp : access proxy_participant;
      xqos    : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos_t;
   end record with
      Convention => C_Pass_By_Copy;

      -- uncounted backref to proxy participant
      -- publisher/subscriber QoS
      -- counted backref to proxy participant
   type proxy_endpoint_common is record
      proxypp    : access proxy_participant;
      next_ep    : access proxy_endpoint_common;
      prev_ep    : access proxy_endpoint_common;
      xqos       : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos_t;
      as         : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;
      group_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      vendor : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h
        .nn_vendorid_t;
      seq           : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      security_info : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h
        .nn_security_info_t;
   end record with
      Convention => C_Pass_By_Copy;

      -- next \ endpoint belonging to this proxy participant
      -- prev / -- this is in arbitrary ordering
      -- proxy endpoint QoS lives here; FIXME: local ones should have it moved to common as well
      -- address set to use for communicating with this endpoint
      -- 0:0:0:0 if not available
      -- cached from proxypp->vendor
      -- sequence number of most recent SEDP message
      -- type identifier for for type used by this proxy endpoint
      -- sertype for data this endpoint reads/writes
   type generic_proxy_endpoint is record
      e : aliased entity_common;
      c : aliased proxy_endpoint_common;
   end record with
      Convention => C_Pass_By_Copy;

   type proxy_writer is record
      e                     : aliased entity_common;
      c                     : aliased proxy_endpoint_common;
      readers : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_tree_t;
      n_reliable_readers    : aliased int;
      n_readers_out_of_sync : aliased int;
      last_seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      last_fragnum          : aliased unsigned;
      nackfragcount : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h
        .nn_count_t;
      next_deliv_seq_lowword : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h
        .ddsrt_atomic_uint32_t;
      deliver_synchronously     : Extensions.Unsigned_1;
      have_seen_heartbeat       : Extensions.Unsigned_1;
      local_matching_inprogress : Extensions.Unsigned_1;
      alive                     : Extensions.Unsigned_1;
      filtered                  : Extensions.Unsigned_1;
      redundant_networking      : Extensions.Unsigned_1;
      supports_ssm              : Extensions.Unsigned_1;
      alive_vclock              : aliased unsigned;
      defrag : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_defrag;
      reorder : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .nn_reorder;
      dqueue : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_dqueue;
      evq : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.xeventq;
      rdary             : aliased local_reader_ary;
      ddsi2direct_cb    : ddsi2direct_directread_cb_t;
      ddsi2direct_cbarg : System.Address;
      the_lease         : access CycloneDDS.Low_Level.dds_ddsi_q_lease_h.lease;
   end record with
      Convention => C_Pass_By_Copy,
      --  Pack => True,
      Alignment => 8;

      -- matching LOCAL readers, see pwr_rd_match
      -- number of those that are reliable
      -- number of those that require special handling (accepting historical data, waiting for historical data set to become complete)
      -- highest known seq published by the writer, not last delivered
      -- last known frag for last_seq, or UINT32_MAX if last_seq not partial
      -- last nackfrag seq number
      -- lower 32-bits for next sequence number that will be delivered; for generating acks; 32-bit so atomic reads on all supported platforms
      -- iff 1, delivery happens straight from receive thread for non-historical data; else through delivery queue "dqueue"
      -- iff 1, we have received at least on heartbeat from this proxy writer
      -- iff 1, we are still busy matching local readers; this is so we don't deliver incoming data to some but not all readers initially
      -- iff 1, the proxy writer is alive (lease for this proxy writer is not expired); field may be modified only when holding both pwr->e.lock and pwr->c.proxypp->e.lock
      -- iff 1, builtin proxy writer uses content filter, which affects heartbeats and gaps.
      -- 1 iff requests receiving data on all advertised interfaces
      -- iff 1, this proxy writer supports SSM
      -- virtual clock counting transitions between alive/not-alive
      -- defragmenter for this proxy writer; FIXME: perhaps shouldn't be for historical data
      -- message reordering for this proxy writer, out-of-sync readers can have their own, see pwr_rd_match
      -- delivery queue for asynchronous delivery (historical data is always delivered asynchronously)
      -- timed event queue to be used for ACK generation
      -- LOCAL readers for fast-pathing; if not fast-pathed, fall back to scanning local_readers
   type proxy_reader;
   type filter_fn_t is access function
     (arg1 : access writer; arg2 : access proxy_reader;
      arg3 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata)
      return int with
      Convention => C;

   type proxy_reader is record
      e                    : aliased entity_common;
      c                    : aliased proxy_endpoint_common;
      deleting             : Extensions.Unsigned_1;
      is_fict_trans_reader : Extensions.Unsigned_1;
      requests_keyhash     : Extensions.Unsigned_1;
      redundant_networking : Extensions.Unsigned_1;
      favours_ssm          : Extensions.Unsigned_1;
      writers : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_tree_t;
      receive_buffer_size  : aliased unsigned;
      filter               : filter_fn_t;
   end record with
      Convention => C_Pass_By_Copy,
      --  Pack => True,
      Alignment => 8;

      -- set when being deleted
      -- only true when it is certain that is a fictitious transient data reader (affects built-in topic generation)
      -- 1 iff this reader would like to receive keyhashes
      -- 1 iff requests receiving data on all advertised interfaces
      -- iff 1, this proxy reader favours SSM when available
      -- matching LOCAL writers
      -- assumed receive buffer size inherited from proxypp
   wr_readers_treedef : aliased constant CycloneDDS.Low_Level.dds_ddsrt_avl_h
     .ddsrt_avl_treedef_t with
      Import        => True,
      Convention    => C,
      External_Name => "wr_readers_treedef";

   wr_local_readers_treedef : aliased constant CycloneDDS.Low_Level
     .dds_ddsrt_avl_h
     .ddsrt_avl_treedef_t with
      Import        => True,
      Convention    => C,
      External_Name => "wr_local_readers_treedef";

   rd_writers_treedef : aliased constant CycloneDDS.Low_Level.dds_ddsrt_avl_h
     .ddsrt_avl_treedef_t with
      Import        => True,
      Convention    => C,
      External_Name => "rd_writers_treedef";

   rd_local_writers_treedef : aliased constant CycloneDDS.Low_Level
     .dds_ddsrt_avl_h
     .ddsrt_avl_treedef_t with
      Import        => True,
      Convention    => C,
      External_Name => "rd_local_writers_treedef";

   pwr_readers_treedef : aliased constant CycloneDDS.Low_Level.dds_ddsrt_avl_h
     .ddsrt_avl_treedef_t with
      Import        => True,
      Convention    => C,
      External_Name => "pwr_readers_treedef";

   prd_writers_treedef : aliased constant CycloneDDS.Low_Level.dds_ddsrt_avl_h
     .ddsrt_avl_treedef_t with
      Import        => True,
      Convention    => C,
      External_Name => "prd_writers_treedef";

   deleted_participants_treedef : aliased constant CycloneDDS.Low_Level
     .dds_ddsrt_avl_h
     .ddsrt_avl_treedef_t with
      Import        => True,
      Convention    => C,
      External_Name => "deleted_participants_treedef";

   function deleted_participants_admin_new
     (logcfg : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h
        .ddsrt_log_cfg_t;
      c_delay : long)
      return access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
     .deleted_participants_admin with
      Import        => True,
      Convention    => C,
      External_Name => "deleted_participants_admin_new";

   procedure deleted_participants_admin_free
     (admin : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .deleted_participants_admin) with
      Import        => True,
      Convention    => C,
      External_Name => "deleted_participants_admin_free";

   function is_deleted_participant_guid
     (admin : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .deleted_participants_admin;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      for_what : unsigned) return int with
      Import        => True,
      Convention    => C,
      External_Name => "is_deleted_participant_guid";

   function is_null_guid
     (guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t)
      return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "is_null_guid";

   function to_entityid
     (u : unsigned)
      return CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t with
      Import        => True,
      Convention    => C,
      External_Name => "to_entityid";

   function is_builtin_entityid
     (id       : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t;
      vendorid : CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "is_builtin_entityid";

   function is_builtin_endpoint
     (id       : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t;
      vendorid : CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "is_builtin_endpoint";

   function is_builtin_topic
     (id       : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t;
      vendorid : CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "is_builtin_topic";

   function is_local_orphan_endpoint
     (e : access constant entity_common) return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "is_local_orphan_endpoint";

   function is_topic_entityid
     (id : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "is_topic_entityid";

   function is_writer_entityid
     (id : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "is_writer_entityid";

   function is_reader_entityid
     (id : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "is_reader_entityid";

   function is_keyed_endpoint_entityid
     (id : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "is_keyed_endpoint_entityid";

   function get_entity_vendorid
     (e : access constant entity_common)
      return CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t with
      Import        => True,
      Convention    => C,
      External_Name => "get_entity_vendorid";

      -- Interface for glue code between the OpenSplice kernel and the DDSI
      --   entities. These all return 0 iff successful. All GIDs supplied
      --   __MUST_BE_UNIQUE__. All hell may break loose if they aren't.
      --   All delete operations synchronously remove the entity being deleted
      --   from the various global hash tables on GUIDs. This ensures no new
      --   operations can be invoked by the glue code, discovery, protocol
      --   messages, &c.  The entity is then scheduled for garbage collection.
      --     There is one exception: a participant without built-in
      --     endpoints: that one synchronously reaches reference count zero
      --     and is then freed immediately.
      --     If new_writer() and/or new_reader() may be called in parallel to
      --     delete_participant(), trouble ensues. The current glue code
      --     performs all local discovery single-threaded, and can't ever get
      --     into that issue.
      --   A garbage collector thread is used to perform the actual freeing of
      --   an entity, but it never does so before all threads have made
      --   sufficient progress to guarantee they are not using that entity any
      --   longer, with the exception of use via internal pointers in the
      --   entity data structures.
      --   An example of the latter is that (proxy) endpoints have a pointer
      --   to the owning (proxy) participant, but the (proxy) participant is
      --   reference counted to make this safe.
      --   The case of a proxy writer is particularly complicated is it has to
      --   pass through a multiple-stage delay in the garbage collector before
      --   it may be freed: first there is the possibility of a parallel
      --   delete or protocol message, then there is still the possibility of
      --   data in a delivery queue.  This is dealt by requeueing garbage
      --   collection and sending bubbles through the delivery queue.

      -- Set this flag in new_participant to prevent the creation SPDP, SEDP
      --   and PMD readers for that participant.  It doesn't really need it,
      --   they all share the information anyway.  But you do need it once.

      -- Set this flag to prevent the creation of SPDP, SEDP and PMD
      --   writers.  It will then rely on the "privileged participant", which
      --   must exist at the time of creation.  It creates a reference to that
      --   "privileged participant" to ensure it won't disappear too early.

      -- Set this flag to mark the participant as the "privileged
      --   participant", there can only be one of these.  The privileged
      --   participant MUST have all builtin readers and writers.

      -- Set this flag to mark the participant as is_ddsi2_pp.
      -- Set this flag to mark the participant as an local entity only.
      --*
      -- * @brief Create a new participant with a given GUID in the domain.
      -- *
      -- * @param[in,out]  ppguid
      -- *               The GUID of the new participant, may be adjusted by security.
      -- * @param[in]  flags
      -- *               Zero or more of:
      -- *               - RTPS_PF_NO_BUILTIN_READERS   do not create discovery readers in new ppant
      -- *               - RTPS_PF_NO_BUILTIN_WRITERS   do not create discvoery writers in new ppant
      -- *               - RTPS_PF_PRIVILEGED_PP        FIXME: figure out how to describe this ...
      -- *               - RTPS_PF_IS_DDSI2_PP          FIXME: OSPL holdover - there is no DDSI2E here
      -- *               - RTPS_PF_ONLY_LOCAL           FIXME: not used, it seems
      -- * @param[in]  plist
      -- *               Parameters/QoS for this participant
      -- *
      -- * @returns A dds_return_t indicating success or failure.
      -- *
      -- * @retval DDS_RETCODE_OK
      -- *               All parameters valid (or ignored), dest and *nextafterplist have been set
      -- *               accordingly.
      -- * @retval DDS_RETCODE_PRECONDITION_NOT_MET
      -- *               A participant with GUID *ppguid already exists.
      -- * @retval DDS_RETCODE_OUT_OF_RESOURCES
      -- *               The configured maximum number of participants has been reached.
      --

   function new_participant_guid
     (ppguid : access CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      flags  : unsigned;
      plist  : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h
        .ddsi_plist_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "new_participant_guid";

      --*
      -- * @brief Create a new participant in the domain.  See also new_participant_guid.
      -- *
      -- * @param[out] ppguid
      -- *               On successful return: the GUID of the new participant;
      -- *               Undefined on error.
      -- * @param[in]  flags
      -- *               See new_participant_guid
      -- * @param[in]  plist
      -- *               See new_participant_guid
      -- *
      -- * @returns A dds_return_t indicating success or failure.
      -- *
      -- * @retval DDS_RETCODE_OK
      -- *               Success, there is now a local participant with the GUID stored in
      -- *               *ppguid
      -- * @retval DDS_RETCODE_OUT_OF_RESOURCES
      -- *               Failed to allocate a new GUID (note: currently this will always
      -- *               happen after 2**24-1 successful calls to new_participant ...).
      -- * @retval DDS_RETCODE_OUT_OF_RESOURCES
      -- *               The configured maximum number of participants has been reached.
      --

   function new_participant
     (ppguid : access CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      flags  : unsigned;
      plist  : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h
        .ddsi_plist_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "new_participant";

      --*
      -- * @brief Initiate the deletion of the participant:
      -- * - dispose/unregister built-in topic
      -- * - list it as one of the recently deleted participants
      -- * - remote it from the GUID hash tables
      -- * - schedule the scare stuff to really delete it via the GC
      -- *
      -- * It is ok to call delete_participant without deleting all DDSI-level
      -- * readers/writers: those will simply be deleted.  (New ones can't be
      -- * created anymore because the participant can no longer be located via
      -- * the hash tables).
      -- *
      -- * @param[in]  ppguid
      -- *               GUID of the participant to be deleted.
      -- *
      -- * @returns A dds_return_t indicating success or failure.
      -- *
      -- * @retval DDS_RETCODE_OK
      -- *               Success, it is no longer visible and GC events have
      -- *               been scheduled for eventual deleting of all remaining
      -- *               readers and writers and freeing of memory
      -- * @retval DDS_RETCODE_BAD_PARAMETER
      -- *               ppguid lookup failed.
      --

   function delete_participant
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      ppguid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "delete_participant";

   procedure update_participant_plist
     (pp    : access participant;
      plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h
        .ddsi_plist_t) with
      Import        => True,
      Convention    => C,
      External_Name => "update_participant_plist";

   function get_entity_instance_id
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .ddsi_domaingv;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t)
      return unsigned_long with
      Import        => True,
      Convention    => C,
      External_Name => "get_entity_instance_id";

      -- Gets the interval for PMD messages, which is the minimal lease duration for writers
      --   with auto liveliness in this participant, or the participants lease duration if shorter

   function pp_get_pmd_interval
     (pp : access participant)
      return CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t with
      Import        => True,
      Convention    => C,
      External_Name => "pp_get_pmd_interval";

      -- To obtain the builtin writer to be used for publishing SPDP, SEDP,
      --   PMD stuff for PP and its endpoints, given the entityid.  If PP has
      --   its own writer, use it; else use the privileged participant.

   function get_builtin_writer
     (pp : access constant participant; entityid : unsigned)
      return access writer with
      Import        => True,
      Convention    => C,
      External_Name => "get_builtin_writer";

      -- To create a new DDSI writer or reader belonging to participant with
      --   GUID "ppguid". May return NULL if participant unknown or
      --   writer/reader already known.

   function new_writer
     (wr_out     : System.Address;
      wrguid : access CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      group_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      pp     : access participant; topic_name : Interfaces.C.Strings.chars_ptr;
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h
        .ddsi_sertype;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_qos_t;
      the_whc   : access CycloneDDS.Low_Level.dds_ddsi_q_whc_h.whc;
      status_cb : status_cb_t; status_cb_arg : System.Address)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "new_writer";

   function new_reader
     (rd_out     : System.Address;
      rdguid : access CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      group_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      pp     : access participant; topic_name : Interfaces.C.Strings.chars_ptr;
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h
        .ddsi_sertype;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_qos_t;
      rhc       : access CycloneDDS.Low_Level.dds_ddsi_ddsi_rhc_h.ddsi_rhc;
      status_cb : status_cb_t; status_cb_arg : System.Address)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "new_reader";

   procedure update_reader_qos
     (rd   : access reader;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_qos_t) with
      Import        => True,
      Convention    => C,
      External_Name => "update_reader_qos";

   procedure update_writer_qos
     (wr   : access writer;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_qos_t) with
      Import        => True,
      Convention    => C,
      External_Name => "update_writer_qos";

   type whc_node is null record;   -- incomplete struct

   function remove_acked_messages
     (wr                 : access writer;
      whcst : access CycloneDDS.Low_Level.dds_ddsi_q_whc_h.whc_state;
      deferred_free_list : System.Address) return unsigned with
      Import        => True,
      Convention    => C,
      External_Name => "remove_acked_messages";

   function writer_max_drop_seq
     (wr : access constant writer)
      return CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t with
      Import        => True,
      Convention    => C,
      External_Name => "writer_max_drop_seq";

   function writer_must_have_hb_scheduled
     (wr    : access constant writer;
      whcst : access constant CycloneDDS.Low_Level.dds_ddsi_q_whc_h.whc_state)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "writer_must_have_hb_scheduled";

   procedure writer_set_retransmitting (wr : access writer) with
      Import        => True,
      Convention    => C,
      External_Name => "writer_set_retransmitting";

   procedure writer_clear_retransmitting (wr : access writer) with
      Import        => True,
      Convention    => C,
      External_Name => "writer_clear_retransmitting";

   function writer_wait_for_acks
     (wr     : access writer;
      rdguid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      abstimeout : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "writer_wait_for_acks";

   function unblock_throttled_writer
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "unblock_throttled_writer";

   function delete_writer
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "delete_writer";

   function delete_writer_nolinger
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "delete_writer_nolinger";

   function delete_writer_nolinger_locked
     (wr : access writer)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "delete_writer_nolinger_locked";

   function delete_reader
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t)
      return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t with
      Import        => True,
      Convention    => C,
      External_Name => "delete_reader";

   type local_orphan_writer is record
      wr : aliased writer;
   end record with
      Convention => C_Pass_By_Copy;

   function new_local_orphan_writer
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      entityid   : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t;
      topic_name : Interfaces.C.Strings.chars_ptr;
      c_type     : access CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h
        .ddsi_sertype;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_qos_t;
      the_whc : access CycloneDDS.Low_Level.dds_ddsi_q_whc_h.whc)
      return access local_orphan_writer with
      Import        => True,
      Convention    => C,
      External_Name => "new_local_orphan_writer";

   procedure delete_local_orphan_writer (wr : access local_orphan_writer) with
      Import        => True,
      Convention    => C,
      External_Name => "delete_local_orphan_writer";

   procedure writer_set_alive_may_unlock
     (wr : access writer; notify : Extensions.bool) with
      Import        => True,
      Convention    => C,
      External_Name => "writer_set_alive_may_unlock";

   function writer_set_notalive
     (wr : access writer; notify : Extensions.bool) return int with
      Import        => True,
      Convention    => C,
      External_Name => "writer_set_notalive";

      -- To create or delete a new proxy participant: "guid" MUST have the
      --   pre-defined participant entity id. Unlike delete_participant(),
      --   deleting a proxy participant will automatically delete all its
      --   readers & writers. Delete removes the participant from a hash table
      --   and schedules the actual deletion.
      --      -- XX what about proxy participants without built-in endpoints?
      --      XX --
      --

      -- Set when this proxy participant is created implicitly and has to be deleted upon disappearance
      --   of its last endpoint.  FIXME: Currently there is a potential race with adding a new endpoint
      --   in parallel to deleting the last remaining one. The endpoint will then be created, added to the
      --   proxy participant and then both are deleted. With the current single-threaded discovery
      --   this can only happen when it is all triggered by lease expiry.

      -- Set when this proxy participant is a DDSI2 participant, to help Cloud figure out whom to send
      --   discovery data when used in conjunction with the networking bridge

      -- Set when this proxy participant is not to be announced on the built-in topics yet
   function new_proxy_participant
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      bes                : unsigned;
      privileged_pp_guid : access constant CycloneDDS.Low_Level
        .dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      as_default : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;
      as_meta    : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;
      plist      : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h
        .ddsi_plist_t;
      tlease_dur   : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;
      vendor       : CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t;
      custom_flags : unsigned;
      timestamp    : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      seq          : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t)
      return Extensions.bool with
      Import        => True,
      Convention    => C,
      External_Name => "new_proxy_participant";

   function delete_proxy_participant_by_guid
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      timestamp  : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      isimplicit : int) return int with
      Import        => True,
      Convention    => C,
      External_Name => "delete_proxy_participant_by_guid";

   function update_proxy_participant_plist_locked
     (proxypp : access proxy_participant;
      seq     : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      datap   : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h
        .ddsi_plist_t;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "update_proxy_participant_plist_locked";

   function update_proxy_participant_plist
     (proxypp : access proxy_participant;
      seq     : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      datap   : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h
        .ddsi_plist_t;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "update_proxy_participant_plist";

   procedure proxy_participant_reassign_lease
     (proxypp  : access proxy_participant;
      newlease : access CycloneDDS.Low_Level.dds_ddsi_q_lease_h.lease) with
      Import        => True,
      Convention    => C,
      External_Name => "proxy_participant_reassign_lease";

   procedure purge_proxy_participants
     (gv  : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h
        .ddsi_xlocator_t;
      delete_from_as_disc : Extensions.bool) with
      Import        => True,
      Convention    => C,
      External_Name => "purge_proxy_participants";

      -- To create a new proxy writer or reader; the proxy participant is
      --   determined from the GUID and must exist.

   function new_proxy_writer
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      ppguid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      as    : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;
      plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h
        .ddsi_plist_t;
      dqueue : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_dqueue;
      evq       : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.xeventq;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t) return int with
      Import        => True,
      Convention    => C,
      External_Name => "new_proxy_writer";

   function new_proxy_reader
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      ppguid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      as    : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;
      plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h
        .ddsi_plist_t;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t; favours_ssm : int)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "new_proxy_reader";

      -- To delete a proxy writer or reader; these synchronously hide it
      --   from the outside world, preventing it from being matched to a
      --   reader or writer. Actual deletion is scheduled in the future, when
      --   no outstanding references may still exist (determined by checking
      --   thread progress, &c.).

   function delete_proxy_writer
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      timestamp  : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      isimplicit : int) return int with
      Import        => True,
      Convention    => C,
      External_Name => "delete_proxy_writer";

   function delete_proxy_reader
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      timestamp  : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      isimplicit : int) return int with
      Import        => True,
      Convention    => C,
      External_Name => "delete_proxy_reader";

   procedure update_proxy_reader
     (prd  : access proxy_reader;
      seq  : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      as   : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_qos_t;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t) with
      Import        => True,
      Convention    => C,
      External_Name => "update_proxy_reader";

   procedure update_proxy_writer
     (pwr  : access proxy_writer;
      seq  : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      as   : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_qos_t;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t) with
      Import        => True,
      Convention    => C,
      External_Name => "update_proxy_writer";

   procedure proxy_writer_set_alive_may_unlock
     (pwr : access proxy_writer; notify : Extensions.bool) with
      Import        => True,
      Convention    => C,
      External_Name => "proxy_writer_set_alive_may_unlock";

   function proxy_writer_set_notalive
     (pwr : access proxy_writer; notify : Extensions.bool) return int with
      Import        => True,
      Convention    => C,
      External_Name => "proxy_writer_set_notalive";

   function new_proxy_group
     (guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      name : Interfaces.C.Strings.chars_ptr;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_qos_t;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t)
      return int with
      Import        => True,
      Convention    => C,
      External_Name => "new_proxy_group";

   procedure delete_proxy_group
     (entidx : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .entity_index;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      timestamp  : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      isimplicit : int) with
      Import        => True,
      Convention    => C,
      External_Name => "delete_proxy_group";

      -- Call this to empty all address sets of all writers to stop all outgoing traffic, or to
      --   rebuild them all (which only makes sense after previously having emptied them all).

   procedure rebuild_or_clear_writer_addrsets
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      rebuild : int) with
      Import        => True,
      Convention    => C,
      External_Name => "rebuild_or_clear_writer_addrsets";

   procedure local_reader_ary_setfastpath_ok
     (x : access local_reader_ary; fastpath_ok : Extensions.bool) with
      Import        => True,
      Convention    => C,
      External_Name => "local_reader_ary_setfastpath_ok";

   procedure connect_writer_with_proxy_reader_secure
     (wr            : access writer; prd : access proxy_reader;
      tnow          : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      crypto_handle : long) with
      Import        => True,
      Convention    => C,
      External_Name => "connect_writer_with_proxy_reader_secure";

   procedure connect_reader_with_proxy_writer_secure
     (rd            : access reader; pwr : access proxy_writer;
      tnow          : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      crypto_handle : long) with
      Import        => True,
      Convention    => C,
      External_Name => "connect_reader_with_proxy_writer_secure";

   procedure update_proxy_endpoint_matching
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h
        .ddsi_domaingv;
      proxy_ep : access generic_proxy_endpoint) with
      Import        => True,
      Convention    => C,
      External_Name => "update_proxy_endpoint_matching";

   procedure ddsi_make_writer_info
     (wrinfo : access CycloneDDS.Low_Level.dds_ddsi_ddsi_rhc_h
        .ddsi_writer_info;
      e    : access constant entity_common;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_qos_t;
      statusinfo : unsigned) with
      Import        => True,
      Convention    => C,
      External_Name => "ddsi_make_writer_info";

end CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
