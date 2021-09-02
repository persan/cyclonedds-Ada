pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
with CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_mcgroup_h is

   function new_group_membership return access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_group_membership  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_mcgroup.h:23
   with Import => True, 
        Convention => C, 
        External_Name => "new_group_membership";

   procedure free_group_membership (mship : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_group_membership)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_mcgroup.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "free_group_membership";

   function ddsi_join_mc
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      mship : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_group_membership;
      conn : CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn_t;
      srcip : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
      mcip : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_mcgroup.h:25
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_join_mc";

   function ddsi_leave_mc
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      mship : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_group_membership;
      conn : CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn_t;
      srcip : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t;
      mcip : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_locator_h.ddsi_locator_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_mcgroup.h:26
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_leave_mc";

   procedure ddsi_transfer_group_membership
     (mship : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_group_membership;
      conn : CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn_t;
      newconn : CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_mcgroup.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_transfer_group_membership";

   function ddsi_rejoin_transferred_mcgroups
     (gv : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      mship : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.nn_group_membership;
      conn : CycloneDDS.Low_Level.dds_ddsi_ddsi_tran_h.ddsi_tran_conn_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_mcgroup.h:28
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_rejoin_transferred_mcgroups";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_mcgroup_h;
