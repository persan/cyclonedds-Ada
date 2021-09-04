pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with CycloneDDS.Low_Level.dds_ddsrt_fibheap_h;
with CycloneDDS.Low_Level.dds_ddsrt_time_h;
with CycloneDDS.Low_Level.dds_ddsrt_atomics_h;
limited with CycloneDDS.Low_Level.dds_ddsi_q_entity_h;
with System;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;


package CycloneDDS.Low_Level.dds_ddsi_q_lease_h is

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

  -- FIXME: make a special for the lease admin  
   type lease is record
      heapnode : aliased CycloneDDS.Low_Level.dds_ddsrt_fibheap_h.ddsrt_fibheap_node_t;  -- /usr/gnat/include/dds/ddsi/q_lease.h:29
      pp_heapnode : aliased CycloneDDS.Low_Level.dds_ddsrt_fibheap_h.ddsrt_fibheap_node_t;  -- /usr/gnat/include/dds/ddsi/q_lease.h:30
      tsched : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_etime_t;  -- /usr/gnat/include/dds/ddsi/q_lease.h:31
      tend : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint64_t;  -- /usr/gnat/include/dds/ddsi/q_lease.h:32
      tdur : aliased CycloneDDS.Low_Level.dds_ddsrt_time_h.dds_duration_t;  -- /usr/gnat/include/dds/ddsi/q_lease.h:33
      entity : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_common;  -- /usr/gnat/include/dds/ddsi/q_lease.h:34
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/gnat/include/dds/ddsi/q_lease.h:28

  -- access guarded by leaseheap_lock  
  -- really an ddsrt_etime_t  
  -- constant (renew depends on it)  
  -- constant  
   function compare_lease_tsched (va : System.Address; vb : System.Address) return int  -- /usr/gnat/include/dds/ddsi/q_lease.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "compare_lease_tsched";

   function compare_lease_tdur (va : System.Address; vb : System.Address) return int  -- /usr/gnat/include/dds/ddsi/q_lease.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "compare_lease_tdur";

   procedure lease_management_init (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)  -- /usr/gnat/include/dds/ddsi/q_lease.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "lease_management_init";

   procedure lease_management_term (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv)  -- /usr/gnat/include/dds/ddsi/q_lease.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "lease_management_term";

   function lease_new
     (texpire : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_etime_t;
      tdur : long;
      e : access CycloneDDS.Low_Level.dds_ddsi_q_entity_h.entity_common) return access lease  -- /usr/gnat/include/dds/ddsi/q_lease.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "lease_new";

   function lease_clone (l : access constant lease) return access lease  -- /usr/gnat/include/dds/ddsi/q_lease.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "lease_clone";

   procedure lease_register (l : access lease)  -- /usr/gnat/include/dds/ddsi/q_lease.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "lease_register";

   procedure lease_unregister (l : access lease)  -- /usr/gnat/include/dds/ddsi/q_lease.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "lease_unregister";

   procedure lease_free (l : access lease)  -- /usr/gnat/include/dds/ddsi/q_lease.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "lease_free";

   procedure lease_renew (l : access lease; tnow : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_etime_t)  -- /usr/gnat/include/dds/ddsi/q_lease.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "lease_renew";

   procedure lease_set_expiry (l : access lease; c_when : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_etime_t)  -- /usr/gnat/include/dds/ddsi/q_lease.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "lease_set_expiry";

   function check_and_handle_lease_expiration (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; tnow : CycloneDDS.Low_Level.dds_ddsrt_time_h.ddsrt_etime_t) return long  -- /usr/gnat/include/dds/ddsi/q_lease.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "check_and_handle_lease_expiration";

end CycloneDDS.Low_Level.dds_ddsi_q_lease_h;
