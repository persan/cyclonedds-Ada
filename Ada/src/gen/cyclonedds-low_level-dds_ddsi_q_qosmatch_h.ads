pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;

with CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h;
with Interfaces.C.Extensions;

package CycloneDDS.Low_Level.dds_ddsi_q_qosmatch_h is

   function partitions_match_p (a : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos; b : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_qosmatch.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "partitions_match_p";

   function qos_match_mask_p
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      rd_qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      wr_qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      mask : Interfaces.Unsigned_64;
      reason : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_policy_id_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_qosmatch.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "qos_match_mask_p";

   function qos_match_p
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      rd_qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      wr_qos : access constant CycloneDDS.Low_Level.dds_ddsi_ddsi_xqos_h.dds_qos;
      reason : access CycloneDDS.Low_Level.dds_ddsc_dds_public_qosdefs_h.dds_qos_policy_id_t) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_qosmatch.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "qos_match_p";

end CycloneDDS.Low_Level.dds_ddsi_q_qosmatch_h;
