pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;

with System;

package CycloneDDS.Low_Level.dds_ddsrt_fibheap_h is

   --  arg-macro: procedure DDSRT_FIBHEAPDEF_INITIALIZER (offset, cmp)
   --    { (offset), (cmp) }
   type ddsrt_fibheap_node;
   type ddsrt_fibheap_node is record
      parent : access ddsrt_fibheap_node;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/fibheap.h:24
      children : access ddsrt_fibheap_node;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/fibheap.h:24
      prev : access ddsrt_fibheap_node;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/fibheap.h:25
      next : access ddsrt_fibheap_node;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/fibheap.h:25
      mark : Extensions.Unsigned_1;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/fibheap.h:26
      degree : Extensions.Unsigned_31;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/fibheap.h:27
   end record
   with Convention => C_Pass_By_Copy,
        Pack => True,
        Alignment => 8;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/fibheap.h:23

   subtype ddsrt_fibheap_node_t is ddsrt_fibheap_node;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/fibheap.h:28

   type ddsrt_fibheap_def is record
      offset : aliased access Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/fibheap.h:31
      cmp : access function (arg1 : System.Address; arg2 : System.Address) return int;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/fibheap.h:32
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/fibheap.h:30

   subtype ddsrt_fibheap_def_t is ddsrt_fibheap_def;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/fibheap.h:33

   type ddsrt_fibheap is record
      roots : access ddsrt_fibheap_node_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/fibheap.h:36
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/fibheap.h:35

   subtype ddsrt_fibheap_t is ddsrt_fibheap;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/fibheap.h:37

   procedure ddsrt_fibheap_def_init
     (fhdef : access ddsrt_fibheap_def_t;
      offset : access Interfaces.Unsigned_32;
      cmp : access function (arg1 : System.Address; arg2 : System.Address) return int)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/fibheap.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_fibheap_def_init";

   procedure ddsrt_fibheap_init (fhdef : access constant ddsrt_fibheap_def_t; fh : access ddsrt_fibheap_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/fibheap.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_fibheap_init";

   function ddsrt_fibheap_min (fhdef : access constant ddsrt_fibheap_def_t; fh : access constant ddsrt_fibheap_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/fibheap.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_fibheap_min";

   procedure ddsrt_fibheap_merge
     (fhdef : access constant ddsrt_fibheap_def_t;
      a : access ddsrt_fibheap_t;
      b : access ddsrt_fibheap_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/fibheap.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_fibheap_merge";

   procedure ddsrt_fibheap_insert
     (fhdef : access constant ddsrt_fibheap_def_t;
      fh : access ddsrt_fibheap_t;
      vnode : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/fibheap.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_fibheap_insert";

   procedure ddsrt_fibheap_delete
     (fhdef : access constant ddsrt_fibheap_def_t;
      fh : access ddsrt_fibheap_t;
      vnode : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/fibheap.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_fibheap_delete";

   function ddsrt_fibheap_extract_min (fhdef : access constant ddsrt_fibheap_def_t; fh : access ddsrt_fibheap_t) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/fibheap.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_fibheap_extract_min";

   procedure ddsrt_fibheap_decrease_key
     (fhdef : access constant ddsrt_fibheap_def_t;
      fh : access ddsrt_fibheap_t;
      vnode : System.Address)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/fibheap.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_fibheap_decrease_key";

end CycloneDDS.Low_Level.dds_ddsrt_fibheap_h;
