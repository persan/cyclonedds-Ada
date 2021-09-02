pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;

package CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h is

   DDS_LENGTH_UNLIMITED : constant := -1;  --  /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qosdefs.h:27

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

  --* @file
  -- *
  -- * @brief DDS C QoS API
  -- *
  -- * This header file defines the public API of QoS and Policies in the
  -- * Eclipse Cyclone DDS C language binding.
  --  

  --* QoS identifiers  
   type dds_qos_policy_id is 
     (DDS_INVALID_QOS_POLICY_ID,
      DDS_USERDATA_QOS_POLICY_ID,
      DDS_DURABILITY_QOS_POLICY_ID,
      DDS_PRESENTATION_QOS_POLICY_ID,
      DDS_DEADLINE_QOS_POLICY_ID,
      DDS_LATENCYBUDGET_QOS_POLICY_ID,
      DDS_OWNERSHIP_QOS_POLICY_ID,
      DDS_OWNERSHIPSTRENGTH_QOS_POLICY_ID,
      DDS_LIVELINESS_QOS_POLICY_ID,
      DDS_TIMEBASEDFILTER_QOS_POLICY_ID,
      DDS_PARTITION_QOS_POLICY_ID,
      DDS_RELIABILITY_QOS_POLICY_ID,
      DDS_DESTINATIONORDER_QOS_POLICY_ID,
      DDS_HISTORY_QOS_POLICY_ID,
      DDS_RESOURCELIMITS_QOS_POLICY_ID,
      DDS_ENTITYFACTORY_QOS_POLICY_ID,
      DDS_WRITERDATALIFECYCLE_QOS_POLICY_ID,
      DDS_READERDATALIFECYCLE_QOS_POLICY_ID,
      DDS_TOPICDATA_QOS_POLICY_ID,
      DDS_GROUPDATA_QOS_POLICY_ID,
      DDS_TRANSPORTPRIORITY_QOS_POLICY_ID,
      DDS_LIFESPAN_QOS_POLICY_ID,
      DDS_DURABILITYSERVICE_QOS_POLICY_ID,
      DDS_PROPERTY_QOS_POLICY_ID,
      DDS_TYPE_CONSISTENCY_ENFORCEMENT_QOS_POLICY_ID)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qosdefs.h:30

   subtype dds_qos_policy_id_t is dds_qos_policy_id;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qosdefs.h:56

  -- QoS structure is opaque  
  --* QoS structure  
   subtype dds_qos_t is CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qosdefs.h:60

  --* Durability QoS: Applies to Topic, DataReader, DataWriter  
   type dds_durability_kind is 
     (DDS_DURABILITY_VOLATILE,
      DDS_DURABILITY_TRANSIENT_LOCAL,
      DDS_DURABILITY_TRANSIENT,
      DDS_DURABILITY_PERSISTENT)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qosdefs.h:63

   subtype dds_durability_kind_t is dds_durability_kind;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qosdefs.h:70

  --* History QoS: Applies to Topic, DataReader, DataWriter  
   type dds_history_kind is 
     (DDS_HISTORY_KEEP_LAST,
      DDS_HISTORY_KEEP_ALL)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qosdefs.h:73

   subtype dds_history_kind_t is dds_history_kind;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qosdefs.h:78

  --* Ownership QoS: Applies to Topic, DataReader, DataWriter  
   type dds_ownership_kind is 
     (DDS_OWNERSHIP_SHARED,
      DDS_OWNERSHIP_EXCLUSIVE)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qosdefs.h:81

   subtype dds_ownership_kind_t is dds_ownership_kind;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qosdefs.h:86

  --* Liveliness QoS: Applies to Topic, DataReader, DataWriter  
   type dds_liveliness_kind is 
     (DDS_LIVELINESS_AUTOMATIC,
      DDS_LIVELINESS_MANUAL_BY_PARTICIPANT,
      DDS_LIVELINESS_MANUAL_BY_TOPIC)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qosdefs.h:89

   subtype dds_liveliness_kind_t is dds_liveliness_kind;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qosdefs.h:95

  --* Reliability QoS: Applies to Topic, DataReader, DataWriter  
   type dds_reliability_kind is 
     (DDS_RELIABILITY_BEST_EFFORT,
      DDS_RELIABILITY_RELIABLE)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qosdefs.h:98

   subtype dds_reliability_kind_t is dds_reliability_kind;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qosdefs.h:103

  --* DestinationOrder QoS: Applies to Topic, DataReader, DataWriter  
   type dds_destination_order_kind is 
     (DDS_DESTINATIONORDER_BY_RECEPTION_TIMESTAMP,
      DDS_DESTINATIONORDER_BY_SOURCE_TIMESTAMP)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qosdefs.h:106

   subtype dds_destination_order_kind_t is dds_destination_order_kind;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qosdefs.h:111

  --* Presentation QoS: Applies to Publisher, Subscriber  
   type dds_presentation_access_scope_kind is 
     (DDS_PRESENTATION_INSTANCE,
      DDS_PRESENTATION_TOPIC,
      DDS_PRESENTATION_GROUP)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qosdefs.h:114

   subtype dds_presentation_access_scope_kind_t is dds_presentation_access_scope_kind;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qosdefs.h:120

  --* Ignore-local QoS: Applies to DataReader, DataWriter  
   type dds_ignorelocal_kind is 
     (DDS_IGNORELOCAL_NONE,
      DDS_IGNORELOCAL_PARTICIPANT,
      DDS_IGNORELOCAL_PROCESS)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qosdefs.h:123

   subtype dds_ignorelocal_kind_t is dds_ignorelocal_kind;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qosdefs.h:129

   type dds_type_consistency_kind is 
     (DDS_TYPE_CONSISTENCY_DISALLOW_TYPE_COERCION,
      DDS_TYPE_CONSISTENCY_ALLOW_TYPE_COERCION)
   with Convention => C;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qosdefs.h:131

   subtype dds_type_consistency_kind_t is dds_type_consistency_kind;  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsc/dds_public_qosdefs.h:136

end CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h;
