pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Extensions;
with Interfaces.C.Strings;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
with CycloneDDS.Low_Level.dds_ddsrt_atomics_h;
with System;

with CycloneDDS.Low_Level.dds_ddsc_dds_public_alloc_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_radmin_h;
with CycloneDDS.Low_Level.dds_ddsrt_iovec_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_sertopic_h is

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

  -- for serdata_kind 
   type ddsi_sertopic_ops;
   type ddsi_sertopic_serdata_ops;
   type ddsi_sertopic is record
      ops : access constant ddsi_sertopic_ops;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:33
      serdata_ops : access constant ddsi_sertopic_serdata_ops;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:34
      serdata_basehash : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:35
      topickind_no_key : aliased Extensions.bool;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:36
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:37
      type_name : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:38
      gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:39
      refc : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:40
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:32

  -- counts refs from entities (topic, reader, writer), not from data  
  -- Called to compare two sertopics for equality, if it is already known that name,
  --   type name, topickind_no_Key, and operations are all the same.  (serdata_basehash
  --   is computed from the set of operations.)  

   type ddsi_sertopic_equal_t is access function (arg1 : access constant ddsi_sertopic; arg2 : access constant ddsi_sertopic) return Extensions.bool
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:46

  -- Hash the custom components of a sertopic (this XOR'd with a hash computed from
  --   the fields that are defined in struct ddsi_sertopic)  

   type ddsi_sertopic_hash_t is access function (arg1 : access constant ddsi_sertopic) return unsigned
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:50

  -- Called when the refcount dropped to zero  
   type ddsi_sertopic_free_t is access procedure (arg1 : access ddsi_sertopic)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:53

  -- Zero out a sample, used for generating samples from just a key value and in cleaning up
  --   after dds_return_loan  

   type ddsi_sertopic_zero_samples_t is access procedure
        (arg1 : access constant ddsi_sertopic;
         arg2 : System.Address;
         arg3 : unsigned_long)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:57

  -- (Re)allocate an array of samples, used in growing loaned sample arrays in dds_read  
   type ddsi_sertopic_realloc_samples_t is access procedure
        (arg1 : System.Address;
         arg2 : access constant ddsi_sertopic;
         arg3 : System.Address;
         arg4 : unsigned_long;
         arg5 : unsigned_long)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:60

  -- Release any memory allocated by ddsi_sertopic_to_sample (also undo sertopic_alloc_sample if "op" so requests)  
   type ddsi_sertopic_free_samples_t is access procedure
        (arg1 : access constant ddsi_sertopic;
         arg2 : System.Address;
         arg3 : unsigned_long;
         arg4 : CycloneDDS.Low_Level.dds_ddsc_dds_public_alloc_h.dds_free_op_t)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:63

   type ddsi_sertopic_ops is record
      free : ddsi_sertopic_free_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:66
      zero_samples : ddsi_sertopic_zero_samples_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:67
      realloc_samples : ddsi_sertopic_realloc_samples_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:68
      free_samples : ddsi_sertopic_free_samples_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:69
      equal : ddsi_sertopic_equal_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:70
      hash : ddsi_sertopic_hash_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:71
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:65

   ddsi_sertopic_serdata_ops_wrap : aliased constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata_ops  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_serdata_ops_wrap";

   procedure ddsi_sertopic_init
     (tp : access ddsi_sertopic;
      name : Interfaces.C.Strings.chars_ptr;
      type_name : Interfaces.C.Strings.chars_ptr;
      sertopic_ops : access constant ddsi_sertopic_ops;
      serdata_ops : access constant ddsi_sertopic_serdata_ops;
      topickind_no_key : Extensions.bool)  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_init";

   procedure ddsi_sertopic_fini (tp : access ddsi_sertopic)  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_fini";

   function ddsi_sertopic_ref (tp : access constant ddsi_sertopic) return access ddsi_sertopic  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_ref";

   procedure ddsi_sertopic_unref (tp : access ddsi_sertopic)  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_unref";

   function ddsi_sertopic_compute_serdata_basehash (ops : access constant ddsi_sertopic_serdata_ops) return unsigned  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_compute_serdata_basehash";

   function ddsi_sertype_from_sertopic (tp : access ddsi_sertopic) return access CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_from_sertopic";

   function ddsi_sertopic_equal (a : access constant ddsi_sertopic; b : access constant ddsi_sertopic) return Extensions.bool  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_equal";

   function ddsi_sertopic_hash (tp : access constant ddsi_sertopic) return unsigned  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_hash";

   procedure ddsi_sertopic_free (tp : access ddsi_sertopic)  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_free";

   procedure ddsi_sertopic_zero_samples
     (tp : access constant ddsi_sertopic;
      samples : System.Address;
      count : unsigned_long)  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_zero_samples";

   procedure ddsi_sertopic_realloc_samples
     (ptrs : System.Address;
      tp : access constant ddsi_sertopic;
      old : System.Address;
      oldcount : unsigned_long;
      count : unsigned_long)  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_realloc_samples";

   procedure ddsi_sertopic_free_samples
     (tp : access constant ddsi_sertopic;
      ptrs : System.Address;
      count : unsigned_long;
      op : CycloneDDS.Low_Level.dds_ddsc_dds_public_alloc_h.dds_free_op_t)  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_free_samples";

   procedure ddsi_sertopic_zero_sample (tp : access constant ddsi_sertopic; sample : System.Address)  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_zero_sample";

   function ddsi_sertopic_alloc_sample (tp : access constant ddsi_sertopic) return System.Address  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_alloc_sample";

   procedure ddsi_sertopic_free_sample
     (tp : access constant ddsi_sertopic;
      sample : System.Address;
      op : CycloneDDS.Low_Level.dds_ddsc_dds_public_alloc_h.dds_free_op_t)  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_free_sample";

  -- THINGS USED FOR TESTING BINARY COMPATIBILITY WITH OLD SERTOPIC INTERFACE
  -- cached from topic->serdata_ops  
   type ddsi_sertopic_serdata is record
      ops : access constant ddsi_sertopic_serdata_ops;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:113
      hash : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:114
      refc : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:115
      kind : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata_kind;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:116
      topic : access constant ddsi_sertopic;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:117
      timestamp : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:120
      statusinfo : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:121
      twrite : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:124
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:112

  -- these get set by generic code after creating the serdata  
  -- FIXME: can I get rid of this one?  
  -- write time, not source timestamp, set post-throttling  
   type ddsi_sertopic_serdata_size_t is access function (arg1 : access constant ddsi_sertopic_serdata) return unsigned
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:127

   type ddsi_sertopic_serdata_free_t is access procedure (arg1 : access ddsi_sertopic_serdata)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:128

   type ddsi_sertopic_serdata_from_ser_t is access function
        (arg1 : access constant ddsi_sertopic;
         arg2 : CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata_kind;
         arg3 : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.nn_rdata;
         arg4 : unsigned_long) return access ddsi_sertopic_serdata
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:129

   type ddsi_sertopic_serdata_from_ser_iov_t is access function
        (arg1 : access constant ddsi_sertopic;
         arg2 : CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata_kind;
         arg3 : CycloneDDS.Low_Level.dds_ddsrt_iovec_h.ddsrt_msg_iovlen_t;
         arg4 : access constant CycloneDDS.Low_Level.dds_ddsrt_iovec_h.ddsrt_iovec_t;
         arg5 : unsigned_long) return access ddsi_sertopic_serdata
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:130

   type ddsi_sertopic_serdata_from_keyhash_t is access function (arg1 : access constant ddsi_sertopic; arg2 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h.ddsi_keyhash) return access ddsi_sertopic_serdata
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:131

   type ddsi_sertopic_serdata_from_sample_t is access function
        (arg1 : access constant ddsi_sertopic;
         arg2 : CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata_kind;
         arg3 : System.Address) return access ddsi_sertopic_serdata
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:132

   type ddsi_sertopic_serdata_to_topicless_t is access function (arg1 : access constant ddsi_sertopic_serdata) return access ddsi_sertopic_serdata
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:133

   type ddsi_sertopic_serdata_to_ser_t is access procedure
        (arg1 : access constant ddsi_sertopic_serdata;
         arg2 : unsigned_long;
         arg3 : unsigned_long;
         arg4 : System.Address)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:134

   type ddsi_sertopic_serdata_to_ser_ref_t is access function
        (arg1 : access constant ddsi_sertopic_serdata;
         arg2 : unsigned_long;
         arg3 : unsigned_long;
         arg4 : access CycloneDDS.Low_Level.dds_ddsrt_iovec_h.ddsrt_iovec_t) return access ddsi_sertopic_serdata
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:135

   type ddsi_sertopic_serdata_to_ser_unref_t is access procedure (arg1 : access ddsi_sertopic_serdata; arg2 : access constant CycloneDDS.Low_Level.dds_ddsrt_iovec_h.ddsrt_iovec_t)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:136

   type ddsi_sertopic_serdata_to_sample_t is access function
        (arg1 : access constant ddsi_sertopic_serdata;
         arg2 : System.Address;
         arg3 : System.Address;
         arg4 : System.Address) return Extensions.bool
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:137

   type ddsi_sertopic_serdata_topicless_to_sample_t is access function
        (arg1 : access constant ddsi_sertopic;
         arg2 : access constant ddsi_sertopic_serdata;
         arg3 : System.Address;
         arg4 : System.Address;
         arg5 : System.Address) return Extensions.bool
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:138

   type ddsi_sertopic_serdata_eqkey_t is access function (arg1 : access constant ddsi_sertopic_serdata; arg2 : access constant ddsi_sertopic_serdata) return Extensions.bool
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:139

   type ddsi_sertopic_serdata_print_t is access function
        (arg1 : access constant ddsi_sertopic;
         arg2 : access constant ddsi_sertopic_serdata;
         arg3 : Interfaces.C.Strings.chars_ptr;
         arg4 : unsigned_long) return unsigned_long
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:140

   type ddsi_sertopic_serdata_get_keyhash_t is access procedure
        (arg1 : access constant ddsi_sertopic_serdata;
         arg2 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h.ddsi_keyhash;
         arg3 : Extensions.bool)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:141

   type ddsi_sertopic_serdata_ops is record
      eqkey : ddsi_sertopic_serdata_eqkey_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:144
      get_size : ddsi_sertopic_serdata_size_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:145
      from_ser : ddsi_sertopic_serdata_from_ser_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:146
      from_ser_iov : ddsi_sertopic_serdata_from_ser_iov_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:147
      from_keyhash : ddsi_sertopic_serdata_from_keyhash_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:148
      from_sample : ddsi_sertopic_serdata_from_sample_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:149
      to_ser : ddsi_sertopic_serdata_to_ser_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:150
      to_ser_ref : ddsi_sertopic_serdata_to_ser_ref_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:151
      to_ser_unref : ddsi_sertopic_serdata_to_ser_unref_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:152
      to_sample : ddsi_sertopic_serdata_to_sample_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:153
      to_topicless : ddsi_sertopic_serdata_to_topicless_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:154
      topicless_to_sample : ddsi_sertopic_serdata_topicless_to_sample_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:155
      free : ddsi_sertopic_serdata_free_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:156
      print : ddsi_sertopic_serdata_print_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:157
      get_keyhash : ddsi_sertopic_serdata_get_keyhash_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:158
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:143

   procedure ddsi_sertopic_serdata_init
     (d : access ddsi_sertopic_serdata;
      topic : access constant ddsi_sertopic;
      kind : CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata_kind)  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_serdata_init";

   function ddsi_sertopic_serdata_ref (serdata_const : access constant ddsi_sertopic_serdata) return access ddsi_sertopic_serdata  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_serdata_ref";

   procedure ddsi_sertopic_serdata_unref (serdata : access ddsi_sertopic_serdata)  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_serdata_unref";

   function ddsi_sertopic_serdata_size (d : access constant ddsi_sertopic_serdata) return unsigned  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_serdata_size";

   function ddsi_sertopic_serdata_from_ser
     (topic : access constant ddsi_sertopic;
      kind : CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata_kind;
      fragchain : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.nn_rdata;
      size : unsigned_long) return access ddsi_sertopic_serdata  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_serdata_from_ser";

   function ddsi_sertopic_serdata_from_ser_iov
     (topic : access constant ddsi_sertopic;
      kind : CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata_kind;
      niov : CycloneDDS.Low_Level.dds_ddsrt_iovec_h.ddsrt_msg_iovlen_t;
      iov : access constant CycloneDDS.Low_Level.dds_ddsrt_iovec_h.ddsrt_iovec_t;
      size : unsigned_long) return access ddsi_sertopic_serdata  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_serdata_from_ser_iov";

   function ddsi_sertopic_serdata_from_keyhash (topic : access constant ddsi_sertopic; keyhash : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h.ddsi_keyhash) return access ddsi_sertopic_serdata  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_serdata_from_keyhash";

   function ddsi_sertopic_serdata_from_sample
     (topic : access constant ddsi_sertopic;
      kind : CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata_kind;
      sample : System.Address) return access ddsi_sertopic_serdata  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_serdata_from_sample";

   function ddsi_sertopic_serdata_to_topicless (d : access constant ddsi_sertopic_serdata) return access ddsi_sertopic_serdata  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_serdata_to_topicless";

   procedure ddsi_sertopic_serdata_to_ser
     (d : access constant ddsi_sertopic_serdata;
      off : unsigned_long;
      sz : unsigned_long;
      buf : System.Address)  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_serdata_to_ser";

   function ddsi_sertopic_serdata_to_ser_ref
     (d : access constant ddsi_sertopic_serdata;
      off : unsigned_long;
      sz : unsigned_long;
      ref : access CycloneDDS.Low_Level.dds_ddsrt_iovec_h.ddsrt_iovec_t) return access ddsi_sertopic_serdata  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_serdata_to_ser_ref";

   procedure ddsi_sertopic_serdata_to_ser_unref (d : access ddsi_sertopic_serdata; ref : access constant CycloneDDS.Low_Level.dds_ddsrt_iovec_h.ddsrt_iovec_t)  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_serdata_to_ser_unref";

   function ddsi_sertopic_serdata_to_sample
     (d : access constant ddsi_sertopic_serdata;
      sample : System.Address;
      bufptr : System.Address;
      buflim : System.Address) return Extensions.bool  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_serdata_to_sample";

   function ddsi_sertopic_serdata_topicless_to_sample
     (topic : access constant ddsi_sertopic;
      d : access constant ddsi_sertopic_serdata;
      sample : System.Address;
      bufptr : System.Address;
      buflim : System.Address) return Extensions.bool  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_serdata_topicless_to_sample";

   function ddsi_sertopic_serdata_eqkey (a : access constant ddsi_sertopic_serdata; b : access constant ddsi_sertopic_serdata) return Extensions.bool  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_serdata_eqkey";

   function ddsi_sertopic_serdata_print
     (d : access constant ddsi_sertopic_serdata;
      buf : Interfaces.C.Strings.chars_ptr;
      size : unsigned_long) return Extensions.bool  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_serdata_print";

   function ddsi_sertopic_serdata_print_topicless
     (topic : access constant ddsi_sertopic;
      d : access constant ddsi_sertopic_serdata;
      buf : Interfaces.C.Strings.chars_ptr;
      size : unsigned_long) return Extensions.bool  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_serdata_print_topicless";

   procedure ddsi_sertopic_serdata_get_keyhash
     (d : access constant ddsi_sertopic_serdata;
      buf : access CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h.ddsi_keyhash;
      force_md5 : Extensions.bool)  -- /usr/gnat/include/dds/ddsi/ddsi_sertopic.h:178
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_serdata_get_keyhash";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_sertopic_h;
