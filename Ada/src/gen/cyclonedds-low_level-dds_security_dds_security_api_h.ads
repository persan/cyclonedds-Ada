pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
limited with CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h;

package CycloneDDS.Low_Level.dds_security_dds_security_api_h is

   type plugin_init is access function
        (arg1 : Interfaces.C.Strings.chars_ptr;
         arg2 : System.Address;
         arg3 : access CycloneDDS.Low_Level.dds_ddsi_ddsi_domaingv_h.ddsi_domaingv) return int
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api.h:27

   type plugin_finalize is access function (arg1 : System.Address) return int
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/security/dds_security_api.h:28

end CycloneDDS.Low_Level.dds_security_dds_security_api_h;
