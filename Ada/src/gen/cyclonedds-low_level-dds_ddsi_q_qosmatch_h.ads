pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
with CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h;

with Interfaces.C.Extensions;

package CycloneDDS.Low_Level.dds_ddsi_q_qosmatch_h is

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

   function partitions_match_p (a : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; b : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_qosmatch.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "partitions_match_p";

  -- perform reader/writer QoS (and topic name, type name, partition) matching;
  --   mask can be used to exclude some of these (including topic name and type
  --   name, so be careful!)
  --   reason will be set to the policy id of one of the mismatching QoS, or to
  --   DDS_INVALID_QOS_POLICY_ID if there is no mismatch or if the mismatch is
  --   in topic or type name (those are not really QoS and don't have a policy id)
  --   rd/wr_type_unknown is set to true in case the matching cannot be completed
  --   because of missing type information. A type-lookup request is required to get the
  --   details of the type to do the qos matching (e.g. check assignability)  

   function qos_match_mask_p
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      rd_qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      wr_qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      mask : unsigned_long;
      reason : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_policy_id_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_qosmatch.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "qos_match_mask_p";

   function qos_match_p
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      rd_qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      wr_qos : access constant CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_t;
      reason : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_policy_id_t) return Extensions.bool  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/q_qosmatch.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "qos_match_p";

end CycloneDDS.Low_Level.dds_ddsi_q_qosmatch_h;
