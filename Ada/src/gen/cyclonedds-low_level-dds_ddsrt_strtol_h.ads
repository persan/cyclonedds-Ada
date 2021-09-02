pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Strings;
with System;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;
with Interfaces.C.Extensions;


package CycloneDDS.Low_Level.dds_ddsrt_strtol_h is

   function ddsrt_todigit (chr : int) return Interfaces.Integer_32  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/strtol.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_todigit";

   function ddsrt_strtoll
     (str : Interfaces.C.Strings.chars_ptr;
      endptr : System.Address;
      base : Interfaces.Integer_32;
      llng : access Long_Long_Integer) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/strtol.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_strtoll";

   function ddsrt_strtoull
     (str : Interfaces.C.Strings.chars_ptr;
      endptr : System.Address;
      base : Interfaces.Integer_32;
      ullng : access Extensions.unsigned_long_long) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/strtol.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_strtoull";

   function ddsrt_atoll (str : Interfaces.C.Strings.chars_ptr; llng : access Long_Long_Integer) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/strtol.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atoll";

   function ddsrt_atoull (str : Interfaces.C.Strings.chars_ptr; ullng : access Extensions.unsigned_long_long) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/strtol.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atoull";

   function ddsrt_lltostr
     (num : Long_Long_Integer;
      str : Interfaces.C.Strings.chars_ptr;
      len : size_t;
      endptr : System.Address) return Interfaces.C.Strings.chars_ptr  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/strtol.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_lltostr";

   function ddsrt_ulltostr
     (num : Extensions.unsigned_long_long;
      str : Interfaces.C.Strings.chars_ptr;
      len : size_t;
      endptr : System.Address) return Interfaces.C.Strings.chars_ptr  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/strtol.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_ulltostr";

end CycloneDDS.Low_Level.dds_ddsrt_strtol_h;
