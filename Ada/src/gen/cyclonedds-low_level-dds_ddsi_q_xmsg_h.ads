pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h;
with Interfaces.C.Extensions;
limited with CycloneDDS.Low_Level.dds_ddsi_q_addrset_h;


with CycloneDDS.Low_Level.dds_ddsi_q_rtps_h;
with CycloneDDS.Low_Level.dds_ddsi_q_protocol_h;
with System;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;
with CycloneDDS.Low_Level.dds_ddsrt_bswap_h;

package CycloneDDS.Low_Level.dds_ddsi_q_xmsg_h is

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

  -- for, e.g., SubmessageKind_t  
  --#include "dds/ddsi/ddsi_xqos.h" /* for, e.g., octetseq, stringseq  
   type nn_xmsg_data is null record;   -- incomplete struct

   type nn_xmsg_marker is record
      offset : aliased unsigned_long;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:46
   end record
   with Convention => C_Pass_By_Copy;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:45

   type nn_xmsg_kind is 
     (NN_XMSG_KIND_CONTROL,
      NN_XMSG_KIND_DATA,
      NN_XMSG_KIND_DATA_REXMIT,
      NN_XMSG_KIND_DATA_REXMIT_NOMERGE)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:49

  -- Assume worst-case 8 byte alignment for sample following the iceoryx header.  
  -- XMSGPOOL  
   function nn_xmsgpool_new return access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_xmsgpool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsgpool_new";

   procedure nn_xmsgpool_free (pool : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_xmsgpool)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsgpool_free";

  -- XMSG  
  -- To allocate a new xmsg from the pool; if expected_size is NOT
  --   exceeded, no reallocs will be performed, else the address of the
  --   xmsg may change because of reallocing when appending to it.  

   function nn_xmsg_new
     (pool : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_xmsgpool;
      src_guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant;
      expected_size : unsigned_long;
      kind : nn_xmsg_kind) return access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_new";

  -- For sending to a particular destination (participant)  
   procedure nn_xmsg_setdst1
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      m : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg;
      gp : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_prefix_t;
      addr : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_xlocator_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_setdst1";

   function nn_xmsg_getdst1prefix (m : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg; gp : access CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_prefix_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_getdst1prefix";

  -- For sending to a particular proxy reader; this is a convenience
  --   routine that extracts a suitable address from the proxy reader's
  --   address sets and calls setdst1.  

   procedure nn_xmsg_setdstPRD (m : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg; prd : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_setdstPRD";

   procedure nn_xmsg_setdstPWR (m : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg; pwr : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_writer)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_setdstPWR";

  -- For sending to all in the address set AS -- typically, the writer's
  --   address set to multicast to all matched readers  

   procedure nn_xmsg_setdstN
     (msg : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg;
      as : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset;
      as_group : access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_setdstN";

   function nn_xmsg_setmaxdelay (msg : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg; maxdelay : long) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_setmaxdelay";

   function nn_xmsg_setencoderid (msg : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg; encoderid : unsigned) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_setencoderid";

  -- Sets the location of the destination readerId within the message
  --   (address changes because of reallocations are handled correctly).
  --   M must be a rexmit, and for all rexmits this must be called.  It is
  --   a separate function because the location may only become known at a
  --   late-ish stage in the construction of the message.  

   procedure nn_xmsg_set_data_readerId (m : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg; readerId : access CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_entityid_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_set_data_readerId";

  -- If M and MADD are both xmsg's containing the same retransmit
  --   message, this will merge the destination embedded in MADD into M.
  --   Typically, this will cause the readerId of M to be cleared and the
  --   destination to change to the writer's address set.
  --   M and MADD *must* contain the same sample/fragment of a sample.
  --   Returns 1 if merge was successful, else 0.  On failure, neither
  --   message will have been changed and both should be sent as if there
  --   had been no merging.  

   function nn_xmsg_merge_rexmit_destinations_wrlock_held
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      m : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg;
      madd : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_merge_rexmit_destinations_wrlock_held";

  -- To set writer ids for updating last transmitted sequence number;
  --   wrfragid is 0 based, unlike DDSI but like other places where
  --   fragment numbers are handled internally.  

   procedure nn_xmsg_setwriterseq
     (msg : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg;
      wrguid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      wrseq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_setwriterseq";

   procedure nn_xmsg_setwriterseq_fragid
     (msg : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg;
      wrguid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      wrseq : CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      wrfragid : CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_fragment_number_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_setwriterseq_fragid";

  -- Comparison function for retransmits: orders messages on writer
  --   guid, sequence number and fragment id  

   function nn_xmsg_compare_fragid (a : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg; b : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_compare_fragid";

   procedure nn_xmsg_free (msg : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_free";

   function nn_xmsg_size (m : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg) return unsigned_long  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_size";

   function nn_xmsg_payload (sz : access unsigned_long; m : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg) return System.Address  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_payload";

   procedure nn_xmsg_payload_to_plistsample
     (dst : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h.ddsi_plist_sample;
      keyparam : CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_parameterid_t;
      m : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_payload_to_plistsample";

   function nn_xmsg_kind (m : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg) return nn_xmsg_kind  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_kind";

   procedure nn_xmsg_guid_seq_fragid
     (m : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg;
      wrguid : access CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_t;
      wrseq : access CycloneDDS.Low_Level.dds_ddsi_q_rtps_h.seqno_t;
      wrfragid : access CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_fragment_number_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_guid_seq_fragid";

   function nn_xmsg_submsg_from_marker (msg : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg; marker : nn_xmsg_marker) return System.Address  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_submsg_from_marker";

   function nn_xmsg_append
     (m : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg;
      marker : access nn_xmsg_marker;
      sz : unsigned_long) return System.Address  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_append";

   procedure nn_xmsg_shrink
     (m : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg;
      marker : nn_xmsg_marker;
      sz : unsigned_long)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_shrink";

   procedure nn_xmsg_serdata
     (m : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg;
      serdata : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;
      off : unsigned_long;
      len : unsigned_long;
      wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_serdata";

   function nn_xmsg_submsg_size (msg : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg; marker : nn_xmsg_marker) return unsigned_long  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_submsg_size";

   procedure nn_xmsg_submsg_remove (msg : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg; sm_marker : nn_xmsg_marker)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_submsg_remove";

   procedure nn_xmsg_submsg_replace
     (msg : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg;
      sm_marker : nn_xmsg_marker;
      new_submsg : access unsigned_char;
      new_len : unsigned_long)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_submsg_replace";

   procedure nn_xmsg_submsg_append_refd_payload (msg : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg; sm_marker : nn_xmsg_marker)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_submsg_append_refd_payload";

   procedure nn_xmsg_submsg_setnext (msg : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg; marker : nn_xmsg_marker)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_submsg_setnext";

   procedure nn_xmsg_submsg_init
     (msg : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg;
      marker : nn_xmsg_marker;
      smkind : CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.SubmessageKind_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_submsg_init";

   procedure nn_xmsg_add_timestamp (m : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg; t : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_add_timestamp";

   procedure nn_xmsg_add_entityid (m : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_add_entityid";

   function nn_xmsg_addpar_bo
     (m : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg;
      pid : CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_parameterid_t;
      len : unsigned_long;
      bo : CycloneDDS.Low_Level.dds_ddsrt_bswap_h.ddsrt_byte_order_selector) return System.Address  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_addpar_bo";

   function nn_xmsg_addpar
     (m : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg;
      pid : CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_parameterid_t;
      len : unsigned_long) return System.Address  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_addpar";

   procedure nn_xmsg_addpar_keyhash
     (m : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg;
      serdata : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;
      force_md5 : Extensions.bool)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_addpar_keyhash";

   procedure nn_xmsg_addpar_statusinfo (m : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg; statusinfo : unsigned)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_addpar_statusinfo";

   procedure nn_xmsg_addpar_sentinel (m : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_addpar_sentinel";

   procedure nn_xmsg_addpar_sentinel_bo (m : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg; bo : CycloneDDS.Low_Level.dds_ddsrt_bswap_h.ddsrt_byte_order_selector)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_addpar_sentinel_bo";

   function nn_xmsg_addpar_sentinel_ifparam (m : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xmsg_addpar_sentinel_ifparam";

  -- XPACK  
   function nn_xpack_new
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      bw_limit : unsigned;
      async_mode : Extensions.bool) return access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_xpack  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xpack_new";

   procedure nn_xpack_free (xp : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_xpack)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xpack_free";

  -- unused  
   procedure nn_xpack_send (xp : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_xpack; immediately : Extensions.bool)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xpack_send";

   function nn_xpack_addmsg
     (xp : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_xpack;
      m : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg;
      flags : unsigned) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xpack_addmsg";

   function nn_xpack_maxdelay (xp : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_xpack) return long  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xpack_maxdelay";

   function nn_xpack_packetid (xp : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_xpack) return unsigned  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xpack_packetid";

  -- SENDQ  
   procedure nn_xpack_sendq_init (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xpack_sendq_init";

   procedure nn_xpack_sendq_start (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xpack_sendq_start";

   procedure nn_xpack_sendq_stop (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xpack_sendq_stop";

   procedure nn_xpack_sendq_fini (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_xmsg.h:178
   with Import => True, 
        Convention => C, 
        External_Name => "nn_xpack_sendq_fini";

end CycloneDDS.Low_Level.dds_ddsi_q_xmsg_h;
