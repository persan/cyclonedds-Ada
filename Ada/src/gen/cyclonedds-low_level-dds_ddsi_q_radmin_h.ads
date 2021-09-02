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
   NN_REORDER_ACCEPT : constant := 0;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:209
   NN_REORDER_TOO_OLD : constant := -1;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:210
   NN_REORDER_REJECT : constant := -2;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:211

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
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:46

  -- Size is 0 after initial allocation, must be set with
  --     nn_rmsg_setsize after receiving a packet from the kernel and
  --     before processing it.   

   type nn_rmsg_chunk;
   type anon6126_union6129 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            size : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:56
         when 1 =>
            l : aliased long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:59
         when 2 =>
            d : aliased double;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:60
         when others =>
            p : System.Address;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:61
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type nn_rmsg_chunk is record
      rbuf : access nn_rbuf;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:49
      next : access nn_rmsg_chunk;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:50
      u : aliased anon6126_union6129;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:62
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:48

  -- to ensure reasonable alignment of payload  
  -- unsigned char payload[] -- disallowed by C99 because of nesting  
  -- Reference count: all references to rdatas of this message are
  --     counted. The rdatas themselves do not have a reference count.
  --     The refcount is biased by RMSG_REFCOUNT_UNCOMMITED_BIAS while
  --     still being inserted to allow verifying it is still uncommitted
  --     when allocating memory, increasing refcounts, &c.
  --     Each rdata adds RMS_REFCOUNT_RDATA_BIAS when it leaves
  --     defragmentation until it has been rejected by reordering or has
  --     been scheduled for delivery.  This allows delaying the
  --     decrementing of refcounts until after a sample has been added to
  --     all radmins even though be delivery of it may take place in
  --     concurrently.  

   type nn_rmsg is record
      refcount : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:81
      lastchunk : access nn_rmsg_chunk;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:100
      trace : aliased Extensions.bool;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:103
      chunk : aliased nn_rmsg_chunk;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:105
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:67

  -- Worst-case memory requirement is gigantic (64kB UDP packet, only
  --     1-byte final fragments, each of one a new interval, or maybe 1
  --     byte messages, destined for many readers and in each case
  --     introducing a new interval, with receiver state changes in
  --     between, &c.), so we can either:
  --     - allocate a _lot_ and cover the worst case
  --     - allocate enough for all "reasonable" cases, discarding data when that limit is hit
  --     - dynamically add chunks of memory, and even entire receive buffers.
  --     The latter seems the best approach, especially because it also
  --     covers the second one.  We treat the other chunks specially,
  --     which is not strictly required but also not entirely
  --     unreasonable, considering that the first chunk has the refcount &
  --     the real packet.  

  -- whether to log  
   subtype anon6130_array1135 is Interfaces.C.char_array (0 .. 0);
   type static_assert_107 is record
      cond : aliased anon6130_array1135;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:107
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:107

  -- Align rmsg chunks to the larger of sizeof(void*) or 8.
  --Ideally, we would use C11's alignof(struct nn_rmsg); however, to avoid dependency on C11,
  --we ensure rmsg chunks are at least aligned to sizeof(void *) or 8,
  --whichever is larger.  

  -- 12  
   type receiver_state is record
      src_guid_prefix : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_prefix_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:119
      dst_guid_prefix : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_prefix_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:120
      reply_locators : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:121
      forme : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:122
      rtps_encoded : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:123
      vendor : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_vendor_h.nn_vendorid_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:124
      protocol_version : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.nn_protocol_version_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:125
      conn : access CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:126
      srcloc : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:127
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:128
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:118

  -- 12  
  -- 4/8  
  -- 4  
  -- -  
  -- 2  
  -- 2 => 44/48  
  -- Connection for request  
   type nn_rsample_info is record
      seq : aliased CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:132
      rst : access receiver_state;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:133
      pwr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_writer;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:134
      size : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:135
      fragsize : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:136
      timestamp : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:137
      reception_timestamp : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:138
      statusinfo : Extensions.Unsigned_2;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:139
      bswap : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:140
      complex_qos : Extensions.Unsigned_1;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:141
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:131

  -- OpenSplice extension -- but we get it essentially for free, so why not?  
  -- just the two defined bits from the status info  
  -- so we can extract well formatted writer info quicker  
  -- includes QoS other than keyhash, 2-bit statusinfo, PT writer info  
  -- received (and refcounted) in rmsg  
   type nn_rdata is record
      rmsg : access nn_rmsg;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:145
      nextfrag : access nn_rdata;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:146
      min : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:147
      maxp1 : aliased unsigned;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:147
      submsg_zoff : aliased unsigned_short;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:148
      payload_zoff : aliased unsigned_short;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:149
      keyhash_zoff : aliased unsigned_short;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:150
      refcount_bias_added : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:152
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:144

  -- fragment chain  
  -- fragment as byte offsets  
  -- offset to submessage from packet start, or 0  
  -- offset to payload from packet start  
  -- offset to keyhash from packet start, or 0  
  -- All relative offsets in packets that we care about (submessage
  --   header, payload, writer info) are at multiples of 4 bytes and
  --   within 64kB, so technically we can make do with 14 bits instead of
  --   16, in case we run out of space.
  --   If we _really_ need to squeeze out every last bit, only the submsg
  --   offset really requires 14 bits, the for the others we could use an
  --   offset relative to the submessage header so that it is limited by
  --   the maximum size of the inline QoS ...  Defining the macros now, so
  --   we have the option to do wild things.  

  -- FIXME: evidently smaller than a defrag_iv, but maybe better to
  --     merge it with defrag_iv in a union anyway.  

   type nn_rsample_chain_elem;
   type nn_rsample_chain_elem is record
      fragchain : access nn_rdata;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:180
      next : access nn_rsample_chain_elem;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:181
      sampleinfo : access nn_rsample_info;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:186
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:177

  -- Gaps have sampleinfo = NULL, but nonetheless a fragchain with 1
  --     rdata with min=maxp1 (length 0) and valid rmsg pointer.  And (see
  --     DQUEUE) its lsb gets abused so we can queue "bubbles" in addition
  --     to data).  

   type nn_rsample_chain is record
      first : access nn_rsample_chain_elem;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:190
      last : access nn_rsample_chain_elem;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:191
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:189

   type nn_reorder_mode is 
     (NN_REORDER_MODE_NORMAL,
      NN_REORDER_MODE_MONOTONICALLY_INCREASING,
      NN_REORDER_MODE_ALWAYS_DELIVER)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:194

   type nn_defrag_drop_mode is 
     (NN_DEFRAG_DROP_OLDEST,
      NN_DEFRAG_DROP_LATEST)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:200

  -- (believed to be) best for unreliable  
  -- (...) best for reliable   
   subtype nn_reorder_result_t is int;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:205

  -- typedef of reorder result serves as a warning that it is to be
  --   interpreted as follows:  

  -- REORDER_DELIVER > 0 -- number of samples in sample chain  
   type nn_dqueue_callback_t is access procedure (arg1 : System.Address)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:213

   function nn_rbufpool_new
     (logcfg : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h.ddsrt_log_cfg;
      rbuf_size : unsigned;
      max_rmsg_size : unsigned) return access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_rbufpool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "nn_rbufpool_new";

   procedure nn_rbufpool_setowner (rbp : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_rbufpool; tid : CycloneDDS.Low_Level.dds_ddsrt_threads_posix_h.ddsrt_thread_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "nn_rbufpool_setowner";

   procedure nn_rbufpool_free (rbp : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_rbufpool)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "nn_rbufpool_free";

   function nn_rmsg_new (rbufpool : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_rbufpool) return access nn_rmsg  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "nn_rmsg_new";

   procedure nn_rmsg_setsize (rmsg : access nn_rmsg; size : unsigned)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "nn_rmsg_setsize";

   procedure nn_rmsg_commit (rmsg : access nn_rmsg)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "nn_rmsg_commit";

   procedure nn_rmsg_free (rmsg : access nn_rmsg)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "nn_rmsg_free";

   function nn_rmsg_alloc (rmsg : access nn_rmsg; size : unsigned) return System.Address  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:227
   with Import => True, 
        Convention => C, 
        External_Name => "nn_rmsg_alloc";

   function nn_rdata_new
     (rmsg : access nn_rmsg;
      start : unsigned;
      endp1 : unsigned;
      submsg_offset : unsigned;
      payload_offset : unsigned;
      keyhash_offset : unsigned) return access nn_rdata  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "nn_rdata_new";

   function nn_rdata_newgap (rmsg : access nn_rmsg) return access nn_rdata  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "nn_rdata_newgap";

   procedure nn_fragchain_adjust_refcount (frag : access nn_rdata; adjust : int)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "nn_fragchain_adjust_refcount";

   procedure nn_fragchain_unref (frag : access nn_rdata)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "nn_fragchain_unref";

   function nn_defrag_new
     (logcfg : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h.ddsrt_log_cfg;
      drop_mode : nn_defrag_drop_mode;
      max_samples : unsigned) return access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_defrag  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "nn_defrag_new";

   procedure nn_defrag_free (defrag : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_defrag)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:235
   with Import => True, 
        Convention => C, 
        External_Name => "nn_defrag_free";

   function nn_defrag_rsample
     (defrag : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_defrag;
      rdata : access nn_rdata;
      sampleinfo : access constant nn_rsample_info) return access nn_rsample  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "nn_defrag_rsample";

   procedure nn_defrag_notegap
     (defrag : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_defrag;
      min : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      maxp1 : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:237
   with Import => True, 
        Convention => C, 
        External_Name => "nn_defrag_notegap";

   type nn_defrag_nackmap_result is 
     (DEFRAG_NACKMAP_UNKNOWN_SAMPLE,
      DEFRAG_NACKMAP_ALL_ADVERTISED_FRAGMENTS_KNOWN,
      DEFRAG_NACKMAP_FRAGMENTS_MISSING)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:239

   function nn_defrag_nackmap
     (defrag : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_defrag;
      seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      maxfragnum : unsigned;
      map : access CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_fragment_number_set_header;
      mapbits : access unsigned;
      maxsz : unsigned) return nn_defrag_nackmap_result  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "nn_defrag_nackmap";

   procedure nn_defrag_prune
     (defrag : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_defrag;
      dst : access CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_prefix_t;
      min : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "nn_defrag_prune";

   function nn_reorder_new
     (logcfg : access constant CycloneDDS.Low_Level.dds_ddsrt_log_h.ddsrt_log_cfg;
      mode : nn_reorder_mode;
      max_samples : unsigned;
      late_ack_mode : Extensions.bool) return access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_reorder  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "nn_reorder_new";

   procedure nn_reorder_free (r : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_reorder)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:250
   with Import => True, 
        Convention => C, 
        External_Name => "nn_reorder_free";

   function nn_reorder_rsample_dup_first (rmsg : access nn_rmsg; rsampleiv : access nn_rsample) return access nn_rsample  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:251
   with Import => True, 
        Convention => C, 
        External_Name => "nn_reorder_rsample_dup_first";

   function nn_rsample_fragchain (rsample : access nn_rsample) return access nn_rdata  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "nn_rsample_fragchain";

   function nn_reorder_rsample
     (sc : access nn_rsample_chain;
      reorder : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_reorder;
      rsampleiv : access nn_rsample;
      refcount_adjust : access int;
      delivery_queue_full_p : int) return nn_reorder_result_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "nn_reorder_rsample";

   function nn_reorder_gap
     (sc : access nn_rsample_chain;
      reorder : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_reorder;
      rdata : access nn_rdata;
      min : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      maxp1 : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      refcount_adjust : access int) return nn_reorder_result_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "nn_reorder_gap";

  -- drops [1,maxp1); next_seq' = maxp1
   procedure nn_reorder_drop_upto (reorder : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_reorder; maxp1 : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "nn_reorder_drop_upto";

   function nn_reorder_wantsample (reorder : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_reorder; seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "nn_reorder_wantsample";

   function nn_reorder_nackmap
     (reorder : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_reorder;
      base : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      maxseq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      map : access CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_sequence_number_set_header;
      mapbits : access unsigned;
      maxsz : unsigned;
      notail : int) return unsigned  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "nn_reorder_nackmap";

   function nn_reorder_next_seq (reorder : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_reorder) return CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:258
   with Import => True, 
        Convention => C, 
        External_Name => "nn_reorder_next_seq";

   procedure nn_reorder_set_next_seq (reorder : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_reorder; seq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "nn_reorder_set_next_seq";

   function nn_dqueue_new
     (name : Interfaces.C.Strings.chars_ptr;
      gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      max_samples : unsigned;
      handler : nn_dqueue_handler_t;
      arg : System.Address) return access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_dqueue  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:261
   with Import => True, 
        Convention => C, 
        External_Name => "nn_dqueue_new";

   procedure nn_dqueue_free (q : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_dqueue)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "nn_dqueue_free";

   function nn_dqueue_enqueue_deferred_wakeup
     (q : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_dqueue;
      sc : access nn_rsample_chain;
      rres : nn_reorder_result_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "nn_dqueue_enqueue_deferred_wakeup";

   procedure dd_dqueue_enqueue_trigger (q : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_dqueue)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "dd_dqueue_enqueue_trigger";

   procedure nn_dqueue_enqueue
     (q : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_dqueue;
      sc : access nn_rsample_chain;
      rres : nn_reorder_result_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:265
   with Import => True, 
        Convention => C, 
        External_Name => "nn_dqueue_enqueue";

   procedure nn_dqueue_enqueue1
     (q : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_dqueue;
      rdguid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      sc : access nn_rsample_chain;
      rres : nn_reorder_result_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:266
   with Import => True, 
        Convention => C, 
        External_Name => "nn_dqueue_enqueue1";

   procedure nn_dqueue_enqueue_callback
     (q : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_dqueue;
      cb : nn_dqueue_callback_t;
      arg : System.Address)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:267
   with Import => True, 
        Convention => C, 
        External_Name => "nn_dqueue_enqueue_callback";

   function nn_dqueue_is_full (q : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_dqueue) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:268
   with Import => True, 
        Convention => C, 
        External_Name => "nn_dqueue_is_full";

   procedure nn_dqueue_wait_until_empty_if_full (q : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_dqueue)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "nn_dqueue_wait_until_empty_if_full";

   procedure nn_defrag_stats (defrag : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_defrag; discarded_bytes : access unsigned_long)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:271
   with Import => True, 
        Convention => C, 
        External_Name => "nn_defrag_stats";

   procedure nn_reorder_stats (reorder : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_reorder; discarded_bytes : access unsigned_long)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_radmin.h:272
   with Import => True, 
        Convention => C, 
        External_Name => "nn_reorder_stats";

end CycloneDDS.Low_Level.dds_ddsi_q_radmin_h;
