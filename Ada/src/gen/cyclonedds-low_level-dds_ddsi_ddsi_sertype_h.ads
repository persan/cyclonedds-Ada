pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h;

with Interfaces.C.Extensions;
with Interfaces.C.Strings;
with CycloneDDS.Low_Level.dds_ddsrt_atomics_h;
with System;

with CycloneDDS.Low_Level.dds_ddsc_dds_public_alloc_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h is

   DDSI_SERTYPE_REGISTERING : constant := 16#40000000#;  --  /usr/gnat/include/dds/ddsi/ddsi_sertype.h:33
   DDSI_SERTYPE_REGISTERED : constant := 16#80000000#;  --  /usr/gnat/include/dds/ddsi/ddsi_sertype.h:34
   DDSI_SERTYPE_REFC_MASK : constant := 16#0fffffff#;  --  /usr/gnat/include/dds/ddsi/ddsi_sertype.h:35

   DDSI_SERTOPIC_HAS_TOPICKIND_NO_KEY : constant := 1;  --  /usr/gnat/include/dds/ddsi/ddsi_sertype.h:63

   DDSI_SERTOPIC_HAS_EQUAL_AND_HASH : constant := 1;  --  /usr/gnat/include/dds/ddsi/ddsi_sertype.h:75

   DDSI_SERTYPE_HAS_SERTYPE_INIT_FLAGS : constant := 1;  --  /usr/gnat/include/dds/ddsi/ddsi_sertype.h:80

   DDSI_SERTYPE_FLAG_TOPICKIND_NO_KEY : constant := (1);  --  /usr/gnat/include/dds/ddsi/ddsi_sertype.h:150
   DDSI_SERTYPE_FLAG_REQUEST_KEYHASH : constant := (2);  --  /usr/gnat/include/dds/ddsi/ddsi_sertype.h:151
   DDSI_SERTYPE_FLAG_FIXED_SIZE : constant := (4);  --  /usr/gnat/include/dds/ddsi/ddsi_sertype.h:152

   DDSI_SERTYPE_FLAG_MASK : constant := (16#7#);  --  /usr/gnat/include/dds/ddsi/ddsi_sertype.h:154

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

   type type_identifier is null record;   -- incomplete struct

   type ddsi_sertype_ops;
   type ddsi_sertype is record
      ops : access constant ddsi_sertype_ops;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:38
      serdata_ops : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata_ops;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:39
      serdata_basehash : aliased unsigned;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:40
      typekind_no_key : Extensions.Unsigned_1;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:41
      request_keyhash : Extensions.Unsigned_1;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:42
      fixed_size : Extensions.Unsigned_1;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:43
      type_name : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:44
      gv : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_voidp_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:45
      flags_refc : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:46
      wrapped_sertopic : System.Address;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:47
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:37

  -- set during registration  
  -- counts refs from entities (topic, reader, writer), not from data  
  -- void pointer because that simplifies the required type-punning  
  -- The old and the new happen to have the same memory layout on a 64-bit machine
  --   and so any user that memset's the ddsi_sertype to 0 before filling out the
  --   required fields gets unchanged behaviour.  32-bit machines have a different
  --   layout and no such luck.
  --   There are presumably very few users of this type outside Cyclone DDS itself,
  --   but the ROS2 RMW implementation does use it -- indeed, it prompted the change.
  --   This define makes it possible to have a single version of the source that is
  --   compatible with the old and the new definition, even if it is only partially
  --   binary compatible.  

  -- Type changed: name_type_name and ii removed and gv added; and the set of
  --   operations got extended by the a predicate for testing to sertypes (with the
  --   same "ops") for equality ("equal") as well as a function for hashing the
  --   non-generic part of the sertype definition (via "hash").  These two operations
  --   make it possible to intern sertypes without duplicates, which has become
  --   relevant now that multiple ddsi_sertypes can be associated with a single topic
  --   name.
  --   Testing for DDSI_SERTOPIC_HAS_EQUAL_AND_HASH allows one to have a single source
  --   that can handle both variants, but there's no binary compatbility.  

  -- It was a bad decision to have a boolean argument in "init" specifying whether
  --   the entity kind should say "with key" or "without key".  A general "flags"
  --   argument is much more flexible ...  

  -- Called to compare two sertypes for equality, if it is already known that
  --   type name, kind_no_Key, and operations are all the same.  (serdata_basehash
  --   is computed from the set of operations.)  

   type ddsi_sertype_equal_t is access function (arg1 : access constant ddsi_sertype; arg2 : access constant ddsi_sertype) return Extensions.bool
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:85

  -- Hash the custom components of a sertype (this XOR'd with a hash computed from
  --   the fields that are defined in struct ddsi_sertype)  

   type ddsi_sertype_hash_t is access function (arg1 : access constant ddsi_sertype) return unsigned
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:89

  -- Calculates a hash to be used in a TypeIdentifier, that includes the
  --   custom component of the sertype  

   type ddsi_sertype_typeid_hash_t is access function (arg1 : access constant ddsi_sertype; arg2 : access unsigned_char) return Extensions.bool
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:93

  -- Called when the refcount dropped to zero  
   type ddsi_sertype_free_t is access procedure (arg1 : access ddsi_sertype)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:96

  -- Zero out a sample, used for generating samples from just a key value and in cleaning up
  --   after dds_return_loan  

   type ddsi_sertype_zero_samples_t is access procedure
        (arg1 : access constant ddsi_sertype;
         arg2 : System.Address;
         arg3 : unsigned_long)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:100

  -- (Re)allocate an array of samples, used in growing loaned sample arrays in dds_read  
   type ddsi_sertype_realloc_samples_t is access procedure
        (arg1 : System.Address;
         arg2 : access constant ddsi_sertype;
         arg3 : System.Address;
         arg4 : unsigned_long;
         arg5 : unsigned_long)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:103

  -- Release any memory allocated by ddsi_sertype_to_sample (also undo sertype_alloc_sample if "op" so requests)  
   type ddsi_sertype_free_samples_t is access procedure
        (arg1 : access constant ddsi_sertype;
         arg2 : System.Address;
         arg3 : unsigned_long;
         arg4 : CycloneDDS.Low_Level.dds_ddsc_dds_public_alloc_h.dds_free_op_t)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:106

  -- Serialized size for this type  
   type ddsi_sertype_serialized_size_t is access procedure (arg1 : access constant ddsi_sertype; arg2 : access unsigned_long)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:109

  -- Serialize this type  
   type ddsi_sertype_serialize_t is access function
        (arg1 : access constant ddsi_sertype;
         arg2 : access unsigned_long;
         arg3 : access unsigned_char) return Extensions.bool
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:112

  -- Deserialize this type  
   type ddsi_sertype_deserialize_t is access function
        (arg1 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
         arg2 : access ddsi_sertype;
         arg3 : unsigned_long;
         arg4 : access unsigned_char;
         arg5 : access unsigned_long) return Extensions.bool
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:115

  -- Check if (an object of) type a is assignable from (an object of) the type b  
   type ddsi_sertype_assignable_from_t is access function (arg1 : access constant ddsi_sertype; arg2 : access constant ddsi_sertype) return Extensions.bool
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:118

   type ddsi_sertype_v0 is null record;   -- incomplete struct

   type ddsi_sertype_v0_t is access procedure (arg1 : access ddsi_sertype_v0)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:121

  -- Because Windows ... just can't get its act together ...
   procedure ddsi_sertype_v0 (dummy : access ddsi_sertype_v0)  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_v0";

   type ddsi_sertype_ops is record
      version : ddsi_sertype_v0_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:131
      arg : System.Address;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:132
      free : ddsi_sertype_free_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:134
      zero_samples : ddsi_sertype_zero_samples_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:135
      realloc_samples : ddsi_sertype_realloc_samples_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:136
      free_samples : ddsi_sertype_free_samples_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:137
      equal : ddsi_sertype_equal_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:138
      hash : ddsi_sertype_hash_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:139
      typeid_hash : ddsi_sertype_typeid_hash_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:140
      serialized_size : ddsi_sertype_serialized_size_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:141
      serialize : ddsi_sertype_serialize_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:142
      deserialize : ddsi_sertype_deserialize_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:143
      assignable_from : ddsi_sertype_assignable_from_t;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:144
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:130

   function ddsi_sertype_lookup_locked (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; sertype_template : access constant ddsi_sertype) return access ddsi_sertype  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_lookup_locked";

   procedure ddsi_sertype_register_locked (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; sertype : access ddsi_sertype)  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_register_locked";

   procedure ddsi_sertype_init_flags
     (tp : access ddsi_sertype;
      type_name : Interfaces.C.Strings.chars_ptr;
      sertype_ops : access constant ddsi_sertype_ops;
      serdata_ops : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata_ops;
      flags : unsigned)  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_init_flags";

   procedure ddsi_sertype_init
     (tp : access ddsi_sertype;
      type_name : Interfaces.C.Strings.chars_ptr;
      sertype_ops : access constant ddsi_sertype_ops;
      serdata_ops : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata_ops;
      topickind_no_key : Extensions.bool)  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_init";

   function ddsi_sertype_deserialize
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      tp : access ddsi_sertype;
      sertype_ops : access constant ddsi_sertype_ops;
      sz : unsigned_long;
      serdata : access unsigned_char) return Extensions.bool  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_deserialize";

   procedure ddsi_sertype_fini (tp : access ddsi_sertype)  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_fini";

   function ddsi_sertype_ref (tp : access constant ddsi_sertype) return access ddsi_sertype  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_ref";

  -- gv->sertypes_lock must be held  
   procedure ddsi_sertype_unref_locked (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; tp : access ddsi_sertype)  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_unref_locked";

  -- tp->gv->sertypes_lock may not be held  
   procedure ddsi_sertype_unref (tp : access ddsi_sertype)  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_unref";

   function ddsi_sertype_compute_serdata_basehash (ops : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata_ops) return unsigned  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_compute_serdata_basehash";

   function ddsi_sertype_equal (a : access constant ddsi_sertype; b : access constant ddsi_sertype) return Extensions.bool  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_equal";

   function ddsi_sertype_hash (tp : access constant ddsi_sertype) return unsigned  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_hash";

   function ddsi_sertype_serialize
     (tp : access constant ddsi_sertype;
      dst_pos : access unsigned_long;
      dst_buf : System.Address) return Extensions.bool  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_serialize";

   procedure ddsi_sertype_free (tp : access ddsi_sertype)  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_free";

   procedure ddsi_sertype_zero_samples
     (tp : access constant ddsi_sertype;
      samples : System.Address;
      count : unsigned_long)  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_zero_samples";

   procedure ddsi_sertype_realloc_samples
     (ptrs : System.Address;
      tp : access constant ddsi_sertype;
      old : System.Address;
      oldcount : unsigned_long;
      count : unsigned_long)  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_realloc_samples";

   procedure ddsi_sertype_free_samples
     (tp : access constant ddsi_sertype;
      ptrs : System.Address;
      count : unsigned_long;
      op : CycloneDDS.Low_Level.dds_ddsc_dds_public_alloc_h.dds_free_op_t)  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_free_samples";

   procedure ddsi_sertype_zero_sample (tp : access constant ddsi_sertype; sample : System.Address)  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:184
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_zero_sample";

   function ddsi_sertype_alloc_sample (tp : access constant ddsi_sertype) return System.Address  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:187
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_alloc_sample";

   procedure ddsi_sertype_free_sample
     (tp : access constant ddsi_sertype;
      sample : System.Address;
      op : CycloneDDS.Low_Level.dds_ddsc_dds_public_alloc_h.dds_free_op_t)  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:192
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_free_sample";

   function ddsi_sertype_typeid_hash (tp : access constant ddsi_sertype; buf : access unsigned_char) return Extensions.bool  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:195
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_typeid_hash";

   function ddsi_sertype_assignable_from (type_a : access constant ddsi_sertype; type_b : access constant ddsi_sertype) return Extensions.bool  -- /usr/gnat/include/dds/ddsi/ddsi_sertype.h:200
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_assignable_from";

  -- If one of the types does not have a assignability check function
  --     (e.g. because it is an older sertype implementation), consider
  --     the types as assignable  

  -- In case the types have a different assignable_from function,
  --     we currently don't have a proper way to check type assignability,
  --     so we'll consider the types as not-assignable  

end CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h;
