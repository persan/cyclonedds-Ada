pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_mcgroup_h is

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

   function new_group_membership return access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_group_membership  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_mcgroup.h:23
   with Import => True, 
        Convention => C, 
        External_Name => "new_group_membership";

   procedure free_group_membership (mship : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_group_membership)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_mcgroup.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "free_group_membership";

   function ddsi_join_mc
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      mship : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_group_membership;
      conn : CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn_t;
      srcip : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
      mcip : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_mcgroup.h:25
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_join_mc";

   function ddsi_leave_mc
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      mship : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_group_membership;
      conn : CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn_t;
      srcip : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
      mcip : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_mcgroup.h:26
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_leave_mc";

   procedure ddsi_transfer_group_membership
     (mship : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_group_membership;
      conn : CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn_t;
      newconn : CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn_t)  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_mcgroup.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_transfer_group_membership";

   function ddsi_rejoin_transferred_mcgroups
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      mship : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_group_membership;
      conn : CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn_t) return int  -- /home/per/Working/projects@github.com/persan/cyclonedds-Ada/Ada/../target/include/dds/ddsi/ddsi_mcgroup.h:28
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_rejoin_transferred_mcgroups";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_mcgroup_h;
