pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;



package CycloneDDS.Low_Level.dds_ddsrt_mh3_h is

   function ddsrt_mh3
     (key : System.Address;
      len : size_t;
      seed : Interfaces.Unsigned_32) return Interfaces.Unsigned_32  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/mh3.h:25
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_mh3";

end CycloneDDS.Low_Level.dds_ddsrt_mh3_h;
