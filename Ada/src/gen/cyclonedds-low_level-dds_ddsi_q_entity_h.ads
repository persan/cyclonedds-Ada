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

   DPG_LOCAL : constant := 1;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:567
   DPG_REMOTE : constant := 2;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:568

   RTPS_PF_NO_BUILTIN_READERS : constant := 1;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:624

   RTPS_PF_NO_BUILTIN_WRITERS : constant := 2;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:629

   RTPS_PF_PRIVILEGED_PP : constant := 4;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:633

   RTPS_PF_IS_DDSI2_PP : constant := 8;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:635

   RTPS_PF_ONLY_LOCAL : constant := 16;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:637

   CF_IMPLICITLY_CREATED_PROXYPP : constant := (2 ** 0);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:777

   CF_PARTICIPANT_IS_DDSI2 : constant := (2 ** 1);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:780

   CF_PROXYPP_NO_SPDP : constant := (2 ** 2);  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:782

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
        (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.nn_rsample_info;
         arg2 : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.nn_rdata;
         arg3 : System.Address)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:59

   type entity_kind is 
     (EK_PARTICIPANT,
      EK_PROXY_PARTICIPANT,
      EK_TOPIC,
      EK_WRITER,
      EK_PROXY_WRITER,
      EK_READER,
      EK_PROXY_READER)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:61

  -- Liveliness changed is more complicated than just add/remove. Encode the event
  --   in status_cb_data_t::extra and ignore status_cb_data_t::add  

   type liveliness_changed_data_extra is 
     (LIVELINESS_CHANGED_ADD_ALIVE,
      LIVELINESS_CHANGED_ADD_NOT_ALIVE,
      LIVELINESS_CHANGED_REMOVE_NOT_ALIVE,
      LIVELINESS_CHANGED_REMOVE_ALIVE,
      LIVELINESS_CHANGED_ALIVE_TO_NOT_ALIVE,
      LIVELINESS_CHANGED_NOT_ALIVE_TO_ALIVE)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:73

   type status_cb_data is record
      raw_status_id : aliased int;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:84
      extra : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:85
      handle : aliased unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:86
      add : aliased Extensions.bool;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:87
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:82

   subtype status_cb_data_t is status_cb_data;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:88

   type status_cb_t is access procedure (arg1 : System.Address; arg2 : access constant status_cb_data_t)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:90

   type prd_wr_match is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:93
      wr_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:94
      crypto_handle : aliased long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:96
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:92

   type rd_pwr_match is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:101
      pwr_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:102
      pwr_alive : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:103
      pwr_alive_vclock : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:104
      ssm_mc_loc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_xlocator_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:106
      ssm_src_loc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_xlocator_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:107
      crypto_handle : aliased long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:110
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:100

  -- tracks pwr's alive state  
  -- used to ensure progress  
   type wr_rd_match is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:115
      rd_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:116
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:114

   type rd_wr_match is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:120
      wr_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:121
      wr_alive : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:122
      wr_alive_vclock : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:123
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:119

  -- tracks wr's alive state  
  -- used to ensure progress  
   type wr_prd_match is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:127
      prd_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:128
      assumed_in_sync : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:129
      has_replied_to_hb : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:130
      all_have_replied_to_hb : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:131
      is_reliable : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:132
      min_seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:133
      max_seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:134
      seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:135
      last_seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:136
      num_reliable_readers_where_seq_equals_max : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:137
      arbitrary_unacked_reader : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:138
      prev_acknack : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_count_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:139
      prev_nackfrag : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_count_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:140
      t_acknack_accepted : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_etime_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:141
      t_nackfrag_accepted : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_etime_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:142
      hb_to_ack_latency : aliased CycloneDDS.Low_Level.dds_ddsi_q_lat_estim_h.nn_lat_estim;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:143
      hb_to_ack_latency_tlastlog : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:144
      non_responsive_count : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:145
      rexmit_requests : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:146
      crypto_handle : aliased long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:148
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:126

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
     (PRMSS_SYNC,
      PRMSS_TLCATCHUP,
      PRMSS_OUT_OF_SYNC)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:152

  -- in sync with proxy writer, has caught up with historical data  
  -- in sync with proxy writer, pwr + readers still catching up on historical data  
  -- not in sync with proxy writer  
  -- last seq for which we requested a retransmit  
   type last_nack_summary is record
      seq_end_p1 : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:159
      seq_base : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:160
      frag_end_p1 : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:161
      frag_base : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:162
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:158

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
      end_of_tl_seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:187
      reorder : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_reorder;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:188
   end record
   with Convention => C_Pass_By_Copy;
   type anon5772_union6592 (discr : unsigned := 0) is record
      case discr is
         when others =>
            not_in_sync : aliased anon5772_struct6593;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:189
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type pwr_rd_match is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:166
      rd_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:167
      tcreate : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:168
      count : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_count_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:169
      prev_heartbeat : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_count_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:170
      hb_timestamp : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:171
      t_heartbeat_accepted : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_etime_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:172
      t_last_nack : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:173
      t_last_ack : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:174
      last_seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:175
      last_nack : aliased last_nack_summary;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:176
      acknack_xevent : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.xevent;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:177
      in_sync : aliased pwr_rd_match_syncstate;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:178
      ack_requested : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:179
      heartbeat_since_ack : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:180
      heartbeatfrag_since_ack : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:181
      directed_heartbeat : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:182
      nack_sent_on_nackdelay : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:183
      filtered : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:184
      u : aliased anon5772_union6592;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:190
      crypto_handle : aliased long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:192
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:165

   type entity_common is record
      kind : aliased entity_kind;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:201
      guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:202
      tupdate : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:203
      name : Interfaces.C.Strings.chars_ptr;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:204
      iid : aliased unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:205
      tk : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h.ddsi_tkmap_instance;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:206
      lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:207
      onlylocal : aliased Extensions.bool;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:208
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:209
      all_entities_avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:210
      qos_lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:221
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:200

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
      rdary_lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:225
      valid : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:226
      fastpath_ok : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:227
      n_readers : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:228
      rdary : System.Address;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:229
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:224

  -- always true until (proxy-)writer is being deleted; !valid => !fastpath_ok  
  -- if not ok, fall back to using GUIDs (gives access to the reader-writer match data for handling readers that bumped into resource limits, hence can flip-flop, unlike "valid")  
  -- for efficient delivery, null-pointer terminated, grouped by topic  
   type avail_entityid_set is record
      x : aliased CycloneDDS.Low_Level.dds_ddsi_q_inverse_uint32_set_h.inverse_uint32_set;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:233
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:232

   type participant is record
      e : aliased entity_common;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:238
      lease_duration : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:239
      bes : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:240
      is_ddsi2_pp : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:241
      plist : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:242
      spdp_xevent : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.xevent;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:243
      pmd_update_xevent : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.xevent;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:244
      m_locator : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:245
      m_conn : CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:246
      avail_entityids : aliased avail_entityid_set;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:247
      refc_lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:248
      user_refc : aliased int;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:249
      builtin_refc : aliased int;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:250
      builtins_deleted : aliased int;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:251
      ldur_auto_wr : aliased CycloneDDS.Low_Level.dds_ddsrt_fibheap_h.ddsrt_fibheap_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:252
      minl_man : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_voidp_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:253
      leaseheap_man : aliased CycloneDDS.Low_Level.dds_ddsrt_fibheap_h.ddsrt_fibheap_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:254
      sec_attr : access CycloneDDS.Low_Level.dds_ddsi_ddsi_security_omg_h.participant_sec_attributes;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:256
      security_info : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_security_info_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:257
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:236

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
      pp : access participant;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:278
      group_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:279
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:277

  -- FIXME: currently only local endpoints; proxies use entity_common + proxy_endpoint common  
   type generic_endpoint is record
      e : aliased entity_common;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:286
      c : aliased endpoint_common;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:287
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:285

   type writer_state is 
     (WRST_OPERATIONAL,
      WRST_INTERRUPT,
      WRST_LINGERING,
      WRST_DELETING)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:290

  -- normal situation  
  -- will be deleted, unblock throttle_writer but do not do anything further  
  -- writer deletion has been requested but still has unack'd data  
  -- writer is actually being deleted (removed from hash table)  
   subtype seq_xmit_t is CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint64_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:297

   type ldur_fhnode is record
      heapnode : aliased CycloneDDS.Low_Level.dds_ddsrt_fibheap_h.ddsrt_fibheap_node_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:300
      ldur : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:301
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:299

   type writer is record
      e : aliased entity_common;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:306
      c : aliased endpoint_common;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:307
      status_cb : status_cb_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:308
      status_cb_entity : System.Address;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:309
      throttle_cond : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_cond_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:310
      seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:311
      cs_seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:312
      seq_xmit : aliased seq_xmit_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:313
      min_local_readers_reject_seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:314
      hbcount : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_count_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:315
      hbfragcount : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_count_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:316
      throttling : aliased int;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:317
      the_hbcontrol : aliased CycloneDDS.Low_Level.dds_ddsi_q_hbcontrol_h.hbcontrol;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:318
      xqos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:319
      state : aliased writer_state;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:320
      reliable : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:321
      handle_as_transient_local : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:322
      force_md5_keyhash : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:323
      retransmitting : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:324
      alive : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:325
      test_ignore_acknack : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:326
      test_suppress_retransmit : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:327
      test_suppress_heartbeat : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:328
      test_drop_outgoing_data : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:329
      supports_ssm : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:331
      ssm_as : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:332
      alive_vclock : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:334
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:335
      as : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:336
      as_group : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:337
      heartbeat_xevent : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.xevent;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:338
      lease_duration : access ldur_fhnode;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:339
      the_whc : access CycloneDDS.Low_Level.dds_ddsi_q_whc_h.whc;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:340
      whc_low : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:341
      whc_high : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:341
      t_rexmit_start : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_etime_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:342
      t_rexmit_end : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_etime_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:343
      t_whc_high_upd : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_etime_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:344
      init_burst_size_limit : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:345
      rexmit_burst_size_limit : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:346
      num_readers : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:347
      num_reliable_readers : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:348
      num_readers_requesting_keyhash : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:349
      readers : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_tree_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:350
      local_readers : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_tree_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:351
      network_partition : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h.ddsi_config_networkpartition_listelem;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:353
      num_acks_received : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:355
      num_nacks_received : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:356
      throttle_count : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:357
      throttle_tracing : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:358
      rexmit_count : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:359
      rexmit_lost_count : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:360
      rexmit_bytes : aliased unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:361
      time_throttled : aliased unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:362
      time_retransmit : aliased unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:363
      evq : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.xeventq;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:364
      rdary : aliased local_reader_ary;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:365
      the_lease : access CycloneDDS.Low_Level.dds_ddsi_q_lease_h.lease;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:366
      sec_attr : access CycloneDDS.Low_Level.dds_ddsi_ddsi_security_omg_h.writer_sec_attributes;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:368
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:304

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
   function writer_read_seq_xmit (wr : access constant writer) return CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:372
   with Import => True, 
        Convention => C, 
        External_Name => "writer_read_seq_xmit";

   procedure writer_update_seq_xmit (wr : access writer; nv : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:376
   with Import => True, 
        Convention => C, 
        External_Name => "writer_update_seq_xmit";

   type reader is record
      e : aliased entity_common;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:386
      c : aliased endpoint_common;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:387
      status_cb : status_cb_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:388
      status_cb_entity : System.Address;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:389
      rhc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_rhc_h.ddsi_rhc;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:390
      xqos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:391
      reliable : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:392
      handle_as_transient_local : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:393
      request_keyhash : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:394
      favours_ssm : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:396
      init_acknack_count : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_count_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:398
      uc_as : access CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h.networkpartition_address;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:400
      mc_as : access CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h.networkpartition_address;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:401
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:403
      num_writers : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:404
      writers : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_tree_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:405
      local_writers : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_tree_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:406
      ddsi2direct_cb : ddsi2direct_directread_cb_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:407
      ddsi2direct_cbarg : System.Address;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:408
      sec_attr : access CycloneDDS.Low_Level.dds_ddsi_ddsi_security_omg_h.reader_sec_attributes;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:410
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:384

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
      e : aliased entity_common;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:421
      refc : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:422
      vendor : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:423
      bes : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:424
      privileged_pp_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:425
      plist : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:426
      minl_auto : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_voidp_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:427
      leaseheap_auto : aliased CycloneDDS.Low_Level.dds_ddsrt_fibheap_h.ddsrt_fibheap_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:428
      minl_man : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_voidp_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:429
      leaseheap_man : aliased CycloneDDS.Low_Level.dds_ddsrt_fibheap_h.ddsrt_fibheap_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:430
      the_lease : access CycloneDDS.Low_Level.dds_ddsi_q_lease_h.lease;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:431
      as_default : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:432
      as_meta : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:433
      endpoints : access proxy_endpoint_common;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:434
      groups : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_tree_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:438
      seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:439
      receive_buffer_size : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:440
      implicitly_created : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:441
      is_ddsi2_pp : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:442
      minimal_bes_mode : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:443
      lease_expired : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:444
      deleting : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:445
      proxypp_have_spdp : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:446
      owns_lease : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:447
      redundant_networking : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:448
      security_info : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_security_info_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:450
      sec_attr : access CycloneDDS.Low_Level.dds_ddsi_ddsi_security_omg_h.proxy_participant_sec_attributes;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:451
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:419

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
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:474
      guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:475
      name : Interfaces.C.Strings.chars_ptr;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:476
      proxypp : access proxy_participant;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:477
      xqos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:478
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:473

  -- uncounted backref to proxy participant  
  -- publisher/subscriber QoS  
  -- counted backref to proxy participant  
   type proxy_endpoint_common is record
      proxypp : access proxy_participant;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:483
      next_ep : access proxy_endpoint_common;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:484
      prev_ep : access proxy_endpoint_common;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:485
      xqos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:486
      as : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:487
      group_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:488
      vendor : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:489
      seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:490
      security_info : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_security_info_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:496
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:481

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
      e : aliased entity_common;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:501
      c : aliased proxy_endpoint_common;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:502
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:500

   type proxy_writer is record
      e : aliased entity_common;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:506
      c : aliased proxy_endpoint_common;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:507
      readers : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_tree_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:508
      n_reliable_readers : aliased int;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:509
      n_readers_out_of_sync : aliased int;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:510
      last_seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:511
      last_fragnum : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:512
      nackfragcount : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_count_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:513
      next_deliv_seq_lowword : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:514
      deliver_synchronously : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:515
      have_seen_heartbeat : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:516
      local_matching_inprogress : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:517
      alive : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:518
      filtered : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:519
      redundant_networking : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:520
      supports_ssm : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:522
      alive_vclock : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:527
      defrag : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_defrag;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:528
      reorder : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_reorder;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:529
      dqueue : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_dqueue;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:530
      evq : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.xeventq;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:531
      rdary : aliased local_reader_ary;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:532
      ddsi2direct_cb : ddsi2direct_directread_cb_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:533
      ddsi2direct_cbarg : System.Address;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:534
      the_lease : access CycloneDDS.Low_Level.dds_ddsi_q_lease_h.lease;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:535
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:505

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
        (arg1 : access writer;
         arg2 : access proxy_reader;
         arg3 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata) return int
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:539

   type proxy_reader is record
      e : aliased entity_common;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:542
      c : aliased proxy_endpoint_common;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:543
      deleting : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:544
      is_fict_trans_reader : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:545
      requests_keyhash : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:546
      redundant_networking : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:547
      favours_ssm : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:549
      writers : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_tree_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:554
      receive_buffer_size : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:555
      filter : filter_fn_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:556
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:541

  -- set when being deleted  
  -- only true when it is certain that is a fictitious transient data reader (affects built-in topic generation)  
  -- 1 iff this reader would like to receive keyhashes  
  -- 1 iff requests receiving data on all advertised interfaces  
  -- iff 1, this proxy reader favours SSM when available  
  -- matching LOCAL writers  
  -- assumed receive buffer size inherited from proxypp  
   wr_readers_treedef : aliased constant CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_treedef_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:559
   with Import => True, 
        Convention => C, 
        External_Name => "wr_readers_treedef";

   wr_local_readers_treedef : aliased constant CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_treedef_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:560
   with Import => True, 
        Convention => C, 
        External_Name => "wr_local_readers_treedef";

   rd_writers_treedef : aliased constant CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_treedef_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:561
   with Import => True, 
        Convention => C, 
        External_Name => "rd_writers_treedef";

   rd_local_writers_treedef : aliased constant CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_treedef_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:562
   with Import => True, 
        Convention => C, 
        External_Name => "rd_local_writers_treedef";

   pwr_readers_treedef : aliased constant CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_treedef_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:563
   with Import => True, 
        Convention => C, 
        External_Name => "pwr_readers_treedef";

   prd_writers_treedef : aliased constant CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_treedef_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:564
   with Import => True, 
        Convention => C, 
        External_Name => "prd_writers_treedef";

   deleted_participants_treedef : aliased constant CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_treedef_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:565
   with Import => True, 
        Convention => C, 
        External_Name => "deleted_participants_treedef";

   function deleted_participants_admin_new (logcfg : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h.ddsrt_log_cfg_t; c_delay : long) return access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.deleted_participants_admin  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:570
   with Import => True, 
        Convention => C, 
        External_Name => "deleted_participants_admin_new";

   procedure deleted_participants_admin_free (admin : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.deleted_participants_admin)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:571
   with Import => True, 
        Convention => C, 
        External_Name => "deleted_participants_admin_free";

   function is_deleted_participant_guid
     (admin : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.deleted_participants_admin;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      for_what : unsigned) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:572
   with Import => True, 
        Convention => C, 
        External_Name => "is_deleted_participant_guid";

   function is_null_guid (guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:574
   with Import => True, 
        Convention => C, 
        External_Name => "is_null_guid";

   function to_entityid (u : unsigned) return CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:575
   with Import => True, 
        Convention => C, 
        External_Name => "to_entityid";

   function is_builtin_entityid (id : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t; vendorid : CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:576
   with Import => True, 
        Convention => C, 
        External_Name => "is_builtin_entityid";

   function is_builtin_endpoint (id : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t; vendorid : CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:577
   with Import => True, 
        Convention => C, 
        External_Name => "is_builtin_endpoint";

   function is_builtin_topic (id : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t; vendorid : CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:578
   with Import => True, 
        Convention => C, 
        External_Name => "is_builtin_topic";

   function is_local_orphan_endpoint (e : access constant entity_common) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:579
   with Import => True, 
        Convention => C, 
        External_Name => "is_local_orphan_endpoint";

   function is_topic_entityid (id : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:580
   with Import => True, 
        Convention => C, 
        External_Name => "is_topic_entityid";

   function is_writer_entityid (id : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:581
   with Import => True, 
        Convention => C, 
        External_Name => "is_writer_entityid";

   function is_reader_entityid (id : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:582
   with Import => True, 
        Convention => C, 
        External_Name => "is_reader_entityid";

   function is_keyed_endpoint_entityid (id : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:583
   with Import => True, 
        Convention => C, 
        External_Name => "is_keyed_endpoint_entityid";

   function get_entity_vendorid (e : access constant entity_common) return CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:584
   with Import => True, 
        Convention => C, 
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
      flags : unsigned;
      plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:664
   with Import => True, 
        Convention => C, 
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
     (ppguid : access CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      flags : unsigned;
      plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:688
   with Import => True, 
        Convention => C, 
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

   function delete_participant (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; ppguid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:714
   with Import => True, 
        Convention => C, 
        External_Name => "delete_participant";

   procedure update_participant_plist (pp : access participant; plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:715
   with Import => True, 
        Convention => C, 
        External_Name => "update_participant_plist";

   function get_entity_instance_id (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return unsigned_long  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:716
   with Import => True, 
        Convention => C, 
        External_Name => "get_entity_instance_id";

  -- Gets the interval for PMD messages, which is the minimal lease duration for writers
  --   with auto liveliness in this participant, or the participants lease duration if shorter  

   function pp_get_pmd_interval (pp : access participant) return CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:720
   with Import => True, 
        Convention => C, 
        External_Name => "pp_get_pmd_interval";

  -- To obtain the builtin writer to be used for publishing SPDP, SEDP,
  --   PMD stuff for PP and its endpoints, given the entityid.  If PP has
  --   its own writer, use it; else use the privileged participant.  

   function get_builtin_writer (pp : access constant participant; entityid : unsigned) return access writer  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:725
   with Import => True, 
        Convention => C, 
        External_Name => "get_builtin_writer";

  -- To create a new DDSI writer or reader belonging to participant with
  --   GUID "ppguid". May return NULL if participant unknown or
  --   writer/reader already known.  

   function new_writer
     (wr_out : System.Address;
      wrguid : access CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      group_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      pp : access participant;
      topic_name : Interfaces.C.Strings.chars_ptr;
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      the_whc : access CycloneDDS.Low_Level.dds_ddsi_q_whc_h.whc;
      status_cb : status_cb_t;
      status_cb_arg : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:731
   with Import => True, 
        Convention => C, 
        External_Name => "new_writer";

   function new_reader
     (rd_out : System.Address;
      rdguid : access CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      group_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      pp : access participant;
      topic_name : Interfaces.C.Strings.chars_ptr;
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      rhc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_rhc_h.ddsi_rhc;
      status_cb : status_cb_t;
      status_cb_arg : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:732
   with Import => True, 
        Convention => C, 
        External_Name => "new_reader";

   procedure update_reader_qos (rd : access reader; xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:734
   with Import => True, 
        Convention => C, 
        External_Name => "update_reader_qos";

   procedure update_writer_qos (wr : access writer; xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:735
   with Import => True, 
        Convention => C, 
        External_Name => "update_writer_qos";

   type whc_node is null record;   -- incomplete struct

   function remove_acked_messages
     (wr : access writer;
      whcst : access CycloneDDS.Low_Level.dds_ddsi_q_whc_h.whc_state;
      deferred_free_list : System.Address) return unsigned  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:739
   with Import => True, 
        Convention => C, 
        External_Name => "remove_acked_messages";

   function writer_max_drop_seq (wr : access constant writer) return CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:740
   with Import => True, 
        Convention => C, 
        External_Name => "writer_max_drop_seq";

   function writer_must_have_hb_scheduled (wr : access constant writer; whcst : access constant CycloneDDS.Low_Level.dds_ddsi_q_whc_h.whc_state) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:741
   with Import => True, 
        Convention => C, 
        External_Name => "writer_must_have_hb_scheduled";

   procedure writer_set_retransmitting (wr : access writer)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:742
   with Import => True, 
        Convention => C, 
        External_Name => "writer_set_retransmitting";

   procedure writer_clear_retransmitting (wr : access writer)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:743
   with Import => True, 
        Convention => C, 
        External_Name => "writer_clear_retransmitting";

   function writer_wait_for_acks
     (wr : access writer;
      rdguid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      abstimeout : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:744
   with Import => True, 
        Convention => C, 
        External_Name => "writer_wait_for_acks";

   function unblock_throttled_writer (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:746
   with Import => True, 
        Convention => C, 
        External_Name => "unblock_throttled_writer";

   function delete_writer (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:747
   with Import => True, 
        Convention => C, 
        External_Name => "delete_writer";

   function delete_writer_nolinger (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:748
   with Import => True, 
        Convention => C, 
        External_Name => "delete_writer_nolinger";

   function delete_writer_nolinger_locked (wr : access writer) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:749
   with Import => True, 
        Convention => C, 
        External_Name => "delete_writer_nolinger_locked";

   function delete_reader (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:751
   with Import => True, 
        Convention => C, 
        External_Name => "delete_reader";

   type local_orphan_writer is record
      wr : aliased writer;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:754
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:753

   function new_local_orphan_writer
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      entityid : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t;
      topic_name : Interfaces.C.Strings.chars_ptr;
      c_type : access CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      the_whc : access CycloneDDS.Low_Level.dds_ddsi_q_whc_h.whc) return access local_orphan_writer  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:756
   with Import => True, 
        Convention => C, 
        External_Name => "new_local_orphan_writer";

   procedure delete_local_orphan_writer (wr : access local_orphan_writer)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:757
   with Import => True, 
        Convention => C, 
        External_Name => "delete_local_orphan_writer";

   procedure writer_set_alive_may_unlock (wr : access writer; notify : Extensions.bool)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:759
   with Import => True, 
        Convention => C, 
        External_Name => "writer_set_alive_may_unlock";

   function writer_set_notalive (wr : access writer; notify : Extensions.bool) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:760
   with Import => True, 
        Convention => C, 
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
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      bes : unsigned;
      privileged_pp_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      as_default : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;
      as_meta : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;
      plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist;
      tlease_dur : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;
      vendor : CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t;
      custom_flags : unsigned;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:784
   with Import => True, 
        Convention => C, 
        External_Name => "new_proxy_participant";

   function delete_proxy_participant_by_guid
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      isimplicit : int) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:785
   with Import => True, 
        Convention => C, 
        External_Name => "delete_proxy_participant_by_guid";

   function update_proxy_participant_plist_locked
     (proxypp : access proxy_participant;
      seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      datap : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:787
   with Import => True, 
        Convention => C, 
        External_Name => "update_proxy_participant_plist_locked";

   function update_proxy_participant_plist
     (proxypp : access proxy_participant;
      seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      datap : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:788
   with Import => True, 
        Convention => C, 
        External_Name => "update_proxy_participant_plist";

   procedure proxy_participant_reassign_lease (proxypp : access proxy_participant; newlease : access CycloneDDS.Low_Level.dds_ddsi_q_lease_h.lease)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:789
   with Import => True, 
        Convention => C, 
        External_Name => "proxy_participant_reassign_lease";

   procedure purge_proxy_participants
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_xlocator_t;
      delete_from_as_disc : Extensions.bool)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:791
   with Import => True, 
        Convention => C, 
        External_Name => "purge_proxy_participants";

  -- To create a new proxy writer or reader; the proxy participant is
  --   determined from the GUID and must exist.  

   function new_proxy_writer
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      ppguid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      as : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;
      plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist;
      dqueue : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_dqueue;
      evq : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.xeventq;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:809
   with Import => True, 
        Convention => C, 
        External_Name => "new_proxy_writer";

   function new_proxy_reader
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      ppguid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      as : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;
      plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      favours_ssm : int) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:810
   with Import => True, 
        Convention => C, 
        External_Name => "new_proxy_reader";

  -- To delete a proxy writer or reader; these synchronously hide it
  --   from the outside world, preventing it from being matched to a
  --   reader or writer. Actual deletion is scheduled in the future, when
  --   no outstanding references may still exist (determined by checking
  --   thread progress, &c.).  

   function delete_proxy_writer
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      isimplicit : int) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:821
   with Import => True, 
        Convention => C, 
        External_Name => "delete_proxy_writer";

   function delete_proxy_reader
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      isimplicit : int) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:822
   with Import => True, 
        Convention => C, 
        External_Name => "delete_proxy_reader";

   procedure update_proxy_reader
     (prd : access proxy_reader;
      seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      as : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:824
   with Import => True, 
        Convention => C, 
        External_Name => "update_proxy_reader";

   procedure update_proxy_writer
     (pwr : access proxy_writer;
      seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      as : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:825
   with Import => True, 
        Convention => C, 
        External_Name => "update_proxy_writer";

   procedure proxy_writer_set_alive_may_unlock (pwr : access proxy_writer; notify : Extensions.bool)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:827
   with Import => True, 
        Convention => C, 
        External_Name => "proxy_writer_set_alive_may_unlock";

   function proxy_writer_set_notalive (pwr : access proxy_writer; notify : Extensions.bool) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:828
   with Import => True, 
        Convention => C, 
        External_Name => "proxy_writer_set_notalive";

   function new_proxy_group
     (guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      name : Interfaces.C.Strings.chars_ptr;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:830
   with Import => True, 
        Convention => C, 
        External_Name => "new_proxy_group";

   procedure delete_proxy_group
     (entidx : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.entity_index;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      isimplicit : int)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:833
   with Import => True, 
        Convention => C, 
        External_Name => "delete_proxy_group";

  -- Call this to empty all address sets of all writers to stop all outgoing traffic, or to
  --   rebuild them all (which only makes sense after previously having emptied them all).  

   procedure rebuild_or_clear_writer_addrsets (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; rebuild : int)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:837
   with Import => True, 
        Convention => C, 
        External_Name => "rebuild_or_clear_writer_addrsets";

   procedure local_reader_ary_setfastpath_ok (x : access local_reader_ary; fastpath_ok : Extensions.bool)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:839
   with Import => True, 
        Convention => C, 
        External_Name => "local_reader_ary_setfastpath_ok";

   procedure connect_writer_with_proxy_reader_secure
     (wr : access writer;
      prd : access proxy_reader;
      tnow : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      crypto_handle : long)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:841
   with Import => True, 
        Convention => C, 
        External_Name => "connect_writer_with_proxy_reader_secure";

   procedure connect_reader_with_proxy_writer_secure
     (rd : access reader;
      pwr : access proxy_writer;
      tnow : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      crypto_handle : long)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:842
   with Import => True, 
        Convention => C, 
        External_Name => "connect_reader_with_proxy_writer_secure";

   procedure update_proxy_endpoint_matching (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; proxy_ep : access generic_proxy_endpoint)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:844
   with Import => True, 
        Convention => C, 
        External_Name => "update_proxy_endpoint_matching";

   procedure ddsi_make_writer_info
     (wrinfo : access CycloneDDS.Low_Level.dds_ddsi_ddsi_rhc_h.ddsi_writer_info;
      e : access constant entity_common;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      statusinfo : unsigned)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_entity.h:847
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_make_writer_info";

end CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
