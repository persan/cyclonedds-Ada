pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

with System;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;

package CycloneDDS.Low_Level.dds_ddsrt_string_h is

   function ddsrt_strcasecmp (s1 : Interfaces.C.Strings.chars_ptr; s2 : Interfaces.C.Strings.chars_ptr) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/string.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_strcasecmp";

   function ddsrt_strncasecmp
     (s1 : Interfaces.C.Strings.chars_ptr;
      s2 : Interfaces.C.Strings.chars_ptr;
      n : size_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/string.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_strncasecmp";

   function ddsrt_strsep (stringp : System.Address; delim : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/string.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_strsep";

   function ddsrt_memdup (ptr : System.Address; len : size_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/string.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_memdup";

   function ddsrt_strdup (str : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/string.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_strdup";

   function ddsrt_strndup (str : Interfaces.C.Strings.chars_ptr; len : size_t) return Interfaces.C.Strings.chars_ptr  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/string.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_strndup";

   function ddsrt_strlcpy
     (dest : Interfaces.C.Strings.chars_ptr;
      src : Interfaces.C.Strings.chars_ptr;
      size : size_t) return size_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/string.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_strlcpy";

   function ddsrt_strlcat
     (dest : Interfaces.C.Strings.chars_ptr;
      src : Interfaces.C.Strings.chars_ptr;
      size : size_t) return size_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/string.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_strlcat";

   function ddsrt_strerror_r
     (errnum : int;
      buf : Interfaces.C.Strings.chars_ptr;
      buflen : size_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/string.h:194
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_strerror_r";

   function ddsrt_str_replace
     (str : Interfaces.C.Strings.chars_ptr;
      srch : Interfaces.C.Strings.chars_ptr;
      subst : Interfaces.C.Strings.chars_ptr;
      max : size_t) return Interfaces.C.Strings.chars_ptr  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/string.h:211
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_str_replace";

end CycloneDDS.Low_Level.dds_ddsrt_string_h;
