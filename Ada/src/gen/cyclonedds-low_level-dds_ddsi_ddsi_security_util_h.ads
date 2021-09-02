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

   procedure g_omg_shallow_copy_StringSeq (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_StringSeq; src : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.ddsi_stringseq)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:26
   with Import => True, 
        Convention => C, 
        External_Name => "g_omg_shallow_copy_StringSeq";

   procedure g_omg_shallow_free_StringSeq (obj : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_StringSeq)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "g_omg_shallow_free_StringSeq";

   procedure q_omg_copy_PropertySeq (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PropertySeq; src : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_propertyseq)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:28
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_copy_PropertySeq";

   procedure q_omg_shallow_copyin_PropertySeq (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PropertySeq; src : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_propertyseq)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_shallow_copyin_PropertySeq";

   procedure q_omg_shallow_copyout_PropertySeq (dst : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_propertyseq; src : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PropertySeq)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_shallow_copyout_PropertySeq";

   procedure q_omg_shallow_free_PropertySeq (obj : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PropertySeq)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_shallow_free_PropertySeq";

   procedure q_omg_shallow_copyin_BinaryPropertySeq (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_BinaryPropertySeq; src : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_binarypropertyseq)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_shallow_copyin_BinaryPropertySeq";

   procedure q_omg_shallow_copyout_BinaryPropertySeq (dst : access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_binarypropertyseq; src : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_BinaryPropertySeq)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_shallow_copyout_BinaryPropertySeq";

   procedure q_omg_shallow_free_BinaryPropertySeq (obj : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_BinaryPropertySeq)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_shallow_free_BinaryPropertySeq";

   procedure q_omg_shallow_copy_PropertyQosPolicy (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PropertyQosPolicy; src : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_property_qospolicy)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_shallow_copy_PropertyQosPolicy";

   procedure q_omg_shallow_copy_security_qos (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_Qos; src : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_shallow_copy_security_qos";

   procedure q_omg_shallow_free_PropertyQosPolicy (obj : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PropertyQosPolicy)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_shallow_free_PropertyQosPolicy";

   procedure q_omg_shallow_free_security_qos (obj : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_Qos)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_shallow_free_security_qos";

   procedure q_omg_security_dataholder_copyin (dh : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_dataholder; holder : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DataHolder)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_dataholder_copyin";

   procedure q_omg_security_dataholder_copyout (holder : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DataHolder; dh : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_dataholder)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_security_dataholder_copyout";

   procedure q_omg_shallow_copyin_DataHolder (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DataHolder; src : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_dataholder)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_shallow_copyin_DataHolder";

   procedure q_omg_shallow_copyout_DataHolder (dst : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_dataholder; src : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DataHolder)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_shallow_copyout_DataHolder";

   procedure q_omg_shallow_free_DataHolder (obj : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DataHolder)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_shallow_free_DataHolder";

   procedure q_omg_shallow_free_nn_dataholder (holder : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_dataholder)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_shallow_free_nn_dataholder";

   procedure q_omg_shallow_copyin_DataHolderSeq (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DataHolderSeq; src : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_dataholderseq)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_shallow_copyin_DataHolderSeq";

   procedure q_omg_copyin_DataHolderSeq (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DataHolderSeq; src : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_dataholderseq)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_copyin_DataHolderSeq";

   procedure q_omg_shallow_copyout_DataHolderSeq (dst : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_dataholderseq; src : access constant CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DataHolderSeq)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_shallow_copyout_DataHolderSeq";

   procedure q_omg_shallow_free_DataHolderSeq (obj : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_DataHolderSeq)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_shallow_free_DataHolderSeq";

   procedure q_omg_shallow_free_nn_dataholderseq (obj : access CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_dataholderseq)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_shallow_free_nn_dataholderseq";

   procedure q_omg_shallow_copy_ParticipantBuiltinTopicDataSecure
     (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantBuiltinTopicDataSecure;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      plist : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.ddsi_plist)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_shallow_copy_ParticipantBuiltinTopicDataSecure";

   procedure q_omg_shallow_free_ParticipantBuiltinTopicDataSecure (obj : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_ParticipantBuiltinTopicDataSecure)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_shallow_free_ParticipantBuiltinTopicDataSecure";

   procedure q_omg_shallow_copy_SubscriptionBuiltinTopicDataSecure
     (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SubscriptionBuiltinTopicDataSecure;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      secinfo : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_security_info)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_shallow_copy_SubscriptionBuiltinTopicDataSecure";

   procedure q_omg_shallow_free_SubscriptionBuiltinTopicDataSecure (obj : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_SubscriptionBuiltinTopicDataSecure)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_shallow_free_SubscriptionBuiltinTopicDataSecure";

   procedure q_omg_shallow_copy_PublicationBuiltinTopicDataSecure
     (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PublicationBuiltinTopicDataSecure;
      guid : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_guid_h.ddsi_guid;
      qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      secinfo : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_plist_h.nn_security_info)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_shallow_copy_PublicationBuiltinTopicDataSecure";

   procedure q_omg_shallow_free_PublicationBuiltinTopicDataSecure (obj : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_PublicationBuiltinTopicDataSecure)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_shallow_free_PublicationBuiltinTopicDataSecure";

   procedure q_omg_shallow_copy_TopicBuiltinTopicData
     (dst : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_TopicBuiltinTopicData;
      topic_name : Interfaces.C.Strings.chars_ptr;
      type_name : Interfaces.C.Strings.chars_ptr)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_shallow_copy_TopicBuiltinTopicData";

   procedure q_omg_shallow_free_TopicBuiltinTopicData (obj : access CycloneDDS.Low_Level.dds_security_dds_security_api_types_h.DDS_Security_TopicBuiltinTopicData)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_security_util.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "q_omg_shallow_free_TopicBuiltinTopicData";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_security_util_h;
