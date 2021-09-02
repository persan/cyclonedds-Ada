pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;

package CycloneDDS.Low_Level.dds_ddsi_ddsi_raweth_h is

   function ddsi_raweth_init (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_raweth.h:19
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_raweth_init";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_raweth_h;
