pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;

package CycloneDDS.Low_Level.dds_ddsrt_expand_vars_h is

   type expand_lookup_fn is access function (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : System.Address) return Interfaces.C.Strings.chars_ptr
   with Convention => C;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/expand_vars.h:23

   function ddsrt_expand_vars
     (string : Interfaces.C.Strings.chars_ptr;
      lookup : expand_lookup_fn;
      data : System.Address) return Interfaces.C.Strings.chars_ptr  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/expand_vars.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_expand_vars";

   function ddsrt_expand_vars_sh
     (string : Interfaces.C.Strings.chars_ptr;
      lookup : expand_lookup_fn;
      data : System.Address) return Interfaces.C.Strings.chars_ptr  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/expand_vars.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_expand_vars_sh";

end CycloneDDS.Low_Level.dds_ddsrt_expand_vars_h;
