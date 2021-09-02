pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

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
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_xevent_h;
with CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h;
with CycloneDDS.Low_Level.dds_ddsrt_fibheap_h;
with CycloneDDS.Low_Level.dds_ddsrt_atomics_h;

with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_addrset_h;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h;
with CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h;
with Interfaces.C.Extensions;

limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_builtin_topic_if_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h is

   MAX_XMIT_CONNS : constant := 4;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:150

   MAX_RECV_THREADS : constant := 3;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:222

   type nn_xmsgpool is null record;   -- incomplete struct

   type gcreq_queue is null record;   -- incomplete struct

   type debug_monitor is null record;   -- incomplete struct

   type dds_security_context is null record;   -- incomplete struct

   type dds_security_match_index is null record;   -- incomplete struct

   type ddsi_hsadmin is null record;   -- incomplete struct

   type config_in_addr_node;
   type config_in_addr_node is record
      loc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:55
      next : access config_in_addr_node;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:56
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:54

   type recvips_mode is 
     (RECVIPS_MODE_ALL,
      RECVIPS_MODE_ANY,
      RECVIPS_MODE_PREFERRED,
      RECVIPS_MODE_NONE,
      RECVIPS_MODE_SOME)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:59

   type recv_thread_mode is 
     (RTM_SINGLE,
      RTM_MANY)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:67

   type nn_rbufpool is null record;   -- incomplete struct

   type ddsi_domaingv;
   type anon_struct4718 is record
      loc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:78
      conn : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:79
   end record
   with Convention => C_Pass_By_Copy;
   type anon_struct4719 is record
      ws : CycloneDDS.Low_Level.dds_ddsi_q_sockwaitset_h.os_sockWaitset;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:82
   end record
   with Convention => C_Pass_By_Copy;
   type anon_union4717 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            single : aliased anon_struct4718;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:80
         when others =>
            many : aliased anon_struct4719;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:83
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type recv_thread_arg is record
      mode : aliased recv_thread_mode;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:73
      rbpool : access nn_rbufpool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:74
      gv : access ddsi_domaingv;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:75
      u : aliased anon_union4717;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:84
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:72

   type recv_thread is record
      name : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:225
      ts : access CycloneDDS.Low_Level.dds_ddsi_q_thread_h.thread_state1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:226
      arg : aliased recv_thread_arg;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:227
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:224

   type nn_xpack is null record;   -- incomplete struct

   type nn_group_membership is null record;   -- incomplete struct

   type ddsrt_hh is null record;   -- incomplete struct

   type anon_array4721 is array (0 .. 3) of access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn;
   type anon_array4722 is array (0 .. 3) of aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_xlocator_t;
   type anon_array4724 is array (0 .. 3) of aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_ownip_h.nn_interface;
   type anon_array4728 is array (0 .. 2) of aliased recv_thread;
   type ddsi_domaingv is record
      c_terminate : aliased int;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:90
      deaf : aliased int;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:91
      mute : aliased int;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:92
      logconfig : aliased CycloneDDS.Low_Level.dds_ddsrt_log_h.ddsrt_log_cfg;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:94
      config : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_config_h.ddsi_config;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:95
      m_tkmap : access CycloneDDS.Low_Level.dds_ddsc_dds_rhc_h.ddsi_tkmap;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:97
      the_entity_index : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:101
      xevents : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.xeventq;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:104
      the_gcreq_queue : access gcreq_queue;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:107
      leaseheap_lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:110
      leaseheap : aliased CycloneDDS.Low_Level.dds_ddsrt_fibheap_h.ddsrt_fibheap_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:111
      ddsi_tran_factories : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_factory;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:114
      m_factory : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_factory;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:115
      disc_conn_mc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:122
      data_conn_mc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:123
      disc_conn_uc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:124
      data_conn_uc : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:125
      xmit_conns : anon_array4721;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:151
      intf_xlocators : aliased anon_array4722;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:152
      listener : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_listener;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:155
      participant_set_generation : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:160
      participant_set_lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:165
      participant_set_cond : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_cond_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:166
      nparticipants : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:167
      privileged_pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:173
      privileged_pp_lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:174
      deleted_participants : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.deleted_participants_admin;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:177
      ppguid_base : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:181
      n_interfaces : aliased int;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:184
      interfaces : aliased anon_array4724;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:185
      using_link_local_intf : aliased int;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:188
      the_recvips_mode : aliased recvips_mode;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:193
      recvips : access config_in_addr_node;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:194
      extmask : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:195
      loc_spdp_mc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:199
      loc_meta_mc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:200
      loc_meta_uc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:201
      loc_default_mc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:202
      loc_default_uc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:203
      as_disc : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:213
      as_disc_group : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:214
      lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:216
      n_recv_threads : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:223
      recv_threads : aliased anon_array4728;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:228
      listen_ts : access CycloneDDS.Low_Level.dds_ddsi_q_thread_h.thread_state1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:231
      rtps_keepgoing : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:234
      tstart : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:238
      default_local_plist_pp : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:245
      spdp_endpoint_xqos : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:246
      builtin_endpoint_xqos_rd : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:247
      builtin_endpoint_xqos_wr : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:248
      builtin_secure_volatile_xqos_rd : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:254
      builtin_secure_volatile_xqos_wr : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:255
      builtin_stateless_xqos_rd : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:256
      builtin_stateless_xqos_wr : aliased CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:257
      spdp_lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:264
      spdp_defrag : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_defrag;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:265
      spdp_reorder : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_reorder;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:266
      builtins_dqueue : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_dqueue;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:270
      debmon : access debug_monitor;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:272
      networkQueueId : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:275
      channel_reader_ts : access CycloneDDS.Low_Level.dds_ddsi_q_thread_h.thread_state1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:276
      user_dqueue : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_dqueue;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:279
      serpool : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h.serdatapool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:284
      xmsgpool : access nn_xmsgpool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:285
      spdp_type : access CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:286
      sedp_reader_type : access CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:287
      sedp_writer_type : access CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:288
      sedp_topic_type : access CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:289
      pmd_type : access CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:290
      spdp_secure_type : access CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:296
      sedp_reader_secure_type : access CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:297
      sedp_writer_secure_type : access CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:298
      pmd_secure_type : access CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:299
      pgm_stateless_type : access CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:300
      pgm_volatile_type : access CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:301
      sendq_lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:304
      sendq_cond : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_cond_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:305
      sendq_length : aliased unsigned;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:306
      sendq_head : access nn_xpack;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:307
      sendq_tail : access nn_xpack;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:308
      sendq_stop : aliased int;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:309
      sendq_ts : access CycloneDDS.Low_Level.dds_ddsi_q_thread_h.thread_state1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:310
      sendq_running : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:311
      sendq_running_lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:312
      pcap_fp : access CycloneDDS.Low_Level.x86_64_linux_gnu_bits_types_struct_FILE_h.u_IO_FILE;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:315
      pcap_lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:316
      builtin_topic_interface : access CycloneDDS.Low_Level.dds_ddsi_ddsi_builtin_topic_if_h.ddsi_builtin_topic_interface;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:318
      mship : access nn_group_membership;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:320
      sertypes_lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:322
      sertypes : access ddsrt_hh;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:323
      new_topic_lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:335
      new_topic_cond : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_cond_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:336
      new_topic_version : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:337
      security_context : access dds_security_context;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:341
      hsadmin : access ddsi_hsadmin;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:342
      handshake_include_optional : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:343
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_domaingv.h:89

end CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
