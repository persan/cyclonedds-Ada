pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h;

with CycloneDDS.Low_Level.dds_ddsrt_atomics_h;

with Interfaces.C.Extensions;

package CycloneDDS.Low_Level.dds_ddsi_q_freelist_h is

   FREELIST_NONE : constant := 1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:22
   FREELIST_ATOMIC_LIFO : constant := 2;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:23
   FREELIST_DOUBLE : constant := 3;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:24
   --  unsupported macro: FREELIST_TYPE FREELIST_DOUBLE

   NN_FREELIST_NPAR : constant := 4;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:53
   NN_FREELIST_NPAR_LG2 : constant := 2;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:54
   NN_FREELIST_MAGSIZE : constant := 256;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:55

   type anon_array4021 is array (0 .. 255) of System.Address;
   type nn_freelistM is record
      x : anon_array4021;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:58
      next : System.Address;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:59
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:57

   type nn_freelist1 is record
      lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:63
      count : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:64
      m : access nn_freelistM;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:65
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:62

   type anon_array4025 is array (0 .. 3) of aliased nn_freelist1;
   type nn_freelist is record
      inner : aliased anon_array4025;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:69
      cc : aliased CycloneDDS.Low_Level.dds_ddsrt_atomics_h.ddsrt_atomic_uint32_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:70
      lock : aliased CycloneDDS.Low_Level.dds_ddsrt_sync_posix_h.ddsrt_mutex_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:71
      mlist : access nn_freelistM;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:72
      emlist : access nn_freelistM;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:73
      count : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:74
      max : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:75
      linkoff : aliased size_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:76
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:68

   procedure nn_freelist_init
     (fl : access nn_freelist;
      max : Interfaces.Unsigned_32;
      linkoff : size_t)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "nn_freelist_init";

   procedure nn_freelist_fini (fl : access nn_freelist; free : access procedure (arg1 : System.Address))  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "nn_freelist_fini";

   function nn_freelist_push (fl : access nn_freelist; elem : System.Address) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "nn_freelist_push";

   function nn_freelist_pushmany
     (fl : access nn_freelist;
      first : System.Address;
      last : System.Address;
      n : Interfaces.Unsigned_32) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "nn_freelist_pushmany";

   function nn_freelist_pop (fl : access nn_freelist) return System.Address  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsi/q_freelist.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "nn_freelist_pop";

end CycloneDDS.Low_Level.dds_ddsi_q_freelist_h;
