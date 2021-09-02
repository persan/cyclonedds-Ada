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

   DDSI_SERDATA_HAS_PRINT : constant := 1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:197
   DDSI_SERDATA_HAS_FROM_SER_IOV : constant := 1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:198
   DDSI_SERDATA_HAS_GET_KEYHASH : constant := 1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:199

   type ddsi_serdata_kind is 
     (SDK_EMPTY,
      SDK_KEY,
      SDK_DATA)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:28

   type ddsi_serdata_ops;
   type ddsi_serdata is record
      ops : access constant ddsi_serdata_ops;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:48
      hash : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:49
      refc : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:50
      kind : aliased ddsi_serdata_kind;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:51
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:52
      timestamp : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_wctime_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:55
      statusinfo : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:56
      twrite : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:59
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:34

   type ddsi_serdata_wrapper is record
      c : aliased ddsi_serdata;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:68
      compat_wrap : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:69
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:67

   type ddsi_serdata_size_t is access function (arg1 : access constant ddsi_serdata) return Interfaces.Unsigned_32
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:75

   type ddsi_serdata_free_t is access procedure (arg1 : access ddsi_serdata)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:78

   type ddsi_serdata_from_ser_t is access function
        (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
         arg2 : ddsi_serdata_kind;
         arg3 : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.nn_rdata;
         arg4 : size_t) return access ddsi_serdata
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:87

   type ddsi_serdata_from_ser_iov_t is access function
        (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
         arg2 : ddsi_serdata_kind;
         arg3 : CycloneDDS.Low_Level.dds_ddsrt_iovec_h.ddsrt_msg_iovlen_t;
         arg4 : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_types_struct_iovec_h.iovec;
         arg5 : size_t) return access ddsi_serdata
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:90

   type ddsi_serdata_from_keyhash_t is access function (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype; arg2 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h.ddsi_keyhash) return access ddsi_serdata
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:93

   type ddsi_serdata_from_sample_t is access function
        (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
         arg2 : ddsi_serdata_kind;
         arg3 : System.Address) return access ddsi_serdata
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:100

   type ddsi_serdata_to_untyped_t is access function (arg1 : access constant ddsi_serdata) return access ddsi_serdata
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:110

   type ddsi_serdata_to_ser_t is access procedure
        (arg1 : access constant ddsi_serdata;
         arg2 : size_t;
         arg3 : size_t;
         arg4 : System.Address)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:118

   type ddsi_serdata_to_ser_ref_t is access function
        (arg1 : access constant ddsi_serdata;
         arg2 : size_t;
         arg3 : size_t;
         arg4 : access CycloneDDS.Low_Level.x86_64_linux_gnu_bits_types_struct_iovec_h.iovec) return access ddsi_serdata
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:127

   type ddsi_serdata_to_ser_unref_t is access procedure (arg1 : access ddsi_serdata; arg2 : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_types_struct_iovec_h.iovec)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:131

   type ddsi_serdata_to_sample_t is access function
        (arg1 : access constant ddsi_serdata;
         arg2 : System.Address;
         arg3 : System.Address;
         arg4 : System.Address) return Extensions.bool
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:141

   type ddsi_serdata_untyped_to_sample_t is access function
        (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
         arg2 : access constant ddsi_serdata;
         arg3 : System.Address;
         arg4 : System.Address;
         arg5 : System.Address) return Extensions.bool
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:145

   type ddsi_serdata_eqkey_t is access function (arg1 : access constant ddsi_serdata; arg2 : access constant ddsi_serdata) return Extensions.bool
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:152

   type ddsi_serdata_print_t is access function
        (arg1 : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
         arg2 : access constant ddsi_serdata;
         arg3 : Interfaces.C.Strings.chars_ptr;
         arg4 : size_t) return size_t
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:161

   type ddsi_serdata_get_keyhash_t is access procedure
        (arg1 : access constant ddsi_serdata;
         arg2 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h.ddsi_keyhash;
         arg3 : Extensions.bool)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:166

   type ddsi_serdata_ops is record
      eqkey : ddsi_serdata_eqkey_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:176
      get_size : ddsi_serdata_size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:177
      from_ser : ddsi_serdata_from_ser_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:178
      from_ser_iov : ddsi_serdata_from_ser_iov_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:179
      from_keyhash : ddsi_serdata_from_keyhash_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:180
      from_sample : ddsi_serdata_from_sample_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:181
      to_ser : ddsi_serdata_to_ser_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:182
      to_ser_ref : ddsi_serdata_to_ser_ref_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:183
      to_ser_unref : ddsi_serdata_to_ser_unref_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:184
      to_sample : ddsi_serdata_to_sample_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:185
      to_untyped : ddsi_serdata_to_untyped_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:186
      untyped_to_sample : ddsi_serdata_untyped_to_sample_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:187
      free : ddsi_serdata_free_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:188
      print : ddsi_serdata_print_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:189
      get_keyhash : ddsi_serdata_get_keyhash_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:190
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:175

   procedure ddsi_serdata_init
     (d : access ddsi_serdata;
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
      kind : ddsi_serdata_kind)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_init";

   function ddsi_serdata_keyhash_from_fragchain (fragchain : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.nn_rdata) return access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h.ddsi_keyhash  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_keyhash_from_fragchain";

   function ddsi_sertopic_wrap_serdata
     (c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
      kind : ddsi_serdata_kind;
      old : System.Address) return access ddsi_serdata  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertopic_wrap_serdata";

   function ddsi_serdata_ref_as_type (c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype; serdata : access ddsi_serdata) return access ddsi_serdata  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_ref_as_type";

   function ddsi_serdata_ref (serdata_const : access constant ddsi_serdata) return access ddsi_serdata  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_ref";

   procedure ddsi_serdata_unref (serdata : access ddsi_serdata)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_unref";

   function ddsi_serdata_size (d : access constant ddsi_serdata) return Interfaces.Unsigned_32  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_size";

   function ddsi_serdata_from_ser
     (c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
      kind : ddsi_serdata_kind;
      fragchain : access constant CycloneDDS.Low_Level.dds_ddsi_q_radmin_h.nn_rdata;
      size : size_t) return access ddsi_serdata  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_from_ser";

   function ddsi_serdata_from_ser_iov
     (c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
      kind : ddsi_serdata_kind;
      niov : CycloneDDS.Low_Level.dds_ddsrt_iovec_h.ddsrt_msg_iovlen_t;
      iov : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_types_struct_iovec_h.iovec;
      size : size_t) return access ddsi_serdata  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_from_ser_iov";

   function ddsi_serdata_from_keyhash (c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype; keyhash : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h.ddsi_keyhash) return access ddsi_serdata  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:261
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_from_keyhash";

   function ddsi_serdata_from_sample
     (c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
      kind : ddsi_serdata_kind;
      sample : System.Address) return access ddsi_serdata  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:265
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_from_sample";

   function ddsi_serdata_to_untyped (d : access constant ddsi_serdata) return access ddsi_serdata  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_to_untyped";

   procedure ddsi_serdata_to_ser
     (d : access constant ddsi_serdata;
      off : size_t;
      sz : size_t;
      buf : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:273
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_to_ser";

   function ddsi_serdata_to_ser_ref
     (d : access constant ddsi_serdata;
      off : size_t;
      sz : size_t;
      ref : access CycloneDDS.Low_Level.x86_64_linux_gnu_bits_types_struct_iovec_h.iovec) return access ddsi_serdata  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:277
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_to_ser_ref";

   procedure ddsi_serdata_to_ser_unref (d : access ddsi_serdata; ref : access constant CycloneDDS.Low_Level.x86_64_linux_gnu_bits_types_struct_iovec_h.iovec)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:281
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_to_ser_unref";

   function ddsi_serdata_to_sample
     (d : access constant ddsi_serdata;
      sample : System.Address;
      bufptr : System.Address;
      buflim : System.Address) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:285
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_to_sample";

   function ddsi_serdata_untyped_to_sample
     (c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
      d : access constant ddsi_serdata;
      sample : System.Address;
      bufptr : System.Address;
      buflim : System.Address) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:289
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_untyped_to_sample";

   function ddsi_serdata_eqkey (a : access constant ddsi_serdata; b : access constant ddsi_serdata) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_eqkey";

   function ddsi_serdata_print
     (d : access constant ddsi_serdata;
      buf : Interfaces.C.Strings.chars_ptr;
      size : size_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_print";

   function ddsi_serdata_print_untyped
     (c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;
      d : access constant ddsi_serdata;
      buf : Interfaces.C.Strings.chars_ptr;
      size : size_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:301
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_print_untyped";

   procedure ddsi_serdata_get_keyhash
     (d : access constant ddsi_serdata;
      buf : access CycloneDDS.Low_Level.dds_ddsi_ddsi_keyhash_h.ddsi_keyhash;
      force_md5 : Extensions.bool)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata.h:311
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_get_keyhash";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h;
