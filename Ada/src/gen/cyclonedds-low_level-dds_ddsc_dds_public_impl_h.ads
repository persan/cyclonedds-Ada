pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Extensions;
with Interfaces.C.Strings;

package CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h is

   DDS_READ_SAMPLE_STATE : constant := 1;  --  /usr/gnat/include/dds/ddsc/dds_public_impl.h:75
   DDS_NOT_READ_SAMPLE_STATE : constant := 2;  --  /usr/gnat/include/dds/ddsc/dds_public_impl.h:76
   DDS_ANY_SAMPLE_STATE : constant := ((DDS_READ_SAMPLE_STATE + DDS_NOT_READ_SAMPLE_STATE));  --  /usr/gnat/include/dds/ddsc/dds_public_impl.h:77

   DDS_NEW_VIEW_STATE : constant := 4;  --  /usr/gnat/include/dds/ddsc/dds_public_impl.h:79
   DDS_NOT_NEW_VIEW_STATE : constant := 8;  --  /usr/gnat/include/dds/ddsc/dds_public_impl.h:80
   DDS_ANY_VIEW_STATE : constant := ((DDS_NEW_VIEW_STATE + DDS_NOT_NEW_VIEW_STATE));  --  /usr/gnat/include/dds/ddsc/dds_public_impl.h:81

   DDS_ALIVE_INSTANCE_STATE : constant := 16;  --  /usr/gnat/include/dds/ddsc/dds_public_impl.h:83
   DDS_NOT_ALIVE_DISPOSED_INSTANCE_STATE : constant := 32;  --  /usr/gnat/include/dds/ddsc/dds_public_impl.h:84
   DDS_NOT_ALIVE_NO_WRITERS_INSTANCE_STATE : constant := 64;  --  /usr/gnat/include/dds/ddsc/dds_public_impl.h:85
   DDS_ANY_INSTANCE_STATE : constant := ((DDS_ALIVE_INSTANCE_STATE + DDS_NOT_ALIVE_DISPOSED_INSTANCE_STATE + DDS_ANY_INSTANCE_STATE ));  --  /usr/gnat/include/dds/ddsc/dds_public_impl.h:86
   --  unsupported macro: DDS_ANY_STATE (DDS_ANY_SAMPLE_STATE | DDS_ANY_VIEW_STATE | DDS_ANY_INSTANCE_STATE)
   --  unsupported macro: DDS_DOMAIN_DEFAULT ((uint32_t) 0xffffffffu)

   DDS_HANDLE_NIL : constant := 0;  --  /usr/gnat/include/dds/ddsc/dds_public_impl.h:91
   DDS_ENTITY_NIL : constant := 0;  --  /usr/gnat/include/dds/ddsc/dds_public_impl.h:92
   --  unsupported macro: DDS_KIND_MAX DDS_KIND_CYCLONEDDS

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

  -- TODO: do we really need to expose all of this as an API? maybe some, but all?  
  --* @file
  -- *
  -- * @brief DDS C Implementation API
  -- *
  -- * This header file defines the public API for all kinds of things in the
  -- * Eclipse Cyclone DDS C language binding.
  --  

   type dds_sequence is record
      u_maximum : aliased unsigned;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:36
      u_length : aliased unsigned;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:37
      u_buffer : access unsigned_char;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:38
      u_release : aliased Extensions.bool;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:39
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:34

   subtype dds_sequence_t is dds_sequence;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:41

   type dds_key_descriptor is record
      m_name : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:45
      m_index : aliased unsigned;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:46
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:43

   subtype dds_key_descriptor_t is dds_key_descriptor;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:48

  --  Topic definitions are output by a preprocessor and have an
  --  implementation-private definition. The only thing exposed on the
  --  API is a pointer to the "topic_descriptor_t" struct type.
  -- 

  -- Size of topic type  
   type dds_topic_descriptor is record
      m_size : aliased unsigned;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:58
      m_align : aliased unsigned;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:59
      m_flagset : aliased unsigned;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:60
      m_nkeys : aliased unsigned;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:61
      m_typename : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:62
      m_keys : access constant dds_key_descriptor_t;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:63
      m_nops : aliased unsigned;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:64
      m_ops : access unsigned;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:65
      m_meta : Interfaces.C.Strings.chars_ptr;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:66
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:56

  -- Alignment of topic type  
  -- Flags  
  -- Number of keys (can be 0)  
  -- Type name  
  -- Key descriptors (NULL iff m_nkeys 0)  
  -- Number of ops in m_ops  
  -- Marshalling meta data  
  -- XML topic description meta data  
   subtype dds_topic_descriptor_t is dds_topic_descriptor;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:68

  --  Masks for read condition, read, take: there is only one mask here,
  --  which combines the sample, view and instance states.
  -- 

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
   with Convention => C;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:94

   subtype dds_entity_kind_t is dds_entity_kind;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:109

  -- Handles are opaque pointers to implementation types  
   subtype dds_instance_handle_t is unsigned_long;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:113

   subtype dds_domainid_t is unsigned;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:114

  -- Scope for find topic function  
   type dds_find_scope is 
     (DDS_FIND_SCOPE_GLOBAL,
      DDS_FIND_SCOPE_LOCAL_DOMAIN,
      DDS_FIND_SCOPE_PARTICIPANT)
   with Convention => C;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:117

   subtype dds_find_scope_t is dds_find_scope;  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:123

  --*
  -- * Description : Enable or disable write batching. Overrides default configuration
  -- * setting for write batching (Internal/WriteBatch).
  -- *
  -- * Arguments :
  -- *   -# enable Enables or disables write batching for all writers.
  --  

   procedure dds_write_set_batch (enable : Extensions.bool)  -- /usr/gnat/include/dds/ddsc/dds_public_impl.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "dds_write_set_batch";

end CycloneDDS.Low_Level.dds_ddsc_dds_public_impl_h;
