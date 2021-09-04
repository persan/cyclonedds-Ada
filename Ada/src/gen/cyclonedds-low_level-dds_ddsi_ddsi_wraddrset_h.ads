pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_addrset_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_wraddrset_h is

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

   function compute_writer_addrset (wr : access constant CycloneDDS.Low_Level.dds_ddsi_q_entity_h.writer) return access CycloneDDS.Low_Level.dds_ddsi_q_addrset_h.addrset  -- /usr/gnat/include/dds/ddsi/ddsi_wraddrset.h:25
   with Import => True, 
        Convention => C, 
        External_Name => "compute_writer_addrset";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_wraddrset_h;
