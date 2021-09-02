pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;


package CycloneDDS.Low_Level.dds_ddsrt_environ_h is

   function ddsrt_getenv (name : Interfaces.C.Strings.chars_ptr; value : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/environ.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_getenv";

   function ddsrt_setenv (name : Interfaces.C.Strings.chars_ptr; value : Interfaces.C.Strings.chars_ptr) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/environ.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_setenv";

   function ddsrt_unsetenv (name : Interfaces.C.Strings.chars_ptr) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/environ.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_unsetenv";

   function ddsrt_expand_envvars (string : Interfaces.C.Strings.chars_ptr; domid : Interfaces.Unsigned_32) return Interfaces.C.Strings.chars_ptr  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/environ.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_expand_envvars";

   function ddsrt_expand_envvars_sh (string : Interfaces.C.Strings.chars_ptr; domid : Interfaces.Unsigned_32) return Interfaces.C.Strings.chars_ptr  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/environ.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_expand_envvars_sh";

end CycloneDDS.Low_Level.dds_ddsrt_environ_h;
