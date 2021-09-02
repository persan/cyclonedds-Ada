pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;

package CycloneDDS.Low_Level.dds_ddsi_q_init_h is

   function create_multicast_sockets (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_init.h:19
   with Import => True, 
        Convention => C, 
        External_Name => "create_multicast_sockets";

   function joinleave_spdp_defmcip (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv; dojoin : int) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_init.h:20
   with Import => True, 
        Convention => C, 
        External_Name => "joinleave_spdp_defmcip";

end CycloneDDS.Low_Level.dds_ddsi_q_init_h;
