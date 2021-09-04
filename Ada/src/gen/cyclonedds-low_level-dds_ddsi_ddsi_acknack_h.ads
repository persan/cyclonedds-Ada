pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_q_xevent_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;
with Interfaces.C.Extensions;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_acknack_h is

  -- * Copyright(c) 2020 ADLINK Technology Limited and others
  -- *
  -- * This program and the accompanying materials are made available under the
  -- * terms of the Eclipse Public License v. 2.0 which is available at
  -- * http://www.eclipse.org/legal/epl-2.0, or the Eclipse Distribution License
  -- * v. 1.0 which is available at
  -- * http://www.eclipse.org/org/documents/edl-v10.php.
  -- *
  -- * SPDX-License-Identifier: EPL-2.0 OR BSD-3-Clause
  --  

   type add_AckNack_result is 
     (AANR_SUPPRESSED_ACK,
      AANR_ACK,
      AANR_SUPPRESSED_NACK,
      AANR_NACK,
      AANR_NACKFRAG_ONLY)
   with Convention => C;  -- /usr/gnat/include/dds/ddsi/ddsi_acknack.h:27

  --!< sending nothing: too short a time since the last ACK
  --!< sending an ACK and there's nothing to NACK
  --!< sending an ACK even though there are things to NACK
  --!< sending a NACK, possibly also a NACKFRAG
  --!< sending only a NACKFRAG
   procedure sched_acknack_if_needed
     (ev : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.xevent;
      pwr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_writer;
      rwn : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.pwr_rd_match;
      tnow : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      avoid_suppressed_nack : Extensions.bool)  -- /usr/gnat/include/dds/ddsi/ddsi_acknack.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "sched_acknack_if_needed";

   function make_and_resched_acknack
     (ev : access CycloneDDS.Low_Level.dds_ddsi_q_xevent_h.xevent;
      pwr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.proxy_writer;
      rwn : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.pwr_rd_match;
      tnow : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_mtime_t;
      avoid_suppressed_nack : Extensions.bool) return access CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.nn_xmsg  -- /usr/gnat/include/dds/ddsi/ddsi_acknack.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "make_and_resched_acknack";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_acknack_h;
