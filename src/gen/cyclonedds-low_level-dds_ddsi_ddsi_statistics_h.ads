pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;


package CycloneDDS.Low_Level.dds_ddsi_ddsi_statistics_h is

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

   procedure ddsi_get_writer_stats
     (wr : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer;
      rexmit_bytes : access unsigned_long;
      throttle_count : access unsigned;
      time_throttled : access unsigned_long;
      time_retransmit : access unsigned_long)  -- /usr/gnat/include/dds/ddsi/ddsi_statistics.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_get_writer_stats";

   procedure ddsi_get_reader_stats (rd : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.reader; discarded_bytes : access unsigned_long)  -- /usr/gnat/include/dds/ddsi/ddsi_statistics.h:25
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_get_reader_stats";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_statistics_h;
