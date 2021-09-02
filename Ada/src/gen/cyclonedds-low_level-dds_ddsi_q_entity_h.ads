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
limited with CycloneDDS.Low_Level.dds_ddsi_q_xevent_h;
with Interfaces.C.Strings;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h;
with CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
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

   DPG_LOCAL : constant := 1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:567
   DPG_REMOTE : constant := 2;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:568

   RTPS_PF_NO_BUILTIN_READERS : constant := 1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:624

   RTPS_PF_NO_BUILTIN_WRITERS : constant := 2;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:629

   RTPS_PF_PRIVILEGED_PP : constant := 4;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:633

   RTPS_PF_IS_DDSI2_PP : constant := 8;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:635

   RTPS_PF_ONLY_LOCAL : constant := 16;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:637

   CF_IMPLICITLY_CREATED_PROXYPP : constant := (2 ** 0);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:777

   CF_PARTICIPANT_IS_DDSI2 : constant := (2 ** 1);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:780

   CF_PROXYPP_NO_SPDP : constant := (2 ** 2);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:782

   type nn_reorder is null record;   -- incomplete struct

   type nn_defrag is null record;   -- incomplete struct

   type nn_dqueue is null record;   -- incomplete struct

   type ddsi2direct_directread_cb_t is access procedure
        (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.nn_rsample_info;
         arg2 : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.nn_rdata;
         arg3 : System.Address)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:59

   type entity_kind is 
     (EK_PARTICIPANT,
      EK_PROXY_PARTICIPANT,
      EK_TOPIC,
      EK_WRITER,
      EK_PROXY_WRITER,
      EK_READER,
      EK_PROXY_READER)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:61

   type liveliness_changed_data_extra is 
     (LIVELINESS_CHANGED_ADD_ALIVE,
      LIVELINESS_CHANGED_ADD_NOT_ALIVE,
      LIVELINESS_CHANGED_REMOVE_NOT_ALIVE,
      LIVELINESS_CHANGED_REMOVE_ALIVE,
      LIVELINESS_CHANGED_ALIVE_TO_NOT_ALIVE,
      LIVELINESS_CHANGED_NOT_ALIVE_TO_ALIVE)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:73

   type status_cb_data is record
      raw_status_id : aliased int;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:84
      extra : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:85
      handle : aliased Interfaces.Unsigned_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:86
      add : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:87
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:82

   subtype status_cb_data_t is status_cb_data;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:88

   type status_cb_t is access procedure (arg1 : System.Address; arg2 : access constant status_cb_data_t)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:90

   type prd_wr_match is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:93
      wr_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:94
      crypto_handle : aliased Interfaces.Integer_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:96
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:92

   type rd_pwr_match is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:101
      pwr_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:102
      pwr_alive : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:103
      pwr_alive_vclock : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:104
      ssm_mc_loc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_xlocator_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:106
      ssm_src_loc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_xlocator_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:107
      crypto_handle : aliased Interfaces.Integer_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:110
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:100

   type wr_rd_match is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:115
      rd_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:116
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:114

   type rd_wr_match is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:120
      wr_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:121
      wr_alive : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:122
      wr_alive_vclock : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:123
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:119

   type wr_prd_match is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:127
      prd_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:128
      assumed_in_sync : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:129
      has_replied_to_hb : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:130
      all_have_replied_to_hb : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:131
      is_reliable : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:132
      min_seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:133
      max_seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:134
      seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:135
      last_seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:136
      num_reliable_readers_where_seq_equals_max : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:137
      arbitrary_unacked_reader : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:138
      prev_acknack : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_count_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:139
      prev_nackfrag : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_count_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:140
      t_acknack_accepted : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_etime_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:141
      t_nackfrag_accepted : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_etime_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:142
      hb_to_ack_latency : aliased CycloneDDS.Low_Level.dds_ddsi_q_lat_estim_h.nn_lat_estim;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:143
      hb_to_ack_latency_tlastlog : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:144
      non_responsive_count : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:145
      rexmit_requests : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:146
      crypto_handle : aliased Interfaces.Integer_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:148
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:126

   type pwr_rd_match_syncstate is 
     (PRMSS_SYNC,
      PRMSS_TLCATCHUP,
      PRMSS_OUT_OF_SYNC)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:152

   type last_nack_summary is record
      seq_end_p1 : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:159
      seq_base : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:160
      frag_end_p1 : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:161
      frag_base : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:162
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:158

   type anon_struct4401 is record
      end_of_tl_seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:187
      reorder : access nn_reorder;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:188
   end record
   with Convention => C_Pass_By_Copy;
   type anon_union4400 (discr : unsigned := 0) is record
      case discr is
         when others =>
            not_in_sync : aliased anon_struct4401;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:189
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type pwr_rd_match is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:166
      rd_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:167
      tcreate : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:168
      count : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_count_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:169
      prev_heartbeat : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_count_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:170
      hb_timestamp : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:171
      t_heartbeat_accepted : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_etime_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:172
      t_last_nack : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:173
      t_last_ack : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:174
      last_seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:175
      last_nack : aliased last_nack_summary;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:176
      acknack_xevent : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.xevent;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:177
      in_sync : aliased pwr_rd_match_syncstate;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:178
      ack_requested : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:179
      heartbeat_since_ack : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:180
      heartbeatfrag_since_ack : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:181
      directed_heartbeat : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:182
      nack_sent_on_nackdelay : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:183
      filtered : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:184
      u : aliased anon_union4400;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:190
      crypto_handle : aliased Interfaces.Integer_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:192
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:165

   type entity_common is record
      kind : aliased entity_kind;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:201
      guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:202
      tupdate : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:203
      name : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:204
      iid : aliased Interfaces.Unsigned_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:205
      tk : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tkmap_h.ddsi_tkmap_instance;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:206
      lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:207
      onlylocal : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:208
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:209
      all_entities_avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:210
      qos_lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:221
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:200

   type reader;
   type local_reader_ary is record
      rdary_lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:225
      valid : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:226
      fastpath_ok : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:227
      n_readers : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:228
      rdary : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:229
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:224

   type avail_entityid_set is record
      x : aliased CycloneDDS.Low_Level.dds_ddsi_q_inverse_uint32_set_h.inverse_uint32_set;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:233
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:232

   type participant is record
      e : aliased entity_common;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:238
      lease_duration : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:239
      bes : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:240
      is_ddsi2_pp : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:241
      plist : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:242
      spdp_xevent : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.xevent;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:243
      pmd_update_xevent : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.xevent;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:244
      m_locator : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:245
      m_conn : CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:246
      avail_entityids : aliased avail_entityid_set;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:247
      refc_lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:248
      user_refc : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:249
      builtin_refc : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:250
      builtins_deleted : aliased int;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:251
      ldur_auto_wr : aliased CycloneDDS.Low_Level.dds_ddsrt_fibheap_h.ddsrt_fibheap_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:252
      minl_man : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_voidp_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:253
      leaseheap_man : aliased CycloneDDS.Low_Level.dds_ddsrt_fibheap_h.ddsrt_fibheap_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:254
      sec_attr : access CycloneDDS.Low_Level.dds_ddsi_ddsi_security_omg_h.participant_sec_attributes;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:256
      security_info : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_security_info_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:257
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:236

   type endpoint_common is record
      pp : access participant;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:278
      group_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:279
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:277

   type generic_endpoint is record
      e : aliased entity_common;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:286
      c : aliased endpoint_common;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:287
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:285

   type writer_state is 
     (WRST_OPERATIONAL,
      WRST_INTERRUPT,
      WRST_LINGERING,
      WRST_DELETING)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:290

   subtype seq_xmit_t is CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint64_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:297

   type ldur_fhnode is record
      heapnode : aliased CycloneDDS.Low_Level.dds_ddsrt_fibheap_h.ddsrt_fibheap_node_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:300
      ldur : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:301
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:299

   type writer is record
      e : aliased entity_common;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:306
      c : aliased endpoint_common;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:307
      status_cb : status_cb_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:308
      status_cb_entity : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:309
      throttle_cond : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_cond_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:310
      seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:311
      cs_seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:312
      seq_xmit : aliased seq_xmit_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:313
      min_local_readers_reject_seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:314
      hbcount : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_count_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:315
      hbfragcount : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_count_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:316
      throttling : aliased int;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:317
      the_hbcontrol : aliased CycloneDDS.Low_Level.dds_ddsi_q_hbcontrol_h.hbcontrol;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:318
      xqos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:319
      state : aliased writer_state;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:320
      reliable : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:321
      handle_as_transient_local : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:322
      force_md5_keyhash : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:323
      retransmitting : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:324
      alive : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:325
      test_ignore_acknack : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:326
      test_suppress_retransmit : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:327
      test_suppress_heartbeat : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:328
      test_drop_outgoing_data : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:329
      supports_ssm : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:331
      ssm_as : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:332
      alive_vclock : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:334
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:335
      as : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:336
      as_group : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:337
      heartbeat_xevent : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.xevent;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:338
      lease_duration : access ldur_fhnode;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:339
      the_whc : access CycloneDDS.Low_Level.dds_ddsi_q_whc_h.whc;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:340
      whc_low : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:341
      whc_high : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:341
      t_rexmit_start : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_etime_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:342
      t_rexmit_end : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_etime_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:343
      t_whc_high_upd : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_etime_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:344
      init_burst_size_limit : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:345
      rexmit_burst_size_limit : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:346
      num_readers : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:347
      num_reliable_readers : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:348
      num_readers_requesting_keyhash : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:349
      readers : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_tree_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:350
      local_readers : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_tree_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:351
      network_partition : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h.ddsi_config_networkpartition_listelem;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:353
      num_acks_received : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:355
      num_nacks_received : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:356
      throttle_count : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:357
      throttle_tracing : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:358
      rexmit_count : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:359
      rexmit_lost_count : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:360
      rexmit_bytes : aliased Interfaces.Unsigned_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:361
      time_throttled : aliased Interfaces.Unsigned_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:362
      time_retransmit : aliased Interfaces.Unsigned_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:363
      evq : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.xeventq;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:364
      rdary : aliased local_reader_ary;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:365
      the_lease : access CycloneDDS.Low_Level.dds_ddsi_q_lease_h.lease;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:366
      sec_attr : access CycloneDDS.Low_Level.dds_ddsi_ddsi_security_omg_h.writer_sec_attributes;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:368
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:304

   function writer_read_seq_xmit (wr : access constant writer) return CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:372
   with Import => True, 
        Convention => C, 
        External_Name => "writer_read_seq_xmit";

   procedure writer_update_seq_xmit (wr : access writer; nv : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:376
   with Import => True, 
        Convention => C, 
        External_Name => "writer_update_seq_xmit";

   type reader is record
      e : aliased entity_common;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:386
      c : aliased endpoint_common;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:387
      status_cb : status_cb_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:388
      status_cb_entity : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:389
      rhc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_rhc_h.ddsi_rhc;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:390
      xqos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:391
      reliable : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:392
      handle_as_transient_local : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:393
      request_keyhash : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:394
      favours_ssm : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:396
      init_acknack_count : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_count_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:398
      uc_as : access CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h.networkpartition_address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:400
      mc_as : access CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h.networkpartition_address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:401
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:403
      num_writers : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:404
      writers : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_tree_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:405
      local_writers : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_tree_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:406
      ddsi2direct_cb : ddsi2direct_directread_cb_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:407
      ddsi2direct_cbarg : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:408
      sec_attr : access CycloneDDS.Low_Level.dds_ddsi_ddsi_security_omg_h.reader_sec_attributes;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:410
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:384

   type proxy_endpoint_common;
   type proxy_participant is record
      e : aliased entity_common;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:421
      refc : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:422
      vendor : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:423
      bes : aliased unsigned;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:424
      privileged_pp_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:425
      plist : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:426
      minl_auto : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_voidp_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:427
      leaseheap_auto : aliased CycloneDDS.Low_Level.dds_ddsrt_fibheap_h.ddsrt_fibheap_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:428
      minl_man : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_voidp_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:429
      leaseheap_man : aliased CycloneDDS.Low_Level.dds_ddsrt_fibheap_h.ddsrt_fibheap_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:430
      the_lease : access CycloneDDS.Low_Level.dds_ddsi_q_lease_h.lease;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:431
      as_default : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:432
      as_meta : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:433
      endpoints : access proxy_endpoint_common;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:434
      groups : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_tree_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:438
      seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:439
      receive_buffer_size : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:440
      implicitly_created : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:441
      is_ddsi2_pp : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:442
      minimal_bes_mode : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:443
      lease_expired : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:444
      deleting : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:445
      proxypp_have_spdp : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:446
      owns_lease : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:447
      redundant_networking : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:448
      security_info : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_security_info_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:450
      sec_attr : access CycloneDDS.Low_Level.dds_ddsi_ddsi_security_omg_h.proxy_participant_sec_attributes;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:451
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:419

   type proxy_group is record
      avlnode : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_node_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:474
      guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:475
      name : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:476
      proxypp : access proxy_participant;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:477
      xqos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:478
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:473

   type proxy_endpoint_common is record
      proxypp : access proxy_participant;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:483
      next_ep : access proxy_endpoint_common;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:484
      prev_ep : access proxy_endpoint_common;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:485
      xqos : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:486
      as : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:487
      group_guid : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:488
      vendor : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:489
      seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:490
      security_info : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_security_info_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:496
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:481

   type generic_proxy_endpoint is record
      e : aliased entity_common;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:501
      c : aliased proxy_endpoint_common;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:502
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:500

   type proxy_writer is record
      e : aliased entity_common;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:506
      c : aliased proxy_endpoint_common;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:507
      readers : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_tree_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:508
      n_reliable_readers : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:509
      n_readers_out_of_sync : aliased Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:510
      last_seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:511
      last_fragnum : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:512
      nackfragcount : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_count_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:513
      next_deliv_seq_lowword : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:514
      deliver_synchronously : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:515
      have_seen_heartbeat : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:516
      local_matching_inprogress : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:517
      alive : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:518
      filtered : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:519
      redundant_networking : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:520
      supports_ssm : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:522
      alive_vclock : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:527
      defrag : access nn_defrag;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:528
      reorder : access nn_reorder;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:529
      dqueue : access nn_dqueue;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:530
      evq : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.xeventq;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:531
      rdary : aliased local_reader_ary;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:532
      ddsi2direct_cb : ddsi2direct_directread_cb_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:533
      ddsi2direct_cbarg : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:534
      the_lease : access CycloneDDS.Low_Level.dds_ddsi_q_lease_h.lease;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:535
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:505

   type proxy_reader;
   type filter_fn_t is access function
        (arg1 : access writer;
         arg2 : access proxy_reader;
         arg3 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata) return int
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:539

   type proxy_reader is record
      e : aliased entity_common;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:542
      c : aliased proxy_endpoint_common;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:543
      deleting : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:544
      is_fict_trans_reader : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:545
      requests_keyhash : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:546
      redundant_networking : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:547
      favours_ssm : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:549
      writers : aliased CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_tree_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:554
      receive_buffer_size : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:555
      filter : filter_fn_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:556
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:541

   wr_readers_treedef : aliased constant CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_treedef_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:559
   with Import => True, 
        Convention => C, 
        External_Name => "wr_readers_treedef";

   wr_local_readers_treedef : aliased constant CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_treedef_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:560
   with Import => True, 
        Convention => C, 
        External_Name => "wr_local_readers_treedef";

   rd_writers_treedef : aliased constant CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_treedef_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:561
   with Import => True, 
        Convention => C, 
        External_Name => "rd_writers_treedef";

   rd_local_writers_treedef : aliased constant CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_treedef_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:562
   with Import => True, 
        Convention => C, 
        External_Name => "rd_local_writers_treedef";

   pwr_readers_treedef : aliased constant CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_treedef_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:563
   with Import => True, 
        Convention => C, 
        External_Name => "pwr_readers_treedef";

   prd_writers_treedef : aliased constant CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_treedef_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:564
   with Import => True, 
        Convention => C, 
        External_Name => "prd_writers_treedef";

   deleted_participants_treedef : aliased constant CycloneDDS.Low_Level.dds_ddsrt_avl_h.ddsrt_avl_treedef_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:565
   with Import => True, 
        Convention => C, 
        External_Name => "deleted_participants_treedef";

   type deleted_participants_admin is null record;   -- incomplete struct

   function deleted_participants_admin_new (logcfg : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h.ddsrt_log_cfg; c_delay : Interfaces.Integer_64) return access deleted_participants_admin  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:570
   with Import => True, 
        Convention => C, 
        External_Name => "deleted_participants_admin_new";

   procedure deleted_participants_admin_free (admin : access deleted_participants_admin)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:571
   with Import => True, 
        Convention => C, 
        External_Name => "deleted_participants_admin_free";

   function is_deleted_participant_guid
     (admin : access deleted_participants_admin;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      for_what : unsigned) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:572
   with Import => True, 
        Convention => C, 
        External_Name => "is_deleted_participant_guid";

   function is_null_guid (guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:574
   with Import => True, 
        Convention => C, 
        External_Name => "is_null_guid";

   function to_entityid (u : unsigned) return CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:575
   with Import => True, 
        Convention => C, 
        External_Name => "to_entityid";

   function is_builtin_entityid (id : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t; vendorid : CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:576
   with Import => True, 
        Convention => C, 
        External_Name => "is_builtin_entityid";

   function is_builtin_endpoint (id : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t; vendorid : CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:577
   with Import => True, 
        Convention => C, 
        External_Name => "is_builtin_endpoint";

   function is_builtin_topic (id : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t; vendorid : CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:578
   with Import => True, 
        Convention => C, 
        External_Name => "is_builtin_topic";

   function is_local_orphan_endpoint (e : access constant entity_common) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:579
   with Import => True, 
        Convention => C, 
        External_Name => "is_local_orphan_endpoint";

   function is_topic_entityid (id : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:580
   with Import => True, 
        Convention => C, 
        External_Name => "is_topic_entityid";

   function is_writer_entityid (id : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:581
   with Import => True, 
        Convention => C, 
        External_Name => "is_writer_entityid";

   function is_reader_entityid (id : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:582
   with Import => True, 
        Convention => C, 
        External_Name => "is_reader_entityid";

   function is_keyed_endpoint_entityid (id : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:583
   with Import => True, 
        Convention => C, 
        External_Name => "is_keyed_endpoint_entityid";

   function get_entity_vendorid (e : access constant entity_common) return CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:584
   with Import => True, 
        Convention => C, 
        External_Name => "get_entity_vendorid";

   function new_participant_guid
     (ppguid : access CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      flags : unsigned;
      plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:664
   with Import => True, 
        Convention => C, 
        External_Name => "new_participant_guid";

   function new_participant
     (ppguid : access CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      flags : unsigned;
      plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:688
   with Import => True, 
        Convention => C, 
        External_Name => "new_participant";

   function delete_participant (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; ppguid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:714
   with Import => True, 
        Convention => C, 
        External_Name => "delete_participant";

   procedure update_participant_plist (pp : access participant; plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:715
   with Import => True, 
        Convention => C, 
        External_Name => "update_participant_plist";

   function get_entity_instance_id (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return Interfaces.Unsigned_64  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:716
   with Import => True, 
        Convention => C, 
        External_Name => "get_entity_instance_id";

   function pp_get_pmd_interval (pp : access participant) return CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:720
   with Import => True, 
        Convention => C, 
        External_Name => "pp_get_pmd_interval";

   function get_builtin_writer (pp : access constant participant; entityid : unsigned) return access writer  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:725
   with Import => True, 
        Convention => C, 
        External_Name => "get_builtin_writer";

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
      status_cb_arg : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:731
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
      status_cb_arg : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:732
   with Import => True, 
        Convention => C, 
        External_Name => "new_reader";

   procedure update_reader_qos (rd : access reader; xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:734
   with Import => True, 
        Convention => C, 
        External_Name => "update_reader_qos";

   procedure update_writer_qos (wr : access writer; xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:735
   with Import => True, 
        Convention => C, 
        External_Name => "update_writer_qos";

   type whc_node is null record;   -- incomplete struct

   function remove_acked_messages
     (wr : access writer;
      whcst : access CycloneDDS.Low_Level.dds_ddsi_q_whc_h.whc_state;
      deferred_free_list : System.Address) return unsigned  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:739
   with Import => True, 
        Convention => C, 
        External_Name => "remove_acked_messages";

   function writer_max_drop_seq (wr : access constant writer) return CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:740
   with Import => True, 
        Convention => C, 
        External_Name => "writer_max_drop_seq";

   function writer_must_have_hb_scheduled (wr : access constant writer; whcst : access constant CycloneDDS.Low_Level.dds_ddsi_q_whc_h.whc_state) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:741
   with Import => True, 
        Convention => C, 
        External_Name => "writer_must_have_hb_scheduled";

   procedure writer_set_retransmitting (wr : access writer)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:742
   with Import => True, 
        Convention => C, 
        External_Name => "writer_set_retransmitting";

   procedure writer_clear_retransmitting (wr : access writer)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:743
   with Import => True, 
        Convention => C, 
        External_Name => "writer_clear_retransmitting";

   function writer_wait_for_acks
     (wr : access writer;
      rdguid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      abstimeout : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_time_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:744
   with Import => True, 
        Convention => C, 
        External_Name => "writer_wait_for_acks";

   function unblock_throttled_writer (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:746
   with Import => True, 
        Convention => C, 
        External_Name => "unblock_throttled_writer";

   function delete_writer (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:747
   with Import => True, 
        Convention => C, 
        External_Name => "delete_writer";

   function delete_writer_nolinger (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:748
   with Import => True, 
        Convention => C, 
        External_Name => "delete_writer_nolinger";

   function delete_writer_nolinger_locked (wr : access writer) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:749
   with Import => True, 
        Convention => C, 
        External_Name => "delete_writer_nolinger_locked";

   function delete_reader (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:751
   with Import => True, 
        Convention => C, 
        External_Name => "delete_reader";

   type local_orphan_writer is record
      wr : aliased writer;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:754
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:753

   function new_local_orphan_writer
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      entityid : CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t;
      topic_name : Interfaces.C.Strings.chars_ptr;
      c_type : access CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      the_whc : access CycloneDDS.Low_Level.dds_ddsi_q_whc_h.whc) return access local_orphan_writer  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:756
   with Import => True, 
        Convention => C, 
        External_Name => "new_local_orphan_writer";

   procedure delete_local_orphan_writer (wr : access local_orphan_writer)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:757
   with Import => True, 
        Convention => C, 
        External_Name => "delete_local_orphan_writer";

   procedure writer_set_alive_may_unlock (wr : access writer; notify : Extensions.bool)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:759
   with Import => True, 
        Convention => C, 
        External_Name => "writer_set_alive_may_unlock";

   function writer_set_notalive (wr : access writer; notify : Extensions.bool) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:760
   with Import => True, 
        Convention => C, 
        External_Name => "writer_set_notalive";

   function new_proxy_participant
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      bes : Interfaces.Unsigned_32;
      privileged_pp_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      as_default : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;
      as_meta : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;
      plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist;
      tlease_dur : CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;
      vendor : CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t;
      custom_flags : unsigned;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:784
   with Import => True, 
        Convention => C, 
        External_Name => "new_proxy_participant";

   function delete_proxy_participant_by_guid
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      isimplicit : int) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:785
   with Import => True, 
        Convention => C, 
        External_Name => "delete_proxy_participant_by_guid";

   function update_proxy_participant_plist_locked
     (proxypp : access proxy_participant;
      seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      datap : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:787
   with Import => True, 
        Convention => C, 
        External_Name => "update_proxy_participant_plist_locked";

   function update_proxy_participant_plist
     (proxypp : access proxy_participant;
      seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      datap : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:788
   with Import => True, 
        Convention => C, 
        External_Name => "update_proxy_participant_plist";

   procedure proxy_participant_reassign_lease (proxypp : access proxy_participant; newlease : access CycloneDDS.Low_Level.dds_ddsi_q_lease_h.lease)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:789
   with Import => True, 
        Convention => C, 
        External_Name => "proxy_participant_reassign_lease";

   procedure purge_proxy_participants
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_xlocator_t;
      delete_from_as_disc : Extensions.bool)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:791
   with Import => True, 
        Convention => C, 
        External_Name => "purge_proxy_participants";

   function new_proxy_writer
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      ppguid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      as : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;
      plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist;
      dqueue : access nn_dqueue;
      evq : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.xeventq;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:809
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
      favours_ssm : int) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:810
   with Import => True, 
        Convention => C, 
        External_Name => "new_proxy_reader";

   function delete_proxy_writer
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      isimplicit : int) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:821
   with Import => True, 
        Convention => C, 
        External_Name => "delete_proxy_writer";

   function delete_proxy_reader
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      isimplicit : int) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:822
   with Import => True, 
        Convention => C, 
        External_Name => "delete_proxy_reader";

   procedure update_proxy_reader
     (prd : access proxy_reader;
      seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      as : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:824
   with Import => True, 
        Convention => C, 
        External_Name => "update_proxy_reader";

   procedure update_proxy_writer
     (pwr : access proxy_writer;
      seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      as : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:825
   with Import => True, 
        Convention => C, 
        External_Name => "update_proxy_writer";

   procedure proxy_writer_set_alive_may_unlock (pwr : access proxy_writer; notify : Extensions.bool)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:827
   with Import => True, 
        Convention => C, 
        External_Name => "proxy_writer_set_alive_may_unlock";

   function proxy_writer_set_notalive (pwr : access proxy_writer; notify : Extensions.bool) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:828
   with Import => True, 
        Convention => C, 
        External_Name => "proxy_writer_set_notalive";

   function new_proxy_group
     (guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      name : Interfaces.C.Strings.chars_ptr;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:830
   with Import => True, 
        Convention => C, 
        External_Name => "new_proxy_group";

   type entity_index is null record;   -- incomplete struct

   procedure delete_proxy_group
     (entidx : access entity_index;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      timestamp : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;
      isimplicit : int)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:833
   with Import => True, 
        Convention => C, 
        External_Name => "delete_proxy_group";

   procedure rebuild_or_clear_writer_addrsets (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; rebuild : int)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:837
   with Import => True, 
        Convention => C, 
        External_Name => "rebuild_or_clear_writer_addrsets";

   procedure local_reader_ary_setfastpath_ok (x : access local_reader_ary; fastpath_ok : Extensions.bool)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:839
   with Import => True, 
        Convention => C, 
        External_Name => "local_reader_ary_setfastpath_ok";

   procedure connect_writer_with_proxy_reader_secure
     (wr : access writer;
      prd : access proxy_reader;
      tnow : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      crypto_handle : Interfaces.Integer_64)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:841
   with Import => True, 
        Convention => C, 
        External_Name => "connect_writer_with_proxy_reader_secure";

   procedure connect_reader_with_proxy_writer_secure
     (rd : access reader;
      pwr : access proxy_writer;
      tnow : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      crypto_handle : Interfaces.Integer_64)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:842
   with Import => True, 
        Convention => C, 
        External_Name => "connect_reader_with_proxy_writer_secure";

   procedure update_proxy_endpoint_matching (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; proxy_ep : access generic_proxy_endpoint)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:844
   with Import => True, 
        Convention => C, 
        External_Name => "update_proxy_endpoint_matching";

   procedure ddsi_make_writer_info
     (wrinfo : access CycloneDDS.Low_Level.dds_ddsi_ddsi_rhc_h.ddsi_writer_info;
      e : access constant entity_common;
      xqos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      statusinfo : Interfaces.Unsigned_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_entity.h:847
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_make_writer_info";

end CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
