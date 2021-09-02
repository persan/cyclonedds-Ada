pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Extensions;
with Interfaces.C.Strings;

package CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h is

   DDS_READ_SAMPLE_STATE : constant := 1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:75
   DDS_NOT_READ_SAMPLE_STATE : constant := 2;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:76
   DDS_ANY_SAMPLE_STATE : constant := (1 + 2);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:77

   DDS_NEW_VIEW_STATE : constant := 4;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:79
   DDS_NOT_NEW_VIEW_STATE : constant := 8;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:80
   DDS_ANY_VIEW_STATE : constant := (4 + 8);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:81

   DDS_ALIVE_INSTANCE_STATE : constant := 16;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:83
   DDS_NOT_ALIVE_DISPOSED_INSTANCE_STATE : constant := 32;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:84
   DDS_NOT_ALIVE_NO_WRITERS_INSTANCE_STATE : constant := 64;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:85
   DDS_ANY_INSTANCE_STATE : constant := (16 + 32 + 64);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:86
   --  unsupported macro: DDS_ANY_STATE (DDS_ANY_SAMPLE_STATE | DDS_ANY_VIEW_STATE | DDS_ANY_INSTANCE_STATE)
   --  unsupported macro: DDS_DOMAIN_DEFAULT ((uint32_t) 0xffffffffu)

   DDS_HANDLE_NIL : constant := 0;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:91
   DDS_ENTITY_NIL : constant := 0;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:92
   --  unsupported macro: DDS_KIND_MAX DDS_KIND_CYCLONEDDS

   type dds_sequence is record
      u_maximum : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:36
      u_length : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:37
      u_buffer : access Interfaces.Unsigned_8;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:38
      u_release : aliased Extensions.bool;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:39
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:34

   subtype dds_sequence_t is dds_sequence;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:41

   type dds_key_descriptor is record
      m_name : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:45
      m_index : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:46
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:43

   subtype dds_key_descriptor_t is dds_key_descriptor;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:48

   type dds_topic_descriptor is record
      m_size : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:58
      m_align : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:59
      m_flagset : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:60
      m_nkeys : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:61
      m_typename : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:62
      m_keys : access constant dds_key_descriptor_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:63
      m_nops : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:64
      m_ops : access Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:65
      m_meta : Interfaces.C.Strings.chars_ptr;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:66
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:56

   subtype dds_topic_descriptor_t is dds_topic_descriptor;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:68

   type dds_entity_kind is 
     (DDS_KIND_DONTCARE,
      DDS_KIND_TOPIC,
      DDS_KIND_PARTICIPANT,
      DDS_KIND_READER,
      DDS_KIND_WRITER,
      DDS_KIND_SUBSCRIBER,
      DDS_KIND_PUBLISHER,
      DDS_KIND_COND_READ,
      DDS_KIND_COND_QUERY,
      DDS_KIND_COND_GUARD,
      DDS_KIND_WAITSET,
      DDS_KIND_DOMAIN,
      DDS_KIND_CYCLONEDDS)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:94

   subtype dds_entity_kind_t is dds_entity_kind;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:109

   subtype dds_instance_handle_t is Interfaces.Unsigned_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:113

   subtype dds_domainid_t is Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:114

   type dds_find_scope is 
     (DDS_FIND_SCOPE_GLOBAL,
      DDS_FIND_SCOPE_LOCAL_DOMAIN,
      DDS_FIND_SCOPE_PARTICIPANT)
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:117

   subtype dds_find_scope_t is dds_find_scope;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:123

   procedure dds_write_set_batch (enable : Extensions.bool)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsc/dds_public_impl.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "dds_write_set_batch";

end CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h;
