pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;



package CycloneDDS.Low_Level.dds_ddsrt_atomics_h is

   DDSRT_HAVE_ATOMIC64 : constant := 1;  --  /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/atomics.h:38
   --  arg-macro: procedure DDSRT_ATOMIC_UINT32_INIT (v)
   --    { (v) }
   --  arg-macro: procedure DDSRT_ATOMIC_UINT64_INIT (v)
   --    { (v) }
   --  arg-macro: procedure DDSRT_ATOMIC_UINTPTR_INIT (v)
   --    { (v) }
   --  arg-macro: procedure DDSRT_ATOMIC_VOIDP_INIT (v)
   --    { (uintptr_t) (v) }

   type ddsrt_atomic_uint32_t is record
      v : aliased Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/atomics.h:32
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/atomics.h:32

   type ddsrt_atomic_uint64_t is record
      v : aliased Interfaces.Unsigned_64;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/atomics.h:33
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/atomics.h:33

   type ddsrt_atomic_uintptr_t is record
      v : aliased access Interfaces.Unsigned_32;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/atomics.h:34
   end record
   with Convention => C_Pass_By_Copy;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/atomics.h:34

   subtype ddsrt_atomic_voidp_t is ddsrt_atomic_uintptr_t;  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/atomics.h:35

   procedure ddsrt_atomics_init  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/atomics.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomics_init";

   procedure ddsrt_atomics_fini  -- /home/stprsa/cyclonedds/Ada/../target/include/dds/ddsrt/atomics.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "ddsrt_atomics_fini";

end CycloneDDS.Low_Level.dds_ddsrt_atomics_h;
