pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with Interfaces.C.Strings;

package CycloneDDS.Low_Level.dds_ddsrt_io_h is

   function ddsrt_vasprintf
     (strp : System.Address;
      fmt : Interfaces.C.Strings.chars_ptr;
      ap : access System.Address) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/io.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_vasprintf";

   function ddsrt_asprintf (strp : System.Address; fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/io.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_asprintf";

end CycloneDDS.Low_Level.dds_ddsrt_io_h;
