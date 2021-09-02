pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;
with System;


with CycloneDDS.Low_Level.dds_ddsrt_atomics_h;
with Interfaces.C.Extensions;
limited with CycloneDDS.Low_Level.dds_ddsi_q_addrset_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h;
with CycloneDDS.Low_Level.dds_ddsi_q_rtps_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;
limited with CycloneDDS.Low_Level.dds_ddsrt_log_h;
with CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_protocol_h;
with Interfaces.C.Strings;

package CycloneDDS.Low_Level.dds_ddsi_q_radmin_h is

   --  arg-macro: function NN_RMSG_PAYLOAD (m)
   --    return (unsigned char *) (m + 1);
   --  arg-macro: function NN_RMSG_PAYLOADOFF (m, o)
   --    return NN_RMSG_PAYLOAD (m) + (o);
   --  unsupported macro: ALIGNOF_RMSG (sizeof(void *) > 8 ? sizeof(void *) : 8)
   --  arg-macro: function NN_ZOFF_TO_OFF (zoff)
   --    return (unsigned) (zoff);
   --  arg-macro: function NN_OFF_TO_ZOFF (off)
   --    return assert ((off) < 65536  and then  ((off) mod 4) = 0), ((unsigned short) (off));
   --  arg-macro: procedure NN_RDATA_PAYLOAD_OFF (rdata)
   --    NN_ZOFF_TO_OFF ((rdata).payload_zoff)
   --  arg-macro: procedure NN_RDATA_SUBMSG_OFF (rdata)
   --    NN_ZOFF_TO_OFF ((rdata).submsg_zoff)
   --  arg-macro: procedure NN_RDATA_KEYHASH_OFF (rdata)
   --    NN_ZOFF_TO_OFF ((rdata).keyhash_zoff)
   NN_REORDER_ACCEPT : constant := 0;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:209
   NN_REORDER_TOO_OLD : constant := -1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:210
   NN_REORDER_REJECT : constant := -2;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:211

   type nn_rbuf is null record;   -- incomplete struct

   type nn_rsample is null record;   -- incomplete struct

   type nn_fragment_number_set is null record;   -- incomplete struct

   type nn_sequence_number_set is null record;   -- incomplete struct

   type nn_rsample_info;
   type nn_rdata;
   type nn_dqueue_handler_t is access function
        (arg1 : access constant nn_rsample_info;
         arg2 : access constant nn_rdata;
         arg3 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
         arg4 : System.Address) return int
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:46

   type nn_rmsg_chunk;
   type anon_union5094 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            size : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:56
         when 1 =>
            l : aliased Interfaces.Integer_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:59
         when 2 =>
            d : aliased double;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:60
         when others =>
            p : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:61
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type nn_rmsg_chunk is record
      rbuf : access nn_rbuf;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:49
      next : access nn_rmsg_chunk;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:50
      u : aliased anon_union5094;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:62
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:48

   type nn_rmsg is record
      refcount : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:81
      lastchunk : access nn_rmsg_chunk;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:100
      trace : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:103
      chunk : aliased nn_rmsg_chunk;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:105
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:67

   subtype anon_array1120 is Interfaces.C.char_array (0 .. 0);
   type static_assert_107 is record
      cond : aliased anon_array1120;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:107
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:107

   type receiver_state is record
      src_guid_prefix : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_prefix_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:119
      dst_guid_prefix : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_prefix_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:120
      reply_locators : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:121
      forme : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:122
      rtps_encoded : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:123
      vendor : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:124
      protocol_version : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.nn_protocol_version_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:125
      conn : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:126
      srcloc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:127
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:128
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:118

   type nn_rsample_info is record
      seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:132
      rst : access receiver_state;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:133
      pwr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_writer;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:134
      size : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:135
      fragsize : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:136
      timestamp : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:137
      reception_timestamp : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:138
      statusinfo : Extensions.Unsigned_2;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:139
      bswap : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:140
      complex_qos : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:141
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:131

   type nn_rdata is record
      rmsg : access nn_rmsg;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:145
      nextfrag : access nn_rdata;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:146
      min : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:147
      maxp1 : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:147
      submsg_zoff : aliased Interfaces.Unsigned_16;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:148
      payload_zoff : aliased Interfaces.Unsigned_16;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:149
      keyhash_zoff : aliased Interfaces.Unsigned_16;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:150
      refcount_bias_added : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:152
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:144

   type nn_rsample_chain_elem;
   type nn_rsample_chain_elem is record
      fragchain : access nn_rdata;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:180
      next : access nn_rsample_chain_elem;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:181
      sampleinfo : access nn_rsample_info;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:186
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:177

   type nn_rsample_chain is record
      first : access nn_rsample_chain_elem;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:190
      last : access nn_rsample_chain_elem;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:191
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:189

   type nn_reorder_mode is 
     (NN_REORDER_MODE_NORMAL,
      NN_REORDER_MODE_MONOTONICALLY_INCREASING,
      NN_REORDER_MODE_ALWAYS_DELIVER)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:194

   type nn_defrag_drop_mode is 
     (NN_DEFRAG_DROP_OLDEST,
      NN_DEFRAG_DROP_LATEST)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:200

   subtype nn_reorder_result_t is Interfaces.Integer_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:205

   type nn_dqueue_callback_t is access procedure (arg1 : System.Address)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:213

   function nn_rbufpool_new
     (logcfg : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h.ddsrt_log_cfg;
      rbuf_size : Interfaces.Unsigned_32;
      max_rmsg_size : Interfaces.Unsigned_32) return access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_rbufpool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "nn_rbufpool_new";

   procedure nn_rbufpool_setowner (rbp : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_rbufpool; tid : CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h.ddsrt_thread_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "nn_rbufpool_setowner";

   procedure nn_rbufpool_free (rbp : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_rbufpool)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "nn_rbufpool_free";

   function nn_rmsg_new (rbufpool : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_rbufpool) return access nn_rmsg  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "nn_rmsg_new";

   procedure nn_rmsg_setsize (rmsg : access nn_rmsg; size : Interfaces.Unsigned_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "nn_rmsg_setsize";

   procedure nn_rmsg_commit (rmsg : access nn_rmsg)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "nn_rmsg_commit";

   procedure nn_rmsg_free (rmsg : access nn_rmsg)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "nn_rmsg_free";

   function nn_rmsg_alloc (rmsg : access nn_rmsg; size : Interfaces.Unsigned_32) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:227
   with Import => True, 
        Convention => C, 
        External_Name => "nn_rmsg_alloc";

   function nn_rdata_new
     (rmsg : access nn_rmsg;
      start : Interfaces.Unsigned_32;
      endp1 : Interfaces.Unsigned_32;
      submsg_offset : Interfaces.Unsigned_32;
      payload_offset : Interfaces.Unsigned_32;
      keyhash_offset : Interfaces.Unsigned_32) return access nn_rdata  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "nn_rdata_new";

   function nn_rdata_newgap (rmsg : access nn_rmsg) return access nn_rdata  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "nn_rdata_newgap";

   procedure nn_fragchain_adjust_refcount (frag : access nn_rdata; adjust : int)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "nn_fragchain_adjust_refcount";

   procedure nn_fragchain_unref (frag : access nn_rdata)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "nn_fragchain_unref";

   function nn_defrag_new
     (logcfg : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h.ddsrt_log_cfg;
      drop_mode : nn_defrag_drop_mode;
      max_samples : Interfaces.Unsigned_32) return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_defrag  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "nn_defrag_new";

   procedure nn_defrag_free (defrag : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_defrag)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:235
   with Import => True, 
        Convention => C, 
        External_Name => "nn_defrag_free";

   function nn_defrag_rsample
     (defrag : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_defrag;
      rdata : access nn_rdata;
      sampleinfo : access constant nn_rsample_info) return access nn_rsample  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "nn_defrag_rsample";

   procedure nn_defrag_notegap
     (defrag : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_defrag;
      min : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      maxp1 : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:237
   with Import => True, 
        Convention => C, 
        External_Name => "nn_defrag_notegap";

   type nn_defrag_nackmap_result is 
     (DEFRAG_NACKMAP_UNKNOWN_SAMPLE,
      DEFRAG_NACKMAP_ALL_ADVERTISED_FRAGMENTS_KNOWN,
      DEFRAG_NACKMAP_FRAGMENTS_MISSING)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:239

   function nn_defrag_nackmap
     (defrag : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_defrag;
      seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      maxfragnum : Interfaces.Unsigned_32;
      map : access CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_fragment_number_set_header;
      mapbits : access Interfaces.Unsigned_32;
      maxsz : Interfaces.Unsigned_32) return nn_defrag_nackmap_result  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "nn_defrag_nackmap";

   procedure nn_defrag_prune
     (defrag : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_defrag;
      dst : access CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_prefix;
      min : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "nn_defrag_prune";

   function nn_reorder_new
     (logcfg : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h.ddsrt_log_cfg;
      mode : nn_reorder_mode;
      max_samples : Interfaces.Unsigned_32;
      late_ack_mode : Extensions.bool) return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_reorder  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "nn_reorder_new";

   procedure nn_reorder_free (r : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_reorder)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:250
   with Import => True, 
        Convention => C, 
        External_Name => "nn_reorder_free";

   function nn_reorder_rsample_dup_first (rmsg : access nn_rmsg; rsampleiv : access nn_rsample) return access nn_rsample  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:251
   with Import => True, 
        Convention => C, 
        External_Name => "nn_reorder_rsample_dup_first";

   function nn_rsample_fragchain (rsample : access nn_rsample) return access nn_rdata  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "nn_rsample_fragchain";

   function nn_reorder_rsample
     (sc : access nn_rsample_chain;
      reorder : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_reorder;
      rsampleiv : access nn_rsample;
      refcount_adjust : access int;
      delivery_queue_full_p : int) return nn_reorder_result_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "nn_reorder_rsample";

   function nn_reorder_gap
     (sc : access nn_rsample_chain;
      reorder : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_reorder;
      rdata : access nn_rdata;
      min : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      maxp1 : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      refcount_adjust : access int) return nn_reorder_result_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "nn_reorder_gap";

   procedure nn_reorder_drop_upto (reorder : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_reorder; maxp1 : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "nn_reorder_drop_upto";

   function nn_reorder_wantsample (reorder : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_reorder; seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "nn_reorder_wantsample";

   function nn_reorder_nackmap
     (reorder : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_reorder;
      base : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      maxseq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      map : access CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_sequence_number_set_header;
      mapbits : access Interfaces.Unsigned_32;
      maxsz : Interfaces.Unsigned_32;
      notail : int) return unsigned  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "nn_reorder_nackmap";

   function nn_reorder_next_seq (reorder : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_reorder) return CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:258
   with Import => True, 
        Convention => C, 
        External_Name => "nn_reorder_next_seq";

   procedure nn_reorder_set_next_seq (reorder : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_reorder; seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "nn_reorder_set_next_seq";

   function nn_dqueue_new
     (name : Interfaces.C.Strings.chars_ptr;
      gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      max_samples : Interfaces.Unsigned_32;
      handler : nn_dqueue_handler_t;
      arg : System.Address) return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_dqueue  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:261
   with Import => True, 
        Convention => C, 
        External_Name => "nn_dqueue_new";

   procedure nn_dqueue_free (q : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_dqueue)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "nn_dqueue_free";

   function nn_dqueue_enqueue_deferred_wakeup
     (q : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_dqueue;
      sc : access nn_rsample_chain;
      rres : nn_reorder_result_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "nn_dqueue_enqueue_deferred_wakeup";

   procedure dd_dqueue_enqueue_trigger (q : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_dqueue)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "dd_dqueue_enqueue_trigger";

   procedure nn_dqueue_enqueue
     (q : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_dqueue;
      sc : access nn_rsample_chain;
      rres : nn_reorder_result_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:265
   with Import => True, 
        Convention => C, 
        External_Name => "nn_dqueue_enqueue";

   procedure nn_dqueue_enqueue1
     (q : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_dqueue;
      rdguid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      sc : access nn_rsample_chain;
      rres : nn_reorder_result_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:266
   with Import => True, 
        Convention => C, 
        External_Name => "nn_dqueue_enqueue1";

   procedure nn_dqueue_enqueue_callback
     (q : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_dqueue;
      cb : nn_dqueue_callback_t;
      arg : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:267
   with Import => True, 
        Convention => C, 
        External_Name => "nn_dqueue_enqueue_callback";

   function nn_dqueue_is_full (q : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_dqueue) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:268
   with Import => True, 
        Convention => C, 
        External_Name => "nn_dqueue_is_full";

   procedure nn_dqueue_wait_until_empty_if_full (q : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_dqueue)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "nn_dqueue_wait_until_empty_if_full";

   procedure nn_defrag_stats (defrag : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_defrag; discarded_bytes : access Interfaces.Unsigned_64)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:271
   with Import => True, 
        Convention => C, 
        External_Name => "nn_defrag_stats";

   procedure nn_reorder_stats (reorder : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.nn_reorder; discarded_bytes : access Interfaces.Unsigned_64)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_radmin.h:272
   with Import => True, 
        Convention => C, 
        External_Name => "nn_reorder_stats";

end CycloneDDS.Low_Level.dds_ddsi_q_radmin_h;
