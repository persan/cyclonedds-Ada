pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;
with Interfaces.C.Strings;


package CycloneDDS.Low_Level.dds_ddsi_ddsi_vnet_h is

   function ddsi_vnet_init
     (gv : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv;
      name : Interfaces.C.Strings.chars_ptr;
      locator_kind : Interfaces.Integer_32) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/ddsi_vnet.h:19
   with Import => True, 
        Convention => C, 
        External_Name => "ddsi_vnet_init";

end CycloneDDS.Low_Level.dds_ddsi_ddsi_vnet_h;
