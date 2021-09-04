pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with CycloneDDS.Low_Level.dds_ddsrt_atomics_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;
with System;
limited with CycloneDDS.Low_Level.dds_ddsi_q_radmin_h;

with CycloneDDS.Low_Level.dds_ddsrt_iovec_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h;
with Interfaces.C.Extensions;
with Interfaces.C.Strings;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h is

   DDSI_SERDATA_HAS_PRINT : constant := 1;  --  /usr/gnat/include/dds/ddsi/ddsi_serdata.h:197
   DDSI_SERDATA_HAS_FROM_SER_IOV : constant := 1;  --  /usr/gnat/include/dds/ddsi/ddsi_serdata.h:198
   DDSI_SERDATA_HAS_GET_KEYHASH : constant := 1;  --  /usr/gnat/include/dds/ddsi/ddsi_serdata.h:199

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

   type ddsi_serdata_kind is 
     (SDK_EMPTY,
      SDK_KEY,
      SDK_DATA)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:28

  -- Backwards compatibility support for ddsi_sertopic (which is intended to exist
  -- only for a little while, have to see how that works out ...) relies on reading
  -- and writing the first few fields of ddsi_serdata regardless of whether it is a
  -- new or an old one.
  -- At a minimum, it needs to look at "ops" for this.  Currently, because the old
  -- serdata is a prefix of the new serdata anyway, it also looks directly at "type"
  -- in dds_writecdr_impl, and elsewhere it simply timestamp and statusinfo.
  -- So don't change anything of the layout up to and including "twrite" unless
  -- checking the compatibility code in ddsi_sertopic.c, dds_writecdr_impl and
  -- dds_readcdr_impl.
  -- cached from type->serdata_ops  
   type ddsi_serdata_ops;
   type ddsi_serdata is record
      ops : access constant ddsi_serdata_ops;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:48
      hash : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:49
      refc : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:50
      kind : aliased ddsi_serdata_kind;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:51
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:52
      timestamp : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:55
      statusinfo : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:56
      twrite : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:59
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:34

  -- these get set by generic code after creating the serdata  
  -- FIXME: can I get rid of this one?  
  -- write time, not source timestamp, set post-throttling  
  -- actually: iox_sub_t *
   type ddsi_serdata_wrapper is record
      c : aliased ddsi_serdata;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:68
      compat_wrap : System.Address;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:69
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:67

  -- Serialised size of sample inclusive of DDSI encoding header
  --   - uint32_t because the protocol can't handle samples larger than 4GB anyway
  --   - FIXME: get the encoding header out of the serialised data  

   type ddsi_serdata_size_t is access function (arg1 : access constant ddsi_serdata) return unsigned
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:75

  -- Free a serdata (called by unref when refcount goes to 0)  
   type ddsi_serdata_free_t is access procedure (arg1 : access ddsi_serdata)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:78

  -- Construct a serdata from a fragchain received over the network
  --   - "kind" is KEY or DATA depending on the type of payload
  --   - "size" is the serialised size of the sample, inclusive of DDSI encoding header
  --   - the first fragchain always contains the encoding header in its entirety
  --   - fragchains may overlap, though I have never seen any DDS implementation
  --     actually send such nasty fragments
  --   - FIXME: get the encoding header out of the serialised data  

   type ddsi_serdata_from_ser_t is access function
        (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
         arg2 : ddsi_serdata_kind;
         arg3 : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.nn_rdata;
         arg4 : unsigned_long) return access ddsi_serdata
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:87

  -- Exactly like ddsi_serdata_from_ser_t, but with the data in an iovec and guaranteed absence of overlap  
   type ddsi_serdata_from_ser_iov_t is access function
        (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
         arg2 : ddsi_serdata_kind;
         arg3 : CycloneDDS.Low_Level.dds_ddsrt_iovec_h.ddsrt_msg_iovlen_t;
         arg4 : access constant CycloneDDS.Low_Level.dds_ddsrt_iovec_h.ddsrt_iovec_t;
         arg5 : unsigned_long) return access ddsi_serdata
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:90

  -- Construct a serdata from a keyhash (an SDK_KEY by definition)  
   type ddsi_serdata_from_keyhash_t is access function (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype; arg2 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h.ddsi_keyhash) return access ddsi_serdata
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:93

  -- Construct a serdata from an application sample
  --   - "kind" is KEY or DATA depending on the operation invoked by the application;
  --     e.g., write results in kind = DATA, dispose in kind = KEY.  The important bit
  --     is to not assume anything of the contents of non-key fields if kind = KEY
  --     unless additional application knowledge is available  

   type ddsi_serdata_from_sample_t is access function
        (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
         arg2 : ddsi_serdata_kind;
         arg3 : System.Address) return access ddsi_serdata
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:100

  -- Construct a untyped serdata with just a keyvalue given a normal serdata (either key or data)
  --   - used for mapping key values to instance ids in tkmap
  --   - two reasons: size (keys are typically smaller than samples), and data in tkmap
  --     is shared across topics
  --   - whether a serdata is untyped or not is known from the context, and the topic
  --     field may have any value for a untyped serdata (so in some cases, one can
  --     simply do "return ddsi_serdata_ref(d);"
  --  

   type ddsi_serdata_to_untyped_t is access function (arg1 : access constant ddsi_serdata) return access ddsi_serdata
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:110

  -- Fill buffer with 'size' bytes of serialised data, starting from 'off'
  --   - 0 <= off < off+sz <= alignup4(size(d))
  --   - bytes at offsets 0 .. 3 are DDSI encoding header, size(d) includes that header
  --   - what to copy for bytes in [size(d), alignup4(size(d))) depends on the serdata
  --     implementation, the protocol treats them as undefined
  --   - FIXME: get the encoding header out of the serialised data  

   type ddsi_serdata_to_ser_t is access procedure
        (arg1 : access constant ddsi_serdata;
         arg2 : unsigned_long;
         arg3 : unsigned_long;
         arg4 : System.Address)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:118

  -- Provide a pointer to 'size' bytes of serialised data, starting from 'off'
  --   - see ddsi_serdata_to_ser_t above
  --   - instead of copying, this gives a reference that must remain valid until the
  --     corresponding call to to_ser_unref
  --   - multiple calls to to_ser_ref() may be issued in parallel
  --   - lazily creating the serialised representation is allowed (though I'm not sure
  --     how that would work with knowing the serialised size beforehand ...)  

   type ddsi_serdata_to_ser_ref_t is access function
        (arg1 : access constant ddsi_serdata;
         arg2 : unsigned_long;
         arg3 : unsigned_long;
         arg4 : access CycloneDDS.Low_Level.dds_ddsrt_iovec_h.ddsrt_iovec_t) return access ddsi_serdata
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:127

  -- Release a lock on serialised data
  --   - ref was previousy filled by ddsi_serdata_to_ser_ref_t  

   type ddsi_serdata_to_ser_unref_t is access procedure (arg1 : access ddsi_serdata; arg2 : access constant CycloneDDS.Low_Level.dds_ddsrt_iovec_h.ddsrt_iovec_t)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:131

  -- Turn serdata into an application sample (or just the key values if only key values are
  --   available); return false on error (typically out-of-memory, but if from_ser doesn't do any
  --   validation it might be a deserialisation error, too).
  --   If (bufptr != 0), then *bufptr .. buflim is space to be used from *bufptr up (with minimal
  --   padding) for any data in the sample that needs to be allocated (e.g., strings, sequences);
  --   otherwise malloc() is to be used for those.  (This allows read/take to be given a block of memory
  --   by the caller.)  

   type ddsi_serdata_to_sample_t is access function
        (arg1 : access constant ddsi_serdata;
         arg2 : System.Address;
         arg3 : System.Address;
         arg4 : System.Address) return Extensions.bool
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:141

  -- Create a sample from a untyped serdata, as returned by serdata_to_untyped.  This sample
  --   obviously has just the key fields filled in and is used for generating invalid samples.  

   type ddsi_serdata_untyped_to_sample_t is access function
        (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
         arg2 : access constant ddsi_serdata;
         arg3 : System.Address;
         arg4 : System.Address;
         arg5 : System.Address) return Extensions.bool
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:145

  -- Test key values of two serdatas for equality.  The two will have the same ddsi_serdata_ops,
  --   but are not necessarily of the same topic (one can decide to never consider them equal if they
  --   are of different topics, of course; but the nice thing about _not_ doing that is that all
  --   instances with a certain key value with have the same instance id, and that in turn makes
  --   computing equijoins across topics much simpler).  

   type ddsi_serdata_eqkey_t is access function (arg1 : access constant ddsi_serdata; arg2 : access constant ddsi_serdata) return Extensions.bool
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:152

  -- Print a serdata into the provided buffer (truncating as necessary)
  --   - topic is present for supporting printing of "untyped" samples
  --   - buf != NULL, bufsize > 0 on input
  --   - buf must always be terminated with a nul character on return
  --   - returns the number of characters (excluding the terminating 0) needed to print it
  --     in full (or, as an optimization, it may pretend that it has printed it in full,
  --     returning bufsize-1) if it had to truncate)  

   type ddsi_serdata_print_t is access function
        (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
         arg2 : access constant ddsi_serdata;
         arg3 : Interfaces.C.Strings.chars_ptr;
         arg4 : unsigned_long) return unsigned_long
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:161

  -- Add keyhash (from serdata) to buffer (forcing md5 when necessary).
  --   - key needs to be set within serdata (can already be md5)
  --   - buf needs to be at least 16 bytes large  

   type ddsi_serdata_get_keyhash_t is access procedure
        (arg1 : access constant ddsi_serdata;
         arg2 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h.ddsi_keyhash;
         arg3 : Extensions.bool)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:166

  -- sub is really an iox_sub_t *
   type ddsi_serdata_ops is record
      eqkey : ddsi_serdata_eqkey_t;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:176
      get_size : ddsi_serdata_size_t;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:177
      from_ser : ddsi_serdata_from_ser_t;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:178
      from_ser_iov : ddsi_serdata_from_ser_iov_t;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:179
      from_keyhash : ddsi_serdata_from_keyhash_t;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:180
      from_sample : ddsi_serdata_from_sample_t;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:181
      to_ser : ddsi_serdata_to_ser_t;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:182
      to_ser_ref : ddsi_serdata_to_ser_ref_t;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:183
      to_ser_unref : ddsi_serdata_to_ser_unref_t;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:184
      to_sample : ddsi_serdata_to_sample_t;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:185
      to_untyped : ddsi_serdata_to_untyped_t;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:186
      untyped_to_sample : ddsi_serdata_untyped_to_sample_t;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:187
      free : ddsi_serdata_free_t;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:188
      print : ddsi_serdata_print_t;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:189
      get_keyhash : ddsi_serdata_get_keyhash_t;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:190
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:175

   procedure ddsi_serdata_init
     (d : access ddsi_serdata;
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
      kind : ddsi_serdata_kind)  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_init";

  --*
  -- * @brief Return a pointer to the keyhash in the message fragchain if it was present, or else NULL.
  -- *
  -- * @param[in] fragchain the fragchain argument passed to @ref ddsi_serdata_from_ser (the first one, not any subsequent ones)
  -- * @returns A pointer to the keyhash in the message if it was present, NULL if not. The lifetime is at least that of the fragchain itself.
  --  

   function ddsi_serdata_keyhash_from_fragchain (fragchain : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.nn_rdata) return access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h.ddsi_keyhash_t  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_keyhash_from_fragchain";

  -- backwards compatibility: wrap a sertopic-derived serdata so that it may be used as a sertype-derived one; increments refcount  
   function ddsi_sertopic_wrap_serdata
     (c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
      kind : ddsi_serdata_kind;
      old : System.Address) return access ddsi_serdata  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_wrap_serdata";

  --*
  -- * @brief Return a reference to a serdata with possible type conversion
  -- *
  -- * If `serdata` is of type `type`, this increments the reference count and returns
  -- * `serdata`.  Otherwise, it constructs a new one from the serialised representation of
  -- * `serdata`.  This can fail, in which case it returns NULL.
  -- *
  -- * @param[in] type    sertype the returned serdata must have
  -- * @param[in] serdata  source sample (untouched except for the reference count and/or
  -- *   extracting the serialised representation)
  -- * @returns A reference to a serdata that is equivalent to the input with the correct
  -- *   topic, or a null pointer on failure.  The reference must be released with @ref
  -- *   ddsi_serdata_unref.
  --  

   function ddsi_serdata_ref_as_type (c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype; serdata : access ddsi_serdata) return access ddsi_serdata  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_ref_as_type";

   function ddsi_serdata_ref (serdata_const : access constant ddsi_serdata) return access ddsi_serdata  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_ref";

   procedure ddsi_serdata_unref (serdata : access ddsi_serdata)  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_unref";

   function ddsi_serdata_size (d : access constant ddsi_serdata) return unsigned  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_size";

   function ddsi_serdata_from_ser
     (c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
      kind : ddsi_serdata_kind;
      fragchain : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.nn_rdata;
      size : unsigned_long) return access ddsi_serdata  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_from_ser";

   function ddsi_serdata_from_ser_iov
     (c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
      kind : ddsi_serdata_kind;
      niov : CycloneDDS.Low_Level.dds_ddsrt_iovec_h.ddsrt_msg_iovlen_t;
      iov : access constant CycloneDDS.Low_Level.dds_ddsrt_iovec_h.ddsrt_iovec_t;
      size : unsigned_long) return access ddsi_serdata  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_from_ser_iov";

   function ddsi_serdata_from_keyhash (c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype; keyhash : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h.ddsi_keyhash) return access ddsi_serdata  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:261
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_from_keyhash";

   function ddsi_serdata_from_sample
     (c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
      kind : ddsi_serdata_kind;
      sample : System.Address) return access ddsi_serdata  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:265
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_from_sample";

   function ddsi_serdata_to_untyped (d : access constant ddsi_serdata) return access ddsi_serdata  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_to_untyped";

   procedure ddsi_serdata_to_ser
     (d : access constant ddsi_serdata;
      off : unsigned_long;
      sz : unsigned_long;
      buf : System.Address)  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:273
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_to_ser";

   function ddsi_serdata_to_ser_ref
     (d : access constant ddsi_serdata;
      off : unsigned_long;
      sz : unsigned_long;
      ref : access CycloneDDS.Low_Level.dds_ddsrt_iovec_h.ddsrt_iovec_t) return access ddsi_serdata  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:277
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_to_ser_ref";

   procedure ddsi_serdata_to_ser_unref (d : access ddsi_serdata; ref : access constant CycloneDDS.Low_Level.dds_ddsrt_iovec_h.ddsrt_iovec_t)  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:281
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_to_ser_unref";

   function ddsi_serdata_to_sample
     (d : access constant ddsi_serdata;
      sample : System.Address;
      bufptr : System.Address;
      buflim : System.Address) return Extensions.bool  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:285
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_to_sample";

   function ddsi_serdata_untyped_to_sample
     (c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
      d : access constant ddsi_serdata;
      sample : System.Address;
      bufptr : System.Address;
      buflim : System.Address) return Extensions.bool  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:289
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_untyped_to_sample";

   function ddsi_serdata_eqkey (a : access constant ddsi_serdata; b : access constant ddsi_serdata) return Extensions.bool  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_eqkey";

   function ddsi_serdata_print
     (d : access constant ddsi_serdata;
      buf : Interfaces.C.Strings.chars_ptr;
      size : unsigned_long) return Extensions.bool  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_print";

   function ddsi_serdata_print_untyped
     (c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
      d : access constant ddsi_serdata;
      buf : Interfaces.C.Strings.chars_ptr;
      size : unsigned_long) return Extensions.bool  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:301
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_print_untyped";

   procedure ddsi_serdata_get_keyhash
     (d : access constant ddsi_serdata;
      buf : access CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h.ddsi_keyhash;
      force_md5 : Extensions.bool)  -- /usr/gnat/include/dds/ddsi/ddsi_serdata.h:311
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_get_keyhash";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h;
