pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsi_q_freelist_h;
with Interfaces.C.Extensions;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h;

with System;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h;

with CycloneDDS.Low_Level.dds_ddsi_q_protocol_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h is

   CDR_BE : constant := 16#0000#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:29
   CDR_LE : constant := 16#0100#;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:30
   --  unsupported macro: DDSI_SERDATA_DEFAULT_DEBUG_FIELDS bool fixed;

   type CDRHeader is record
      identifier : aliased unsigned_short;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:37
      options : aliased unsigned_short;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:38
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:36

   type serdatapool is record
      freelist : aliased CycloneDDS.Low_Level.dds_ddsi_q_freelist_h.nn_freelist;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:42
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:41

   type anon_array1789 is array (0 .. 15) of aliased unsigned_char;
   type dds_keyhash is record
      m_hash : aliased anon_array1789;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:46
      m_set : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:47
      m_iskey : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:48
      m_keysize : Extensions.Unsigned_5;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:49
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 4;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:45

   subtype dds_keyhash_t is dds_keyhash;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:50

   type ddsi_serdata_default;
   subtype anon_array4269 is Interfaces.C.char_array (0 .. 0);
   type ddsi_serdata_default_unpadded is record
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:77
      pos : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:77
      size : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:77
      fixed : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:77
      keyhash : aliased dds_keyhash_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:77
      serpool : access serdatapool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:77
      next : access ddsi_serdata_default;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:77
      hdr : aliased CDRHeader;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:78
      data : aliased anon_array4269;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:78
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:76

   subtype anon_array1105 is Interfaces.C.char_array (0 .. 3);
   type ddsi_serdata_default is record
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:88
      pos : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:88
      size : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:88
      fixed : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:88
      keyhash : aliased dds_keyhash_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:88
      serpool : access serdatapool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:88
      next : access ddsi_serdata_default;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:88
      pad : aliased anon_array1105;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:89
      hdr : aliased CDRHeader;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:90
      data : aliased anon_array4269;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:90
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:87

   type dds_topic_intern_filter_fn is access function (arg1 : System.Address; arg2 : System.Address) return Extensions.bool
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:100

   type ddsi_sertype_default_desc_key_seq is record
      nkeys : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:104
      keys : access Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:105
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:103

   subtype ddsi_sertype_default_desc_key_seq_t is ddsi_sertype_default_desc_key_seq;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:106

   type ddsi_sertype_default_desc_op_seq is record
      nops : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:109
      ops : access Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:110
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:108

   subtype ddsi_sertype_default_desc_op_seq_t is ddsi_sertype_default_desc_op_seq;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:111

   type ddsi_sertype_default_desc is record
      size : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:115
      align : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:116
      flagset : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:117
      keys : aliased ddsi_sertype_default_desc_key_seq_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:118
      ops : aliased ddsi_sertype_default_desc_op_seq_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:119
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:114

   type ddsi_sertype_default is record
      c : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:123
      native_encoding_identifier : aliased Interfaces.Unsigned_16;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:124
      serpool : access serdatapool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:125
      c_type : aliased ddsi_sertype_default_desc;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:126
      opt_size : aliased size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:127
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:122

   type ddsi_plist_sample is record
      blob : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:131
      size : aliased size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:132
      keyparam : aliased CycloneDDS.Low_Level.dds_ddsi_q_protocol_h.nn_parameterid_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:133
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:130

   type ddsi_rawcdr_sample is record
      blob : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:137
      size : aliased size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:138
      key : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:139
      keysize : aliased size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:140
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:136

   ddsi_sertype_ops_default : aliased constant CycloneDDS.Low_Level.dds_ddsi_ddsi_sertype_h.ddsi_sertype_ops  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_sertype_ops_default";

   ddsi_serdata_ops_cdr : aliased constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata_ops  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_ops_cdr";

   ddsi_serdata_ops_cdr_nokey : aliased constant CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_h.ddsi_serdata_ops  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdata_ops_cdr_nokey";

   function ddsi_serdatapool_new return access serdatapool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdatapool_new";

   procedure ddsi_serdatapool_free (pool : access serdatapool)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_serdata_default.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_serdatapool_free";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_serdata_default_h;
