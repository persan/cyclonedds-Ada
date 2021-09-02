pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
with CycloneDDS.Low_Level.idl_retcode_h;

package CycloneDDS.Low_Level.idl_file_h is

   function idl_isseparator (chr : int) return unsigned  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/file.h:19
   with Import => True, 
        Convention => C, 
        External_Name => "idl_isseparator";

   function idl_isabsolute (path : Interfaces.C.Strings.chars_ptr) return unsigned  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/file.h:22
   with Import => True, 
        Convention => C, 
        External_Name => "idl_isabsolute";

   function idl_current_path (abspathp : System.Address) return CycloneDDS.Low_Level.idl_retcode_h.idl_retcode_t  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/file.h:25
   with Import => True, 
        Convention => C, 
        External_Name => "idl_current_path";

   function idl_normalize_path (path : Interfaces.C.Strings.chars_ptr; abspathp : System.Address) return CycloneDDS.Low_Level.idl_retcode_h.idl_retcode_t  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/file.h:28
   with Import => True, 
        Convention => C, 
        External_Name => "idl_normalize_path";

   function idl_relative_path
     (base : Interfaces.C.Strings.chars_ptr;
      path : Interfaces.C.Strings.chars_ptr;
      relpathp : System.Address) return CycloneDDS.Low_Level.idl_retcode_h.idl_retcode_t  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/file.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "idl_relative_path";

end CycloneDDS.Low_Level.idl_file_h;
