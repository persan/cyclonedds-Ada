pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

with System;

package CycloneDDS.Low_Level.idl_stream_h is

   function idl_fopen (pathname : Interfaces.C.Strings.chars_ptr; mode : Interfaces.C.Strings.chars_ptr) return access CycloneDDS.Low_Level.x86_64_linux_gnu_bits_types_struct_FILE_h.u_IO_FILE  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/stream.h:21
   with Import => True, 
        Convention => C, 
        External_Name => "idl_fopen";

   function idl_fprintf (fp : access CycloneDDS.Low_Level.x86_64_linux_gnu_bits_types_struct_FILE_h.u_IO_FILE; fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/stream.h:23
   with Import => True, 
        Convention => C, 
        External_Name => "idl_fprintf";

   function idl_vfprintf
     (fp : access CycloneDDS.Low_Level.x86_64_linux_gnu_bits_types_struct_FILE_h.u_IO_FILE;
      fmt : Interfaces.C.Strings.chars_ptr;
      ap : access System.Address) return int  -- /home/stprsa/cyclonedds/Ada/../target/include/idl/stream.h:26
   with Import => True, 
        Convention => C, 
        External_Name => "idl_vfprintf";

end CycloneDDS.Low_Level.idl_stream_h;
