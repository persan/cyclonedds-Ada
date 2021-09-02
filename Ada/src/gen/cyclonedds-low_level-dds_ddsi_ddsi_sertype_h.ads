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

   DDSI_SERTYPE_REGISTERING : constant := 16#40000000#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:33
   DDSI_SERTYPE_REGISTERED : constant := 16#80000000#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:34
   DDSI_SERTYPE_REFC_MASK : constant := 16#0fffffff#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:35

   DDSI_SERTOPIC_HAS_TOPICKIND_NO_KEY : constant := 1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:63

   DDSI_SERTOPIC_HAS_EQUAL_AND_HASH : constant := 1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:75

   DDSI_SERTYPE_HAS_SERTYPE_INIT_FLAGS : constant := 1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:80

   DDSI_SERTYPE_FLAG_TOPICKIND_NO_KEY : constant := (1);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:150
   DDSI_SERTYPE_FLAG_REQUEST_KEYHASH : constant := (2);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:151
   DDSI_SERTYPE_FLAG_FIXED_SIZE : constant := (4);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:152

   DDSI_SERTYPE_FLAG_MASK : constant := (16#7#);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:154

   type type_identifier is null record;   -- incomplete struct

   type ddsi_sertype_ops;
   type ddsi_sertype is record
      ops : access constant ddsi_sertype_ops;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:38
      serdata_ops : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata_ops;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:39
      serdata_basehash : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:40
      typekind_no_key : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:41
      request_keyhash : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:42
      fixed_size : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:43
      type_name : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:44
      gv : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_voidp_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:45
      flags_refc : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:46
      wrapped_sertopic : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:47
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:37

   type ddsi_sertype_equal_t is access function (arg1 : access constant ddsi_sertype; arg2 : access constant ddsi_sertype) return Extensions.bool
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:85

   type ddsi_sertype_hash_t is access function (arg1 : access constant ddsi_sertype) return Interfaces.Unsigned_32
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:89

   type ddsi_sertype_typeid_hash_t is access function (arg1 : access constant ddsi_sertype; arg2 : access unsigned_char) return Extensions.bool
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:93

   type ddsi_sertype_free_t is access procedure (arg1 : access ddsi_sertype)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:96

   type ddsi_sertype_zero_samples_t is access procedure
        (arg1 : access constant ddsi_sertype;
         arg2 : System.Address;
         arg3 : size_t)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:100

   type ddsi_sertype_realloc_samples_t is access procedure
        (arg1 : System.Address;
         arg2 : access constant ddsi_sertype;
         arg3 : System.Address;
         arg4 : size_t;
         arg5 : size_t)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:103

   type ddsi_sertype_free_samples_t is access procedure
        (arg1 : access constant ddsi_sertype;
         arg2 : System.Address;
         arg3 : size_t;
         arg4 : CycloneDDS.Low_Level.dds_ddsc_dds_public_alloc_h.dds_free_op_t)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:106

   type ddsi_sertype_serialized_size_t is access procedure (arg1 : access constant ddsi_sertype; arg2 : access size_t)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:109

   type ddsi_sertype_serialize_t is access function
        (arg1 : access constant ddsi_sertype;
         arg2 : access size_t;
         arg3 : access unsigned_char) return Extensions.bool
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:112

   type ddsi_sertype_deserialize_t is access function
        (arg1 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
         arg2 : access ddsi_sertype;
         arg3 : size_t;
         arg4 : access unsigned_char;
         arg5 : access size_t) return Extensions.bool
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:115

   type ddsi_sertype_assignable_from_t is access function (arg1 : access constant ddsi_sertype; arg2 : access constant ddsi_sertype) return Extensions.bool
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:118

   type ddsi_sertype_v0 is null record;   -- incomplete struct

   type ddsi_sertype_v0_t is access procedure (arg1 : access ddsi_sertype_v0)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:121

   procedure ddsi_sertype_v0 (dummy : access ddsi_sertype_v0)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_v0";

   type ddsi_sertype_ops is record
      version : ddsi_sertype_v0_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:131
      arg : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:132
      free : ddsi_sertype_free_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:134
      zero_samples : ddsi_sertype_zero_samples_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:135
      realloc_samples : ddsi_sertype_realloc_samples_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:136
      free_samples : ddsi_sertype_free_samples_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:137
      equal : ddsi_sertype_equal_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:138
      hash : ddsi_sertype_hash_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:139
      typeid_hash : ddsi_sertype_typeid_hash_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:140
      serialized_size : ddsi_sertype_serialized_size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:141
      serialize : ddsi_sertype_serialize_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:142
      deserialize : ddsi_sertype_deserialize_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:143
      assignable_from : ddsi_sertype_assignable_from_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:144
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:130

   function ddsi_sertype_lookup_locked (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; sertype_template : access constant ddsi_sertype) return access ddsi_sertype  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_lookup_locked";

   procedure ddsi_sertype_register_locked (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; sertype : access ddsi_sertype)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_register_locked";

   procedure ddsi_sertype_init_flags
     (tp : access ddsi_sertype;
      type_name : Interfaces.C.Strings.chars_ptr;
      sertype_ops : access constant ddsi_sertype_ops;
      serdata_ops : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata_ops;
      flags : Interfaces.Unsigned_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_init_flags";

   procedure ddsi_sertype_init
     (tp : access ddsi_sertype;
      type_name : Interfaces.C.Strings.chars_ptr;
      sertype_ops : access constant ddsi_sertype_ops;
      serdata_ops : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata_ops;
      topickind_no_key : Extensions.bool)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_init";

   function ddsi_sertype_deserialize
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      tp : access ddsi_sertype;
      sertype_ops : access constant ddsi_sertype_ops;
      sz : size_t;
      serdata : access unsigned_char) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_deserialize";

   procedure ddsi_sertype_fini (tp : access ddsi_sertype)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_fini";

   function ddsi_sertype_ref (tp : access constant ddsi_sertype) return access ddsi_sertype  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_ref";

   procedure ddsi_sertype_unref_locked (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; tp : access ddsi_sertype)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_unref_locked";

   procedure ddsi_sertype_unref (tp : access ddsi_sertype)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_unref";

   function ddsi_sertype_compute_serdata_basehash (ops : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata_ops) return Interfaces.Unsigned_32  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_compute_serdata_basehash";

   function ddsi_sertype_equal (a : access constant ddsi_sertype; b : access constant ddsi_sertype) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_equal";

   function ddsi_sertype_hash (tp : access constant ddsi_sertype) return Interfaces.Unsigned_32  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_hash";

   function ddsi_sertype_serialize
     (tp : access constant ddsi_sertype;
      dst_pos : access size_t;
      dst_buf : System.Address) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_serialize";

   procedure ddsi_sertype_free (tp : access ddsi_sertype)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_free";

   procedure ddsi_sertype_zero_samples
     (tp : access constant ddsi_sertype;
      samples : System.Address;
      count : size_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_zero_samples";

   procedure ddsi_sertype_realloc_samples
     (ptrs : System.Address;
      tp : access constant ddsi_sertype;
      old : System.Address;
      oldcount : size_t;
      count : size_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_realloc_samples";

   procedure ddsi_sertype_free_samples
     (tp : access constant ddsi_sertype;
      ptrs : System.Address;
      count : size_t;
      op : CycloneDDS.Low_Level.dds_ddsc_dds_public_alloc_h.dds_free_op_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_free_samples";

   procedure ddsi_sertype_zero_sample (tp : access constant ddsi_sertype; sample : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:184
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_zero_sample";

   function ddsi_sertype_alloc_sample (tp : access constant ddsi_sertype) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:187
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_alloc_sample";

   procedure ddsi_sertype_free_sample
     (tp : access constant ddsi_sertype;
      sample : System.Address;
      op : CycloneDDS.Low_Level.dds_ddsc_dds_public_alloc_h.dds_free_op_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:192
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_free_sample";

   function ddsi_sertype_typeid_hash (tp : access constant ddsi_sertype; buf : access unsigned_char) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:195
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_typeid_hash";

   function ddsi_sertype_assignable_from (type_a : access constant ddsi_sertype; type_b : access constant ddsi_sertype) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_sertype.h:200
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_assignable_from";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h;
