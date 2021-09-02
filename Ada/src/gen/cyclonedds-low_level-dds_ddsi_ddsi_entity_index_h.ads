pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;
with CycloneDDS.Low_Level.dds_ddsi_q_thread_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;
with System;
with Interfaces.C.Strings;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_entity_index_h is

   type anon_union4930 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            wr : aliased CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:32
         when 1 =>
            rd : aliased CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:33
         when 2 =>
            e : aliased CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_common;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:34
         when others =>
            gpe : aliased CycloneDDS.Low_Level.dds_ddsi_q_entity_h.generic_proxy_endpoint;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:35
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;
   type match_entities_range_key is record
      entity : aliased anon_union4930;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:36
      xqos : aliased CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:37
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:27

   type entidx_enum is record
      entidx : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:45
      kind : aliased CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_kind;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:46
      cur : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_common;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:47
      vtime : aliased CycloneDDS.Low_Level.dds_ddsi_q_thread_h.vtime_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:49
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:43

   function entity_index_new (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv) return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "entity_index_new";

   procedure entity_index_free (ei : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "entity_index_free";

   procedure entidx_insert_participant_guid (ei : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index; pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_insert_participant_guid";

   procedure entidx_insert_proxy_participant_guid (ei : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index; proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_insert_proxy_participant_guid";

   procedure entidx_insert_writer_guid (ei : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index; wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_insert_writer_guid";

   procedure entidx_insert_reader_guid (ei : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index; rd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_insert_reader_guid";

   procedure entidx_insert_proxy_writer_guid (ei : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index; pwr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_writer)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_insert_proxy_writer_guid";

   procedure entidx_insert_proxy_reader_guid (ei : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index; prd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_insert_proxy_reader_guid";

   procedure entidx_remove_participant_guid (ei : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index; pp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_remove_participant_guid";

   procedure entidx_remove_proxy_participant_guid (ei : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index; proxypp : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_remove_proxy_participant_guid";

   procedure entidx_remove_writer_guid (ei : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index; wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_remove_writer_guid";

   procedure entidx_remove_reader_guid (ei : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index; rd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_remove_reader_guid";

   procedure entidx_remove_proxy_writer_guid (ei : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index; pwr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_writer)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_remove_proxy_writer_guid";

   procedure entidx_remove_proxy_reader_guid (ei : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index; prd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_remove_proxy_reader_guid";

   function entidx_lookup_guid_untyped (ei : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index; guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_lookup_guid_untyped";

   function entidx_lookup_guid
     (ei : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      kind : CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_kind) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_lookup_guid";

   function entidx_lookup_participant_guid (ei : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index; guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_lookup_participant_guid";

   function entidx_lookup_proxy_participant_guid (ei : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index; guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_lookup_proxy_participant_guid";

   function entidx_lookup_writer_guid (ei : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index; guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_lookup_writer_guid";

   function entidx_lookup_reader_guid (ei : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index; guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_lookup_reader_guid";

   function entidx_lookup_proxy_writer_guid (ei : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index; guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_writer  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_lookup_proxy_writer_guid";

   function entidx_lookup_proxy_reader_guid (ei : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index; guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid) return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_lookup_proxy_reader_guid";

   type entidx_enum_participant is record
      st : aliased entidx_enum;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:111
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:111

   type entidx_enum_writer is record
      st : aliased entidx_enum;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:112
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:112

   type entidx_enum_reader is record
      st : aliased entidx_enum;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:113
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:113

   type entidx_enum_proxy_participant is record
      st : aliased entidx_enum;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:114
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:114

   type entidx_enum_proxy_writer is record
      st : aliased entidx_enum;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:115
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:115

   type entidx_enum_proxy_reader is record
      st : aliased entidx_enum;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:116
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:116

   procedure entidx_enum_init
     (st : access entidx_enum;
      ei : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index;
      kind : CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_kind)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_enum_init";

   procedure entidx_enum_init_topic
     (st : access entidx_enum;
      gh : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index;
      kind : CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_kind;
      topic : Interfaces.C.Strings.chars_ptr;
      max : access match_entities_range_key)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_enum_init_topic";

   procedure entidx_enum_init_topic_w_prefix
     (st : access entidx_enum;
      ei : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index;
      kind : CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_kind;
      topic : Interfaces.C.Strings.chars_ptr;
      prefix : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid_prefix;
      max : access match_entities_range_key)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_enum_init_topic_w_prefix";

   function entidx_enum_next_max (st : access entidx_enum; max : access constant match_entities_range_key) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_enum_next_max";

   function entidx_enum_next (st : access entidx_enum) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_enum_next";

   procedure entidx_enum_fini (st : access entidx_enum)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_enum_fini";

   procedure entidx_enum_writer_init (st : access entidx_enum_writer; ei : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_enum_writer_init";

   procedure entidx_enum_reader_init (st : access entidx_enum_reader; ei : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_enum_reader_init";

   procedure entidx_enum_proxy_writer_init (st : access entidx_enum_proxy_writer; ei : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_enum_proxy_writer_init";

   procedure entidx_enum_proxy_reader_init (st : access entidx_enum_proxy_reader; ei : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_enum_proxy_reader_init";

   procedure entidx_enum_participant_init (st : access entidx_enum_participant; ei : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_enum_participant_init";

   procedure entidx_enum_proxy_participant_init (st : access entidx_enum_proxy_participant; ei : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_index)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_enum_proxy_participant_init";

   function entidx_enum_writer_next (st : access entidx_enum_writer) return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_enum_writer_next";

   function entidx_enum_reader_next (st : access entidx_enum_reader) return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_enum_reader_next";

   function entidx_enum_proxy_writer_next (st : access entidx_enum_proxy_writer) return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_writer  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_enum_proxy_writer_next";

   function entidx_enum_proxy_reader_next (st : access entidx_enum_proxy_reader) return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_reader  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_enum_proxy_reader_next";

   function entidx_enum_participant_next (st : access entidx_enum_participant) return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.participant  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_enum_participant_next";

   function entidx_enum_proxy_participant_next (st : access entidx_enum_proxy_participant) return access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_participant  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_enum_proxy_participant_next";

   procedure entidx_enum_writer_fini (st : access entidx_enum_writer)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_enum_writer_fini";

   procedure entidx_enum_reader_fini (st : access entidx_enum_reader)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_enum_reader_fini";

   procedure entidx_enum_proxy_writer_fini (st : access entidx_enum_proxy_writer)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_enum_proxy_writer_fini";

   procedure entidx_enum_proxy_reader_fini (st : access entidx_enum_proxy_reader)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_enum_proxy_reader_fini";

   procedure entidx_enum_participant_fini (st : access entidx_enum_participant)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_enum_participant_fini";

   procedure entidx_enum_proxy_participant_fini (st : access entidx_enum_proxy_participant)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_entity_index.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "entidx_enum_proxy_participant_fini";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_entity_index_h;
