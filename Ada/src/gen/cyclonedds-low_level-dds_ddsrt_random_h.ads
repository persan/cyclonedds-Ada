pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Extensions;

package CycloneDDS.Low_Level.dds_ddsrt_random_h is

   DDSRT_MT19937_N : constant := 624;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/random.h:23

   type anon_array14269 is array (0 .. 7) of aliased Interfaces.Unsigned_32;
   type ddsrt_prng_seed is record
      key : aliased anon_array14269;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/random.h:26
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/random.h:25

   subtype ddsrt_prng_seed_t is ddsrt_prng_seed;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/random.h:27

   type anon_array14569 is array (0 .. 623) of aliased Interfaces.Unsigned_32;
   type ddsrt_prng is record
      mt : aliased anon_array14569;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/random.h:30
      mti : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/random.h:31
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/random.h:29

   subtype ddsrt_prng_t is ddsrt_prng;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/random.h:32

   procedure ddsrt_random_init  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/random.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_random_init";

   procedure ddsrt_random_fini  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/random.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_random_fini";

   procedure ddsrt_prng_init_simple (prng : access ddsrt_prng_t; seed : Interfaces.Unsigned_32)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/random.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_prng_init_simple";

   function ddsrt_prng_makeseed (seed : access ddsrt_prng_seed) return Extensions.bool  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/random.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_prng_makeseed";

   procedure ddsrt_prng_init (prng : access ddsrt_prng_t; seed : access constant ddsrt_prng_seed)  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/random.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_prng_init";

   function ddsrt_prng_random (prng : access ddsrt_prng_t) return Interfaces.Unsigned_32  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/random.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_prng_random";

   function ddsrt_random return Interfaces.Unsigned_32  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/random.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_random";

end CycloneDDS.Low_Level.dds_ddsrt_random_h;
