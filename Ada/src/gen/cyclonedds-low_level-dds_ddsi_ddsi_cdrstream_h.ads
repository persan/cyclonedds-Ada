pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with System;
with Interfaces.C.Extensions;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h;

with Interfaces.C.Strings;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_cdrstream_h is

   DDS_OP_MASK : constant := 16#ff000000#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:71
   DDS_OP_TYPE_MASK : constant := 16#00ff0000#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:72
   DDS_OP_SUBTYPE_MASK : constant := 16#0000ff00#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:73
   DDS_OP_JMP_MASK : constant := 16#0000ffff#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:74
   DDS_OP_FLAGS_MASK : constant := 16#000000ff#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:75
   DDS_JEQ_TYPE_MASK : constant := 16#00ff0000#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:76
   --  arg-macro: function DDS_OP (o)
   --    return (enum dds_stream_opcode) ((o) and DDS_OP_MASK);
   --  arg-macro: function DDS_OP_TYPE (o)
   --    return (enum dds_stream_typecode) (((o) and DDS_OP_TYPE_MASK) >> 16);
   --  arg-macro: function DDS_OP_SUBTYPE (o)
   --    return (enum dds_stream_typecode) (((o) and DDS_OP_SUBTYPE_MASK) >> 8);
   --  arg-macro: function DDS_OP_FLAGS (o)
   --    return (o) and DDS_OP_FLAGS_MASK;
   --  arg-macro: function DDS_OP_ADR_JSR (o)
   --    return (o) and DDS_OP_JMP_MASK;
   --  arg-macro: function DDS_OP_JUMP (o)
   --    return (int16_t) ((o) and DDS_OP_JMP_MASK);
   --  arg-macro: function DDS_OP_ADR_JMP (o)
   --    return (o) >> 16;
   --  arg-macro: function DDS_JEQ_TYPE (o)
   --    return (enum dds_stream_typecode) (((o) and DDS_JEQ_TYPE_MASK) >> 16);

   type dds_istream is record
      m_buffer : access unsigned_char;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:23
      m_size : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:24
      m_index : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:25
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:22

   subtype dds_istream_t is dds_istream;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:26

   type dds_ostream is record
      m_buffer : access unsigned_char;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:29
      m_size : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:30
      m_index : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:31
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:28

   subtype dds_ostream_t is dds_ostream;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:32

   type dds_ostreamBE is record
      x : aliased dds_ostream_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:35
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:34

   subtype dds_ostreamBE_t is dds_ostreamBE;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:36

   procedure dds_ostream_init (st : access dds_ostream_t; size : Interfaces.Unsigned_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "dds_ostream_init";

   procedure dds_ostream_fini (st : access dds_ostream_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "dds_ostream_fini";

   procedure dds_ostreamBE_init (st : access dds_ostreamBE_t; size : Interfaces.Unsigned_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "dds_ostreamBE_init";

   procedure dds_ostreamBE_fini (st : access dds_ostreamBE_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "dds_ostreamBE_fini";

   function dds_stream_normalize
     (data : System.Address;
      size : Interfaces.Unsigned_32;
      bswap : Extensions.bool;
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h.ddsi_sertype_default;
      just_key : Extensions.bool) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "dds_stream_normalize";

   procedure dds_stream_write_sample
     (os : access dds_ostream_t;
      data : System.Address;
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h.ddsi_sertype_default)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "dds_stream_write_sample";

   procedure dds_stream_read_sample
     (c_is : access dds_istream_t;
      data : System.Address;
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h.ddsi_sertype_default)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "dds_stream_read_sample";

   procedure dds_stream_free_sample (data : System.Address; ops : access Interfaces.Unsigned_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "dds_stream_free_sample";

   function dds_stream_countops (ops : access Interfaces.Unsigned_32) return Interfaces.Unsigned_32  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "dds_stream_countops";

   function dds_stream_check_optimize (desc : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h.ddsi_sertype_default_desc) return size_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "dds_stream_check_optimize";

   procedure dds_istream_from_serdata_default (s : access dds_istream_t; d : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h.ddsi_serdata_default)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "dds_istream_from_serdata_default";

   procedure dds_ostream_from_serdata_default (s : access dds_ostream_t; d : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h.ddsi_serdata_default)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "dds_ostream_from_serdata_default";

   procedure dds_ostream_add_to_serdata_default (s : access dds_ostream_t; d : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "dds_ostream_add_to_serdata_default";

   procedure dds_ostreamBE_from_serdata_default (s : access dds_ostreamBE_t; d : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h.ddsi_serdata_default)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "dds_ostreamBE_from_serdata_default";

   procedure dds_ostreamBE_add_to_serdata_default (s : access dds_ostreamBE_t; d : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "dds_ostreamBE_add_to_serdata_default";

   procedure dds_stream_write_key
     (os : access dds_ostream_t;
      sample : Interfaces.C.Strings.chars_ptr;
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h.ddsi_sertype_default)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "dds_stream_write_key";

   procedure dds_stream_write_keyBE
     (os : access dds_ostreamBE_t;
      sample : Interfaces.C.Strings.chars_ptr;
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h.ddsi_sertype_default)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "dds_stream_write_keyBE";

   procedure dds_stream_extract_key_from_data
     (c_is : access dds_istream_t;
      os : access dds_ostream_t;
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h.ddsi_sertype_default)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "dds_stream_extract_key_from_data";

   procedure dds_stream_extract_keyBE_from_data
     (c_is : access dds_istream_t;
      os : access dds_ostreamBE_t;
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h.ddsi_sertype_default)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "dds_stream_extract_keyBE_from_data";

   procedure dds_stream_extract_keyhash
     (c_is : access dds_istream_t;
      kh : access CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h.dds_keyhash;
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h.ddsi_sertype_default;
      just_key : Extensions.bool)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "dds_stream_extract_keyhash";

   procedure dds_stream_read_key
     (c_is : access dds_istream_t;
      sample : Interfaces.C.Strings.chars_ptr;
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h.ddsi_sertype_default)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "dds_stream_read_key";

   function dds_stream_print_key
     (c_is : access dds_istream_t;
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h.ddsi_sertype_default;
      buf : Interfaces.C.Strings.chars_ptr;
      size : size_t) return size_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "dds_stream_print_key";

   function dds_stream_print_sample
     (c_is : access dds_istream_t;
      c_type : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h.ddsi_sertype_default;
      buf : Interfaces.C.Strings.chars_ptr;
      size : size_t) return size_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_cdrstream.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "dds_stream_print_sample";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_cdrstream_h;
