pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with Interfaces.C.Extensions;
with System;
with CycloneDDS.Low_Level.dds_ddsrt_retcode_h;


package CycloneDDS.Low_Level.dds_ddsrt_dynlib_h is

   DDSRT_HAVE_DYNLIB : constant := (1);  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/dynlib.h:22

   type ddsrt_dynlib is null record;   -- incomplete struct

   type ddsrt_dynlib_t is access all ddsrt_dynlib;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/dynlib.h:35

   function ddsrt_dlopen
     (name : Interfaces.C.Strings.chars_ptr;
      translate : Extensions.bool;
      handle : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/dynlib.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_dlopen";

   function ddsrt_dlclose (handle : ddsrt_dynlib_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/dynlib.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_dlclose";

   function ddsrt_dlsym
     (handle : ddsrt_dynlib_t;
      symbol : Interfaces.C.Strings.chars_ptr;
      address : System.Address) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/dynlib.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_dlsym";

   function ddsrt_dlerror (buf : Interfaces.C.Strings.chars_ptr; buflen : size_t) return CycloneDDS.Low_Level.dds_ddsrt_retcode_h.dds_return_t  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/dynlib.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_dlerror";

end CycloneDDS.Low_Level.dds_ddsrt_dynlib_h;
