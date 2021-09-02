pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

with System;
with Interfaces.C.Extensions;

package CycloneDDS.Low_Level.idl_string_h is

   function idl_isalnum (c : int) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/string.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "idl_isalnum";

   function idl_isalpha (c : int) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/string.h:23
   with Import => True, 
        Convention => C, 
        External_Name => "idl_isalpha";

   function idl_isblank (c : int) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/string.h:24
   with Import => True, 
        Convention => C, 
        External_Name => "idl_isblank";

   function idl_iscntrl (c : int) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/string.h:25
   with Import => True, 
        Convention => C, 
        External_Name => "idl_iscntrl";

   function idl_isgraph (c : int) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/string.h:26
   with Import => True, 
        Convention => C, 
        External_Name => "idl_isgraph";

   function idl_islower (c : int) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/string.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "idl_islower";

   function idl_isprint (c : int) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/string.h:28
   with Import => True, 
        Convention => C, 
        External_Name => "idl_isprint";

   function idl_ispunct (c : int) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/string.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "idl_ispunct";

   function idl_isspace (c : int) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/string.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "idl_isspace";

   function idl_isupper (c : int) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/string.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "idl_isupper";

   function idl_isdigit (c : int; base : int) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/string.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "idl_isdigit";

   function idl_toupper (c : int) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/string.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "idl_toupper";

   function idl_tolower (c : int) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/string.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "idl_tolower";

   function idl_strcasecmp (s1 : Interfaces.C.Strings.chars_ptr; s2 : Interfaces.C.Strings.chars_ptr) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/string.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "idl_strcasecmp";

   function idl_strncasecmp
     (s1 : Interfaces.C.Strings.chars_ptr;
      s2 : Interfaces.C.Strings.chars_ptr;
      n : size_t) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/string.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "idl_strncasecmp";

   function idl_strdup (str : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/string.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "idl_strdup";

   function idl_strndup (str : Interfaces.C.Strings.chars_ptr; len : size_t) return Interfaces.C.Strings.chars_ptr  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/string.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "idl_strndup";

   function idl_snprintf
     (str : Interfaces.C.Strings.chars_ptr;
      size : size_t;
      fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/string.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "idl_snprintf";

   function idl_vsnprintf
     (str : Interfaces.C.Strings.chars_ptr;
      size : size_t;
      fmt : Interfaces.C.Strings.chars_ptr;
      ap : access System.Address) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/string.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "idl_vsnprintf";

   function idl_asprintf (strp : System.Address; fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/string.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "idl_asprintf";

   function idl_vasprintf
     (strp : System.Address;
      fmt : Interfaces.C.Strings.chars_ptr;
      ap : access System.Address) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/string.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "idl_vasprintf";

   function idl_strtoull
     (str : Interfaces.C.Strings.chars_ptr;
      endptr : System.Address;
      base : int) return Extensions.unsigned_long_long  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/string.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "idl_strtoull";

   function idl_strtold (str : Interfaces.C.Strings.chars_ptr; endptr : System.Address) return long_double  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/string.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "idl_strtold";

   function idl_strtok_r
     (str : Interfaces.C.Strings.chars_ptr;
      delim : Interfaces.C.Strings.chars_ptr;
      saveptr : System.Address) return Interfaces.C.Strings.chars_ptr  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/string.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "idl_strtok_r";

end CycloneDDS.Low_Level.idl_string_h;
