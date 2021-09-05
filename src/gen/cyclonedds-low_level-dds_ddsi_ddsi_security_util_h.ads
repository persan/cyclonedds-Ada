pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_security_dds_security_api_types_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h;
with Interfaces.C.Strings;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_security_util_h is

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

   procedure g_omg_shallow_copy_StringSeq
     (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_StringSeq;
      src : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .ddsi_stringseq_t) with
      Import        => True,
      Convention    => C,
      External_Name => "g_omg_shallow_copy_StringSeq";

   procedure g_omg_shallow_free_StringSeq
     (obj : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_StringSeq) with
      Import        => True,
      Convention    => C,
      External_Name => "g_omg_shallow_free_StringSeq";

   procedure q_omg_copy_PropertySeq
     (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PropertySeq;
      src : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_propertyseq_t) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_copy_PropertySeq";

   procedure q_omg_shallow_copyin_PropertySeq
     (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PropertySeq;
      src : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_propertyseq_t) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_shallow_copyin_PropertySeq";

   procedure q_omg_shallow_copyout_PropertySeq
     (dst : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_propertyseq_t;
      src : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_PropertySeq) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_shallow_copyout_PropertySeq";

   procedure q_omg_shallow_free_PropertySeq
     (obj : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PropertySeq) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_shallow_free_PropertySeq";

   procedure q_omg_shallow_copyin_BinaryPropertySeq
     (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_BinaryPropertySeq;
      src : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_binarypropertyseq_t) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_shallow_copyin_BinaryPropertySeq";

   procedure q_omg_shallow_copyout_BinaryPropertySeq
     (dst : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_binarypropertyseq_t;
      src : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_BinaryPropertySeq) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_shallow_copyout_BinaryPropertySeq";

   procedure q_omg_shallow_free_BinaryPropertySeq
     (obj : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_BinaryPropertySeq) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_shallow_free_BinaryPropertySeq";

   procedure q_omg_shallow_copy_PropertyQosPolicy
     (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PropertyQosPolicy;
      src : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_property_qospolicy_t) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_shallow_copy_PropertyQosPolicy";

   procedure q_omg_shallow_copy_security_qos
     (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_Qos;
      src : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_qos_t) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_shallow_copy_security_qos";

   procedure q_omg_shallow_free_PropertyQosPolicy
     (obj : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PropertyQosPolicy) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_shallow_free_PropertyQosPolicy";

   procedure q_omg_shallow_free_security_qos
     (obj : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_Qos) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_shallow_free_security_qos";

   procedure q_omg_security_dataholder_copyin
     (dh : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_dataholder_t;
      holder : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_DataHolder_t) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_security_dataholder_copyin";

   procedure q_omg_security_dataholder_copyout
     (holder : access CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_DataHolder_t;
      dh : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h
        .nn_dataholder_t) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_security_dataholder_copyout";

   procedure q_omg_shallow_copyin_DataHolder
     (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_DataHolder_t;
      src : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h
        .nn_dataholder_t) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_shallow_copyin_DataHolder";

   procedure q_omg_shallow_copyout_DataHolder
     (dst : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_dataholder_t;
      src : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_DataHolder_t) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_shallow_copyout_DataHolder";

   procedure q_omg_shallow_free_DataHolder
     (obj : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_DataHolder_t) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_shallow_free_DataHolder";

   procedure q_omg_shallow_free_nn_dataholder
     (holder : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h
        .nn_dataholder_t) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_shallow_free_nn_dataholder";

   procedure q_omg_shallow_copyin_DataHolderSeq
     (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_DataHolderSeq_t;
      src : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h
        .nn_dataholderseq_t) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_shallow_copyin_DataHolderSeq";

   procedure q_omg_copyin_DataHolderSeq
     (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_DataHolderSeq_t;
      src : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h
        .nn_dataholderseq_t) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_copyin_DataHolderSeq";

   procedure q_omg_shallow_copyout_DataHolderSeq
     (dst : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h
        .nn_dataholderseq_t;
      src : access constant CycloneDDS.Low_Level
        .dds_security_dds_security_api_types_h
        .DDS_Security_DataHolderSeq_t) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_shallow_copyout_DataHolderSeq";

   procedure q_omg_shallow_free_DataHolderSeq
     (obj : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_DataHolderSeq_t) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_shallow_free_DataHolderSeq";

   procedure q_omg_shallow_free_nn_dataholderseq
     (obj : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h
        .nn_dataholderseq_t) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_shallow_free_nn_dataholderseq";

   procedure q_omg_shallow_copy_ParticipantBuiltinTopicDataSecure
     (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_ParticipantBuiltinTopicDataSecure;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h
        .ddsi_plist_t) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_shallow_copy_ParticipantBuiltinTopicDataSecure";

   procedure q_omg_shallow_free_ParticipantBuiltinTopicDataSecure
     (obj : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_ParticipantBuiltinTopicDataSecure) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_shallow_free_ParticipantBuiltinTopicDataSecure";

   procedure q_omg_shallow_copy_SubscriptionBuiltinTopicDataSecure
     (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SubscriptionBuiltinTopicDataSecure;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_qos_t;
      secinfo : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h
        .nn_security_info_t) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_shallow_copy_SubscriptionBuiltinTopicDataSecure";

   procedure q_omg_shallow_free_SubscriptionBuiltinTopicDataSecure
     (obj : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_SubscriptionBuiltinTopicDataSecure) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_shallow_free_SubscriptionBuiltinTopicDataSecure";

   procedure q_omg_shallow_copy_PublicationBuiltinTopicDataSecure
     (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PublicationBuiltinTopicDataSecure;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h
        .ddsi_guid_t;
      qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h
        .dds_qos_t;
      secinfo : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h
        .nn_security_info_t) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_shallow_copy_PublicationBuiltinTopicDataSecure";

   procedure q_omg_shallow_free_PublicationBuiltinTopicDataSecure
     (obj : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_PublicationBuiltinTopicDataSecure) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_shallow_free_PublicationBuiltinTopicDataSecure";

   procedure q_omg_shallow_copy_TopicBuiltinTopicData
     (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_TopicBuiltinTopicData;
      topic_name : Interfaces.C.Strings.chars_ptr;
      type_name  : Interfaces.C.Strings.chars_ptr) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_shallow_copy_TopicBuiltinTopicData";

   procedure q_omg_shallow_free_TopicBuiltinTopicData
     (obj : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h
        .DDS_Security_TopicBuiltinTopicData) with
      Import        => True,
      Convention    => C,
      External_Name => "q_omg_shallow_free_TopicBuiltinTopicData";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_security_util_h;
