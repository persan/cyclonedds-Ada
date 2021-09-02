pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with System;

package CycloneDDS.Low_Level.dds_ddsrt_heap_h is

   function ddsrt_malloc (size : size_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/heap.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_malloc";

   function ddsrt_malloc_s (size : size_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/heap.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_malloc_s";

   function ddsrt_calloc (count : size_t; size : size_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/heap.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_calloc";

   function ddsrt_calloc_s (count : size_t; size : size_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/heap.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_calloc_s";

   function ddsrt_realloc (memblk : System.Address; size : size_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/heap.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_realloc";

   function ddsrt_realloc_s (memblk : System.Address; size : size_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/heap.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_realloc_s";

   procedure ddsrt_free (ptr : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/heap.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_free";

end CycloneDDS.Low_Level.dds_ddsrt_heap_h;
