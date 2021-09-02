pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;


package CycloneDDS.Low_Level.dds_ddsrt_strtod_h is

   function ddsrt_strtod
     (nptr : Interfaces.C.Strings.chars_ptr;
      endptr : System.Address;
      dblptr : access double) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/strtod.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_strtod";

   function ddsrt_strtof
     (nptr : Interfaces.C.Strings.chars_ptr;
      endptr : System.Address;
      fltptr : access float) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/strtod.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_strtof";

   function ddsrt_dtostr
     (src : double;
      str : Interfaces.C.Strings.chars_ptr;
      size : size_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/strtod.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_dtostr";

   function ddsrt_ftostr
     (src : float;
      str : Interfaces.C.Strings.chars_ptr;
      size : size_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/strtod.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_ftostr";

end CycloneDDS.Low_Level.dds_ddsrt_strtod_h;
