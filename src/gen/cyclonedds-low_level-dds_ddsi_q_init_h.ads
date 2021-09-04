pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;

package CycloneDDS.Low_Level.dds_ddsi_q_init_h is

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

   function create_multicast_sockets (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv) return int  -- /usr/gnat/include/dds/ddsi/q_init.h:19
   with Import => True, 
        Convention => C, 
        External_Name => "create_multicast_sockets";

   function joinleave_spdp_defmcip (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; dojoin : int) return int  -- /usr/gnat/include/dds/ddsi/q_init.h:20
   with Import => True, 
        Convention => C, 
        External_Name => "joinleave_spdp_defmcip";

end CycloneDDS.Low_Level.dds_ddsi_q_init_h;
